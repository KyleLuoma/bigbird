-- Public transport passes issued to riders
CREATE TABLE public_transport_passes
(
    PassID INTEGER PRIMARY KEY,
    AgencyID INTEGER,
    PassType TEXT,
    IssueDate DATE,
    ExpiryDate DATE,
    QRCode TEXT,
    OwnerID INTEGER,
    Balance REAL,
    IsActive INTEGER,
    ZoneCoverage TEXT,
    MaxTrips INTEGER,
    DiscountRate REAL,
    IssueLocation TEXT,
    RenewalCount INTEGER,
    CardSerial TEXT,
    ContactPhone TEXT,
    Email TEXT,
    PhotoHash TEXT,
    LastUsedDate DATE,
    TotalRides INTEGER
);

INSERT INTO public_transport_passes VALUES (1, 101, Adult, 2022-01-10, 2023-01-09, QR001, 5001, 25.50, 1, ZoneA, 100, 0.0, CentralStation, 0, CSN001, 5551234567, user1@example.com, hash001, 2022-12-15, 120);
INSERT INTO public_transport_passes VALUES (2, 102, Senior, 2022-03-05, 2023-03-04, QR002, 5002, 0.00, 1, ZoneB, 200, 0.3, WestSide, 1, CSN002, 5559876543, user2@example.com, hash002, 2022-11-20, 85);
INSERT INTO public_transport_passes VALUES (3, 101, Student, 2022-09-01, 2023-08-31, QR003, 5003, 12.75, 1, ZoneC, 150, 0.2, EastDepot, 0, CSN003, 5551112222, user3@example.com, hash003, 2022-12-30, 60);

-- Roadway geometrics collected from sensors
CREATE TABLE roadway_geometrics
(
    SensorID INTEGER PRIMARY KEY,
    RoadSegmentID INTEGER,
    Latitude REAL,
    Longitude REAL,
    Elevation REAL,
    SurfaceTemp REAL,
    PavementCondition TEXT,
    CrackingScore INTEGER,
    RutDepth REAL,
    SkidResistance REAL,
    TrafficVolume INTEGER,
    AvgSpeed REAL,
    LaneCount INTEGER,
    ShoulderWidth REAL,
    MedianType TEXT,
    InstallationDate DATE,
    LastCalibrationDate DATE,
    FirmwareVersion TEXT,
    BatteryHealth REAL,
    DataTransmissionStatus INTEGER,
    MaintenanceStatus TEXT,
    OwnerAgencyID INTEGER,
    MonthlyReportID INTEGER,
    GPSAccuracy REAL,
    SensorStatus TEXT
);

INSERT INTO roadway_geometrics VALUES (1001, 2001, 40.7128, -74.0060, 15.2, 22.5, Good, 2, 0.12, 0.85, 15000, 45.3, 4, 2.5, Concrete, 2021-06-15, 2022-12-01, v1.4, 0.95, 1, Scheduled, 10, 3001, 0.5, Active);
INSERT INTO roadway_geometrics VALUES (1002, 2002, 34.0522, -118.2437, 30.1, 25.0, Fair, 5, 0.20, 0.78, 22000, 55.0, 6, 3.0, Grass, 2020-09-10, 2022-11-20, v1.3, 0.88, 1, Pending, 12, 3002, 0.8, Inactive);
INSERT INTO roadway_geometrics VALUES (1003, 2003, 41.8781, -87.6298, 18.4, 20.1, Excellent, 1, 0.05, 0.92, 18000, 48.7, 5, 2.2, Barrier, 2022-01-05, 2023-01-10, v1.5, 0.99, 1, Completed, 11, 3003, 0.3, Active);

-- Electric grid failure reports
CREATE TABLE electric_grid_failure_reports
(
    FailureID INTEGER PRIMARY KEY,
    SubstationID INTEGER,
    FailureStart DATETIME,
    FailureEnd DATETIME,
    OutageDurationMinutes INTEGER,
    AffectedCustomers INTEGER,
    FaultType TEXT,
    CauseCode TEXT,
    WeatherImpact TEXT,
    BackupActivated INTEGER,
    ResolutionTeamID INTEGER,
    Remarks TEXT,
    ReportedBy TEXT,
    ReportDate DATE,
    VerifiedBy TEXT,
    VerificationDate DATE,
    VoltageDrop REAL,
    FrequencyDeviation REAL,
    PostEventAnalysis TEXT,
    MitigationActionPlan TEXT,
    EstimatedRepairCost REAL,
    RegulatoryNotificationSent INTEGER,
    NotificationDate DATE,
    FollowUpStatus TEXT,
    LessonsLearned TEXT,
    Status TEXT
);

