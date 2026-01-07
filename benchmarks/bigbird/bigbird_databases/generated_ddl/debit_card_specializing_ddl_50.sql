-- Regional airport traffic statistics
CREATE TABLE regional_airport_traffic (
    AirportID INTEGER,
    Year INTEGER,
    Month INTEGER,
    PassengerArrivals INTEGER,
    PassengerDepartures INTEGER,
    CargoTons INTEGER,
    FlightMovements INTEGER,
    DomesticFlights INTEGER,
    InternationalFlights INTEGER,
    AvgDelayMinutes INTEGER,
    OnTimePerformancePct INTEGER,
    RunwayUtilizationPct INTEGER,
    GateCount INTEGER,
    TerminalAreaSqFt INTEGER,
    StaffCount INTEGER,
    SecurityIncidents INTEGER,
    WeatherDelayMinutes INTEGER,
    FuelConsumptionGallons INTEGER,
    MaintenanceHours INTEGER,
    RevenueMillions REAL,
    TaxRevenueMillions REAL,
    EnvironmentalScore INTEGER,
    ParkingSpaces INTEGER,
    RestroomCount INTEGER,
    WiFiSessions INTEGER,
    RetailRevenueMillions REAL
);
INSERT INTO regional_airport_traffic VALUES (101,2023,5,125000,124500,3400,1800,1100,700,15,92,78,25,400000,1500,3,45,250000,320,85.5,12.3,88,1200,340,15000,4.2);
INSERT INTO regional_airport_traffic VALUES (102,2023,5,98000,98500,2100,1500,800,700,12,95,82,22,350000,1300,1,30,210000,280,73.2,10.8,90,950,310,12000,3.9);
INSERT INTO regional_airport_traffic VALUES (103,2023,5,143000,142800,4100,2000,1300,700,18,89,80,28,460000,1650,5,60,275000,360,88.1,13.5,85,1400,360,18000,5.1);

-- City park facilities
CREATE TABLE city_park_facilities (
    ParkID INTEGER,
    CityID INTEGER,
    AreaAcres INTEGER,
    TrailLengthM INTEGER,
    PicnicTables INTEGER,
    PlaygroundSets INTEGER,
    SportsFields INTEGER,
    RestroomUnits INTEGER,
    WaterFountains INTEGER,
    DogParkAreas INTEGER,
    BikeRackCount INTEGER,
    SolarPanelKW INTEGER,
    LightingCount INTEGER,
    AnnualVisitors INTEGER,
    MaintenanceStaff INTEGER,
    AnnualBudgetThousands INTEGER,
    EventDays INTEGER,
    WiFiAccessPoints INTEGER,
    RecyclingBins INTEGER,
    GreenhouseCount INTEGER,
    GardenPlots INTEGER,
    VolunteerCount INTEGER,
    SecurityCameras INTEGER,
    ConcessionStalls INTEGER,
    MaintenanceHours INTEGER
);
INSERT INTO city_park_facilities VALUES (201,1,85,2400,45,4,3,6,10,2,15,50,120,250000,30,800,12,8,200,5,30,120,25,6,4000);
INSERT INTO city_park_facilities VALUES (202,1,60,1800,30,3,2,4,8,1,10,35,90,180000,24,600,8,6,150,3,22,95,20,4,3200);
INSERT INTO city_park_facilities VALUES (203,2,110,3000,60,5,4,8,12,3,20,70,140,320000,38,950,15,10,250,7,40,140,30,9,5200);