INSERT INTO electric_grid_failure_reports VALUES (5001, 301, 2022-12-01 08:15:00, 2022-12-01 10:45:00, 150, 25000, LineFault, L01, Storm, 1, 45, Temporary loss due to downed line, OperatorA, 2022-12-01, SupervisorB, 2022-12-02, 220.5, 0.2, Conducted root cause analysis, Upgrade conductors, 150000.00, 1, 2022-12-03, Closed, Improved vegetation management, Resolved);
INSERT INTO electric_grid_failure_reports VALUES (5002, 302, 2023-01-15 14:30:00, 2023-01-15 16:00:00, 90, 18000, Transformer, T03, HeatWave, 0, 46, Overheating of transformer, OperatorC, 2023-01-15, SupervisorD, 2023-01-16, 225.0, 0.0, Temperature monitoring reviewed, Install cooling system, 80000.00, 1, 2023-01-17, Closed, Added temperature sensors, Resolved);
INSERT INTO electric_grid_failure_reports VALUES (5003, 303, 2023-02-20 22:10:00, 2023-02-21 02:05:00, 235, 32000, EquipmentFailure, E07, None, 1, 47, Failure of circuit breaker, OperatorE, 2023-02-20, SupervisorF, 2023-02-22, 219.8, -0.1, Detailed fault log analyzed, Replace breaker, 120000.00, 1, 2023-02-23, Closed, Implemented remote monitoring, Resolved);

-- Solar panel installation records
CREATE TABLE solar_panel_installations
(
    InstallationID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    ContractorID INTEGER,
    InstallationDate DATE,
    PanelModel TEXT,
    PanelCount INTEGER,
    InverterModel TEXT,
    InverterCount INTEGER,
    TotalCapacityKW REAL,
    EstimatedAnnualYieldMWh REAL,
    Orientation TEXT,
    TiltAngle REAL,
    RoofType TEXT,
    LandAreaSqM REAL,
    PermittingStatus TEXT,
    InspectionDate DATE,
    CommissionDate DATE,
    MaintenanceContractID INTEGER,
    WarrantyExpirationDate DATE,
    FundingSource TEXT,
    ProjectCostUSD REAL,
    IncentiveAmountUSD REAL,
    NetMeteringAgreementID INTEGER,
    Status TEXT,
    Latitude REAL,
    Longitude REAL,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE
);

INSERT INTO solar_panel_installations VALUES (8001, 901, 201, 2022-05-10, SPX123, 250, INVX45, 2, 75.0, 110.5, South, 30.0, Flat, 1500.0, Approved, 2022-06-01, 2022-06-15, 301, 2032-05-10, Grant, 180000.00, 25000.00, 401, Active, 35.6895, -120.6910, Initial installation complete, AdminA, 2022-05-11, AdminA, 2022-05-11);
INSERT INTO solar_panel_installations VALUES (8002, 902, 202, 2023-03-22, SPX456, 400, INVX78, 3, 120.0, 175.0, West, 25.0, Sloped, 2000.0, Pending, NULL, NULL, 302, 2035-03-22, Private, 300000.00, 0.00, 402, Planned, 36.7783, -119.4179, Awaiting permits, AdminB, 2023-03-23, AdminB, 2023-03-23);
INSERT INTO solar_panel_installations VALUES (8003, 903, 203, 2021-11-15, SPX789, 150, INVX12, 1, 45.0, 66.0, East, 20.0, Flat, 800.0, Approved, 2021-12-01, 2021-12-10, 303, 2031-11-15, Lease, 95000.00, 15000.00, 403, Operational, 34.0522, -118.2437, Minor shading issues, AdminC, 2021-11-16, AdminC, 2021-11-16);

-- Hydrogen fuel station inspections
CREATE TABLE hydrogen_fuel_station_inspections
(
    InspectionID INTEGER PRIMARY KEY,
    StationID INTEGER,
    InspectorID INTEGER,
    InspectionDate DATE,
    SafetyScore INTEGER,
    LeakDetected INTEGER,
    PressureTestResult TEXT,
    ValveIntegrity TEXT,
    CompressorStatus TEXT,
    StorageTankCondition TEXT,
    VentilationEfficiency REAL,
    ElectricalSystemStatus TEXT,
    DocumentationComplete INTEGER,
    CorrectiveActionRequired INTEGER,
    FollowUpDate DATE,
    Remarks TEXT,
    ComplianceLevel TEXT,
    InspectionType TEXT,
    WeatherConditions TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    FuelPurityPercent REAL,
    EmergencyShutdownTestResult TEXT,
    SensorCalibrationStatus TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Status TEXT
);

INSERT INTO hydrogen_fuel_station_inspections VALUES (9001, 701, 501, 2022-08-12, 92, 0, Pass, Good, Operational, Excellent, 0.98, Pass, 1, 0, NULL, No issues, High, Routine, Clear, 22.5, 45.0, 99.9, Pass, UpToDate, UserA, 2022-08-12, UserA, 2022-08-12, Completed);
INSERT INTO hydrogen_fuel_station_inspections VALUES (9002, 702, 502, 2023-01-05, 78, 1, Fail, Fair, MaintenanceRequired, Fair, 0.85, Fail, 1, 1, 2023-02-01, Minor leak in valve, Medium, FollowUp, Snow, -5.0, 80.0, 98.5, Fail, Due, UserB, 2023-01-05, UserB, 2023-01-05, Pending);
INSERT INTO hydrogen_fuel_station_inspections VALUES (9003, 703, 503, 2022-11-20, 88, 0, Pass, Good, Operational, Good, 0.93, Pass, 1, 0, NULL, All clear, High, Annual, Cloudy, 15.0, 60.0, 99.5, Pass, UpToDate, UserC, 2022-11-20, UserC, 2022-11-20, Completed);

-- City bike share maintenance logs
CREATE TABLE city_bike_share_maintenance
(
    MaintenanceID INTEGER PRIMARY KEY,
    BikeID INTEGER,
    StationID INTEGER,
    TechnicianID INTEGER,
    ServiceDate DATE,
    ServiceType TEXT,
    IssueReported TEXT,
    PartsReplaced TEXT,
    LaborHours REAL,
    ServiceCostUSD REAL,
    OdometerKM INTEGER,
    BatteryHealthPercent REAL,
    BrakeCondition TEXT,
    GearCondition TEXT,
    FrameIntegrity TEXT,
    TirePressurePSI REAL,
    LockStatus TEXT,
    InspectionNotes TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    CreatedBy TEXT,
    CreatedDate DATE,
    Status TEXT,
    NextScheduledService DATE,
    WarrantyValid INTEGER,
    ServiceProvider TEXT,
    MileageSinceLastServiceKM INTEGER,
    Comments TEXT
);

INSERT INTO city_bike_share_maintenance VALUES (11001, 4001, 150, 601, 2022-07-01, RoutineCheck, None, None, 1.5, 45.00, 1500, 100.0, Good, Good, Good, 45.0, Locked, All systems functional, 0, NULL, TechA, 2022-07-01, AdminA, 2022-07-01, Completed, 2022-12-01, 1, VendorX, 500, No comments);
INSERT INTO city_bike_share_maintenance VALUES (11002, 4002, 151, 602, 2022-09-15, BrakeAdjustment, Squeaky brakes, BrakePads, 1.0, 30.00, 1600, 95.0, Good, Good, Good, 44.0, Locked, Brake noise reduced, 0, NULL, TechB, 2022-09-15, AdminB, 2022-09-15, Completed, 2023-02-15, 1, VendorY, 400, Brake pads replaced);
INSERT INTO city_bike_share_maintenance VALUES (11003, 4003, 152, 603, 2023-01-20, BatteryReplacement, Low battery life, BatteryModule, 2.0, 120.00, 1700, 20.0, Good, Good, Good, 46.0, Locked, Battery swapped, 1, 2023-02-20, TechC, 2023-01-20, AdminC, 2023-01-20, InProgress, 2023-06-20, 0, VendorZ, 300, Battery health critical);

-- Airport ground handling activities
CREATE TABLE airport_ground_handling
(
    HandlingID INTEGER PRIMARY KEY,
    FlightNumber TEXT,
    AirlineCode TEXT,
    ArrivalDate DATE,
    ArrivalTime TEXT,
    DepartureDate DATE,
    DepartureTime TEXT,
    GateNumber TEXT,
    Terminal TEXT,
    GroundCrewTeamID INTEGER,
    BaggageHandled INTEGER,
    CargoWeightKG REAL,
    RefuelLiters REAL,
    WaterSupplyLiters REAL,
    LavatoryService INTEGER,
    DeicingPerformed INTEGER,
    PushbackTime TEXT,
    BoardingStartTime TEXT,
    BoardingEndTime TEXT,
    PassengerCount INTEGER,
    FlightStatus TEXT,
    Remarks TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Status TEXT,
    DelayMinutes INTEGER,
    MaintenanceFlag INTEGER,
    CleaningStaffID INTEGER,
    FuelSupplier TEXT
);