-- Hydroponic farm operations
CREATE TABLE hydroponic_farm_operations (
    FarmID INTEGER,
    LocationID INTEGER,
    CropTypeCode INTEGER,
    GrowingCycles INTEGER,
    TotalPlants INTEGER,
    AvgYieldKg REAL,
    WaterUsageLiters INTEGER,
    NutrientSolutionLiters INTEGER,
    ElectricityKWh INTEGER,
    LaborHours INTEGER,
    HarvestWeightKg REAL,
    PestIncidents INTEGER,
    DiseaseIncidents INTEGER,
    HarvestDateInt INTEGER,
    QualityScore INTEGER,
    MarketPricePerKg REAL,
    ShippingCostThousands REAL,
    StorageCapacityKg INTEGER,
    TemperatureC INTEGER,
    HumidityPct INTEGER,
    CO2ppm INTEGER,
    PhLevel INTEGER,
    LightHoursPerDay INTEGER,
    UVIndexAvg INTEGER,
    AutomationLevelCode INTEGER,
    MaintenanceVisits INTEGER
);
INSERT INTO hydroponic_farm_operations VALUES (301,10,2,4,8000,2.5,120000,5000,2500,320,20000,0,1,20230515,88,1.4,2.5,18000,22,70,800,6,16,3,5,12);
INSERT INTO hydroponic_farm_operations VALUES (302,11,5,3,6000,3.1,95000,4200,2100,280,18500,1,0,20230620,91,1.6,2.2,15000,21,68,750,7,14,4,4,10);
INSERT INTO hydroponic_farm_operations VALUES (303,12,1,5,10000,2.8,150000,6000,3000,400,25000,0,2,20230710,85,1.5,2.8,21000,23,72,820,5,18,2,6,14);

-- Renewable energy maintenance schedule
CREATE TABLE renewable_energy_maintenance_schedule (
    FacilityID INTEGER,
    MaintenanceID INTEGER,
    ScheduleYear INTEGER,
    ScheduleMonth INTEGER,
    MaintenanceTypeCode INTEGER,
    EstimatedHours INTEGER,
    TechnicianCount INTEGER,
    PartsUsedCount INTEGER,
    SafetyIncidents INTEGER,
    DowntimeHours INTEGER,
    EnergyLossMWh REAL,
    CostThousands REAL,
    PermitRequiredFlag INTEGER,
    InspectionScore INTEGER,
    WeatherImpactScore INTEGER,
    ContractVendorID INTEGER,
    WarrantyCoverageFlag INTEGER,
    NotesCode INTEGER,
    FollowUpRequiredFlag INTEGER,
    CompletionDateInt INTEGER,
    ApprovedByID INTEGER,
    PriorityLevel INTEGER
);
INSERT INTO renewable_energy_maintenance_schedule VALUES (401,1,2023,6,3,48,4,12,0,5,0.8,45.2,1,92,15,210,1,5,0,20230625,5001,2);
INSERT INTO renewable_energy_maintenance_schedule VALUES (402,2,2023,7,2,36,3,9,1,8,1.2,38.7,1,88,20,215,0,3,1,20230718,5003,1);
INSERT INTO renewable_energy_maintenance_schedule VALUES (403,3,2023,8,4,60,5,15,0,6,0.5,52.0,0,95,10,220,1,4,0,20230805,5002,3);

-- Public art event schedule
CREATE TABLE public_art_event_schedule (
    EventID INTEGER,
    ArtPieceID INTEGER,
    VenueID INTEGER,
    StartDateInt INTEGER,
    EndDateInt INTEGER,
    ExpectedVisitors INTEGER,
    InstallationCostThousands REAL,
    SecurityStaff INTEGER,
    LightingUnits INTEGER,
    AudioUnits INTEGER,
    SponsorID INTEGER,
    AccessibilityScore INTEGER,
    WeatherRiskScore INTEGER,
    InsuranceCoverageThousands REAL,
    PermitID INTEGER,
    MaintenancePlanID INTEGER,
    MarketingBudgetThousands REAL,
    VolunteerCount INTEGER,
    CrowdControlUnits INTEGER,
    CleanUpHours INTEGER,
    PostEventSurveyScore INTEGER,
    TicketRevenueThousands REAL,
    MerchandiseRevenueThousands REAL
);
INSERT INTO public_art_event_schedule VALUES (501,1001,301,20230701,20230707,25000,120.5,20,30,5,800,85,12,200.0,4001,5001,80.0,150,10,40,78,350.0,45.0);
INSERT INTO public_art_event_schedule VALUES (502,1002,302,20230815,20230822,18000,95.0,15,25,4,802,88,10,180.0,4002,5002,70.0,120,8,35,82,260.0,38.0);
INSERT INTO public_art_event_schedule VALUES (503,1003,303,20230910,20230917,30000,150.0,25,40,6,805,90,15,220.0,4003,5003,95.0,200,12,45,80,420.0,55.0);