INSERT INTO airport_ground_handling VALUES (21001, AA123, AA, 2023-02-10, 08:15, 2023-02-10, 10:45, G12, T1, 701, 350, 1200.5, 25000.0, 300.0, 1, 0, 08:25, 08:40, 09:30, 180, OnTime, None, OpsA, 2023-02-10, OpsA, 2023-02-10, Completed, 0, 0, 401, FuelCo);
INSERT INTO airport_ground_handling VALUES (21002, DL456, DL, 2023-02-11, 14:20, 2023-02-11, 16:55, G5, T2, 702, 420, 1500.0, 30000.0, 350.0, 1, 1, 14:35, 14:45, 15:50, 210, Delayed, Weather caused deicing, OpsB, 2023-02-11, OpsB, 2023-02-11, Completed, 35, 0, 402, FuelPlus);
INSERT INTO airport_ground_handling VALUES (21003, UA789, UA, 2023-02-12, 22:10, 2023-02-13, 01:05, G8, T3, 703, 380, 1300.2, 27000.0, 320.0, 1, 0, 22:25, 22:40, 23:30, 190, OnTime, Night shift routine, OpsC, 2023-02-12, OpsC, 2023-02-12, Completed, 0, 1, 403, FuelDirect);

-- Maritime fuel quality test records
CREATE TABLE maritime_fuel_quality
(
    TestID INTEGER PRIMARY KEY,
    VesselID INTEGER,
    PortID INTEGER,
    TestDate DATE,
    FuelType TEXT,
    SampleVolumeLiters REAL,
    SulfurContentPPM INTEGER,
    WaterContentPPM INTEGER,
    FlashPointCelsius REAL,
    ViscosityCSt REAL,
    DensityKgM3 REAL,
    CetaneNumber INTEGER,
    APIGravity REAL,
    TestMethod TEXT,
    AnalystName TEXT,
    ApprovalStatus TEXT,
    Remarks TEXT,
    Certified INTEGER,
    CertificationAgency TEXT,
    CertificationDate DATE,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Status TEXT,
    BatchNumber TEXT,
    SupplierID INTEGER,
    InspectionLocation TEXT,
    TemperatureC REAL,
    HumidityPercent REAL
);

INSERT INTO maritime_fuel_quality VALUES (31001, 901, 1201, 2022-06-15, MarineDiesel, 20.0, 500, 30, 60.5, 3.2, 0.85, 45, 35.0, ASTM, JaneDoe, Approved, Sample met specs, 1, MarineLab, 2022-06-16, AnalystA, 2022-06-15, AnalystA, 2022-06-15, Completed, BATCH1001, 201, DockA, 15.0, 55.0);
INSERT INTO maritime_fuel_quality VALUES (31002, 902, 1202, 2022-12-02, MarineGasOil, 15.0, 700, 25, 55.0, 4.0, 0.88, 50, 32.0, ISO, JohnSmith, Rejected, Sulfur exceeds limit, 0, MarineLab, 2022-12-03, AnalystB, 2022-12-02, AnalystB, 2022-12-02, Completed, BATCH2002, 202, DockB, 10.0, 60.0);
INSERT INTO maritime_fuel_quality VALUES (31003, 903, 1203, 2023-01-20, MarineDiesel, 25.0, 450, 20, 61.0, 3.0, 0.84, 48, 35.5, ASTM, AliceLee, Approved, Within all parameters, 1, MarineLab, 2023-01-21, AnalystC, 2023-01-20, AnalystC, 2023-01-20, Completed, BATCH3003, 203, DockC, 12.0, 58.0);

-- Waste-to-energy conversion facility logs
CREATE TABLE waste_to_energy_conversion
(
    ConversionID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    ConversionDate DATE,
    WasteType TEXT,
    WasteAmountTons REAL,
    EnergyProducedMWh REAL,
    CO2OffsetTons REAL,
    OperatingHours REAL,
    BoilerEfficiencyPercent REAL,
    FeedstockMoisturePercent REAL,
    AshResidueTons REAL,
    MaintenanceFlag INTEGER,
    DowntimeHours REAL,
    OperatorID INTEGER,
    Shift TEXT,
    Remarks TEXT,
    RegulatoryCompliance TEXT,
    EmissionReadingPPM REAL,
    WasteSupplierID INTEGER,
    ContractNumber TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Status TEXT,
    EnergyPriceUSDPerMWh REAL,
    NetRevenueUSD REAL,
    CarbonCreditEarned REAL,
    WasteDispositionMethod TEXT,
    FacilityLocation TEXT,
    CapacityTonsPerDay REAL
);