-- Smart grid component status
CREATE TABLE smart_grid_component_status (
    ComponentID INTEGER,
    GridSectorID INTEGER,
    ComponentTypeCode INTEGER,
    InstallationYear INTEGER,
    FirmwareVersionCode INTEGER,
    LastCheckDateInt INTEGER,
    OperationalStatusCode INTEGER,
    PowerOutputMW REAL,
    VoltageKV REAL,
    CurrentKA REAL,
    TemperatureC INTEGER,
    FailureCount INTEGER,
    MaintenanceDueFlag INTEGER,
    LoadFactorPct INTEGER,
    EfficiencyPct INTEGER,
    RemoteAccessEnabledFlag INTEGER,
    AlertsCount INTEGER,
    PowerQualityScore INTEGER,
    CapacityUtilizationPct INTEGER,
    UpgradePlannedFlag INTEGER,
    SupplierID INTEGER,
    WarrantyEndYear INTEGER,
    DecommissionDateInt INTEGER,
    AdditionalInfoCode INTEGER
);
INSERT INTO smart_grid_component_status VALUES (601,10,1,2015,3,20230610,1,150.5,22.5,6.8,45,2,0,78,92,1,5,88,85,0,300,2028,0,7);
INSERT INTO smart_grid_component_status VALUES (602,11,2,2018,5,20230612,1,200.0,33.0,7.5,50,0,0,82,95,1,3,90,88,0,305,2029,0,9);
INSERT INTO smart_grid_component_status VALUES (603,12,3,2020,2,20230615,2,120.3,11.0,5.5,42,1,1,70,85,0,7,80,65,1,310,2027,0,5);

-- Water treatment chemical batches
CREATE TABLE water_treatment_chemical_batches (
    BatchID INTEGER,
    PlantID INTEGER,
    ChemicalID INTEGER,
    ProductionDateInt INTEGER,
    ExpiryDateInt INTEGER,
    VolumeLiters INTEGER,
    ConcentrationPPM INTEGER,
    SupplierID INTEGER,
    CostThousands REAL,
    SafetyDataSheetFlag INTEGER,
    StorageTempC INTEGER,
    pHLevel INTEGER,
    ConductivityUS INTEGER,
    ApplicationCount INTEGER,
    OperatorID INTEGER,
    QAStatusCode INTEGER,
    RegulatoryApprovalFlag INTEGER,
    ShipmentCount INTEGER,
    ContaminationIncidents INTEGER,
    AuditScore INTEGER,
    DisposalMethodCode INTEGER,
    ReuseCount INTEGER,
    AdjustedVolumeLiters INTEGER
);
INSERT INTO water_treatment_chemical_batches VALUES (701,20,15,20230401,20240401,5000,250,400,12.5,1,22,7,150,30,210,2,1,5,0,88,3,2,4800);
INSERT INTO water_treatment_chemical_batches VALUES (702,21,18,20230515,20240515,6000,300,405,14.0,1,21,8,160,35,215,3,1,6,1,85,4,1,5700);
INSERT INTO water_treatment_chemical_batches VALUES (703,22,12,20230620,20240620,5500,275,410,13.2,1,23,7,155,32,220,2,1,4,0,90,2,3,5250);

-- Logistics drone delivery routes
CREATE TABLE logistics_drone_delivery_routes (
    RouteID INTEGER,
    DroneModelCode INTEGER,
    BaseStationID INTEGER,
    StartDateInt INTEGER,
    EndDateInt INTEGER,
    TotalDistanceKm INTEGER,
    AvgSpeedKmh INTEGER,
    FlightsCount INTEGER,
    PackagesDelivered INTEGER,
    MedianPayloadKg REAL,
    BatteryCycles INTEGER,
    MaintenanceStops INTEGER,
    WeatherDelayMinutes INTEGER,
    AirspaceClearances INTEGER,
    RegulatoryComplianceScore INTEGER,
    OperatorID INTEGER,
    ChargeTimeMinutes INTEGER,
    LandingSuccessRatePct INTEGER,
    IncidentCount INTEGER,
    CustomerSatisfactionScore INTEGER,
    EnergyConsumptionKWh REAL,
    RouteOptimizationVersion INTEGER
);
INSERT INTO logistics_drone_delivery_routes VALUES (801,1,5001,20230701,20230707,350,60,120,1150,2.8,300,15,20,5,95,2100,45,98,0,89,420.5,3);
INSERT INTO logistics_drone_delivery_routes VALUES (802,2,5002,20230810,20230816,420,58,140,1300,3.0,350,18,25,6,93,2105,50,96,1,85,460.0,4);
INSERT INTO logistics_drone_delivery_routes VALUES (803,1,5003,20230905,20230911,380,62,130,1225,2.9,320,16,22,5,97,2110,48,97,0,90,440.2,5);