INSERT INTO waste_to_energy_conversion VALUES (41001, 501, 2022-09-30, Municipal, 120.5, 850.0, 420.0, 22.0, 92.5, 55.0, 5.2, 0, 0.0, 701, Day, Normal operation, Compliant, 45.0, 301, CNT1001, OperatorA, 2022-09-30, OperatorA, 2022-09-30, Completed, 75.00, 63750.00, 420.0, Landfill, CityCenter, 150.0);
INSERT INTO waste_to_energy_conversion VALUES (41002, 502, 2022-12-15, Industrial, 95.0, 680.0, 340.0, 20.5, 89.0, 58.0, 4.8, 1, 2.5, 702, Night, Scheduled maintenance, Compliant, 50.0, 302, CNT1002, OperatorB, 2022-12-15, OperatorB, 2022-12-15, InProgress, 78.00, 53040.00, 340.0, Incineration, SuburbWest, 130.0);
INSERT INTO waste_to_energy_conversion VALUES (41003, 503, 2023-02-10, Agricultural, 80.0, 560.0, 280.0, 21.0, 90.5, 60.0, 4.5, 0, 0.0, 703, Day, High moisture content, Compliant, 48.0, 303, CNT1003, OperatorC, 2023-02-10, OperatorC, 2023-02-10, Completed, 80.00, 44800.00, 280.0, Compost, RuralArea, 120.0);

-- Urban garden plot subscriptions
CREATE TABLE urban_garden_plot_subscriptions
(
    SubscriptionID INTEGER PRIMARY KEY,
    PlotID INTEGER,
    GardenerID INTEGER,
    SubscriptionStartDate DATE,
    SubscriptionEndDate DATE,
    PlotSizeSqM REAL,
    SoilType TEXT,
    SunExposure TEXT,
    WateringSchedule TEXT,
    CompostUsed INTEGER,
    RaisedBed INTEGER,
    LockersAllocated INTEGER,
    CommunityGardenID INTEGER,
    PaymentMethod TEXT,
    AmountPaidUSD REAL,
    PaymentDate DATE,
    RenewalFlag INTEGER,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    GardenerContactPhone TEXT,
    GardenerEmail TEXT,
    GardeningExperienceYears INTEGER,
    PreferredPlants TEXT,
    ToolsProvided INTEGER,
    AccessHours TEXT,
    PlotLocationDescription TEXT,
    AssignedVolunteerID INTEGER,
    VolunteerContactPhone TEXT,
    VolunteerEmail TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Status TEXT,
    Notes TEXT,
    SoilPH REAL,
    DrainageQuality TEXT,
    PlotOrientation TEXT,
    FenceType TEXT
);

INSERT INTO urban_garden_plot_subscriptions VALUES (51001, 1001, 8001, 2022-04-01, 2023-03-31, 25.0, Loam, FullSun, Weekly, 1, 0, 2, 401, CreditCard, 150.00, 2022-04-02, 1, 2022-12-15, 88, 5551234000, gardener1@example.com, 5, Tomatoes, 1, 06:00-22:00, NorthSideCorner, 701, 5551235000, volunteer1@example.com, AdminA, 2022-04-01, AdminA, 2022-04-01, Active, No issues, 6.5, Good, South, Wooden);
INSERT INTO urban_garden_plot_subscriptions VALUES (51002, 1002, 8002, 2022-05-15, 2023-05-14, 30.0, Sandy, PartialSun, BiWeekly, 0, 1, 1, 401, PayPal, 180.00, 2022-05-16, 0, 2022-11-20, 92, 5551234001, gardener2@example.com, 2, Herbs, 0, 07:00-21:00, EastSideEdge, 702, 5551235001, volunteer2@example.com, AdminB, 2022-05-15, AdminB, 2022-05-15, Active, Added trellis, 7.0, Moderate, West, Metal);
INSERT INTO urban_garden_plot_subscriptions VALUES (51003, 1003, 8003, 2022-06-10, 2023-06-09, 20.0, Clay, Shade, Monthly, 1, 0, 3, 402, Cash, 130.00, 2022-06-11, 1, 2023-01-05, 85, 5551234002, gardener3@example.com, 8, Lettuce, 1, 08:00-20:00, SouthWestCorner, 703, 5551235002, volunteer3@example.com, AdminC, 2022-06-10, AdminC, 2022-06-10, Active, Needs soil amendment, 5.5, Poor, North, Vinyl);