-- Urban noise monitoring stations
CREATE TABLE urban_noise_monitoring_stations (
    StationID INTEGER,
    CitySectorID INTEGER,
    InstallationYear INTEGER,
    SensorModelCode INTEGER,
    LatitudeInt INTEGER,
    LongitudeInt INTEGER,
    FrequencyHz INTEGER,
    AvgNoiseLevelDb INTEGER,
    PeakNoiseDb INTEGER,
    NoiseEventsCount INTEGER,
    CalibrationDateInt INTEGER,
    MaintenanceVisits INTEGER,
    PowerSourceCode INTEGER,
    DataTransmissionRateMbps INTEGER,
    FirmwareVersionCode INTEGER,
    AlertThresholdDb INTEGER,
    IncidentReports INTEGER,
    FundingSourceID INTEGER,
    OperationalStatusCode INTEGER,
    LastDataSyncInt INTEGER,
    BatteryLifeHours INTEGER,
    UpgradePlannedFlag INTEGER,
    OwnerAgencyID INTEGER,
    DataRetentionMonths INTEGER
);
INSERT INTO urban_noise_monitoring_stations VALUES (901,101,2019,5,4045123,7398123,250,62,95,1200,20230601,4,2,10,7,80,5,3001,1,20230615,2000,0,9001,24);
INSERT INTO urban_noise_monitoring_stations VALUES (902,102,2020,6,4045223,7398223,260,65,98,1300,20230605,5,2,12,8,85,7,3002,1,20230618,2100,1,9002,24);
INSERT INTO urban_noise_monitoring_stations VALUES (903,103,2021,5,4045323,7398323,255,63,97,1250,20230610,3,2,11,7,82,6,3003,1,20230620,2050,0,9003,24);

-- Municipal building permits detail
CREATE TABLE municipal_building_permits_detail (
    PermitID INTEGER,
    BuildingID INTEGER,
    PermitTypeCode INTEGER,
    ApplicantID INTEGER,
    IssueDateInt INTEGER,
    ExpirationDateInt INTEGER,
    FeeThousands REAL,
    InspectionCount INTEGER,
    ViolationCount INTEGER,
    ApprovalStatusCode INTEGER,
    ZoningCode INTEGER,
    FloorAreaSqFt INTEGER,
    EstimatedCostThousands REAL,
    ContractorID INTEGER,
    ArchitectID INTEGER,
    EnergyEfficiencyScore INTEGER,
    AccessibilityScore INTEGER,
    FireSafetyScore INTEGER,
    StructuralReviewScore INTEGER,
    PermitRevokedFlag INTEGER,
    RevocationDateInt INTEGER,
    ReissueCount INTEGER,
    FinalCompletionDateInt INTEGER,
    ComplianceCertificateFlag INTEGER,
    InspectorID INTEGER
);
INSERT INTO municipal_building_permits_detail VALUES (1001,2001,3,4001,20230115,20231231,150.0,5,0,1,12,25000,3000.0,5001,6001,88,92,95,90,0,0,0,20231215,1,7001);
INSERT INTO municipal_building_permits_detail VALUES (1002,2002,2,4002,20230220,20240320,200.0,6,1,2,15,32000,3800.0,5002,6002,85,89,93,88,0,0,0,20240310,1,7002);
INSERT INTO municipal_building_permits_detail VALUES (1003,2003,4,4003,20230310,20240410,175.0,4,0,1,14,28000,3400.0,5003,6003,90,94,96,92,0,0,0,20240405,1,7003);