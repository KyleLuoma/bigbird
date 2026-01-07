-- Space Mission Logs
CREATE TABLE space_mission_logs
(
    Id INTEGER NOT NULL PRIMARY KEY,
    MissionName TEXT,
    LaunchDate DATETIME,
    LaunchSite TEXT,
    Vehicle TEXT,
    CrewSize INTEGER,
    Destination TEXT,
    MissionDurationDays INTEGER,
    BudgetMillion REAL,
    Outcome TEXT,
    LeadScientist TEXT,
    PrimaryObjective TEXT,
    SecondaryObjective TEXT,
    PayloadMassKg REAL,
    OrbitType TEXT,
    SuccessFlag INTEGER,
    Notes TEXT,
    ContractAgency TEXT,
    InternationalPartners TEXT,
    DataLink TEXT,
    LastUpdate DATETIME
);

INSERT INTO space_mission_logs VALUES
(1, 'ArtemisI', '2022-11-16T06:47:00', 'KennedySpaceCenter', 'SLS', 4, 'Moon', 25, 4500.5, 'Success', 'DrSmith', 'LunarOrbit', 'SurfaceLanding', 27500.0, 'Lunar', 1, 'First crewed test', 'NASA', 'ESA', 'http://nasa.gov/artemisI', '2023-01-01T00:00:00');

INSERT INTO space_mission_logs VALUES
(2, 'VoyagerIII', '2025-04-12T13:20:00', 'Baikonur', 'Soyuz', 0, 'Mars', 210, 3000.0, 'Planned', 'DrIvanov', 'MarsFlyby', 'AtmosphericSample', 1200.0, 'Heliocentric', 0, 'Awaiting launch', 'Roscosmos', 'JAXA', 'http://roscosmos.ru/voyagerIII', '2023-01-02T00:00:00');

INSERT INTO space_mission_logs VALUES
(3, 'StarlinkBeta', '2023-07-05T09:30:00', 'Vandenberg', 'Falcon9', 0, 'LowEarthOrbit', 7, 150.0, 'Success', 'DrLee', 'SatelliteDeployment', 'Communications', 5000.0, 'LEO', 1, 'Beta test phase', 'SpaceX', 'None', 'http://spacex.com/starlinkBeta', '2023-01-03T00:00:00');

-- Archaeology Sites
CREATE TABLE archaeology_sites
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SiteName TEXT,
    Country TEXT,
    Region TEXT,
    Latitude REAL,
    Longitude REAL,
    DiscoveryYear INTEGER,
    Discoverer TEXT,
    SiteType TEXT,
    Period TEXT,
    EstimatedAreaSqM INTEGER,
    PrimaryFind TEXT,
    SecondaryFind TEXT,
    PreservationStatus TEXT,
    ThreatLevel INTEGER,
    ExcavationStatus TEXT,
    FundingMillion REAL,
    ManagingInstitution TEXT,
    PublicAccessFlag INTEGER,
    VisitorCountYearly INTEGER,
    GPSReference TEXT,
    LastSurveyDate DATETIME,
    Notes TEXT
);

INSERT INTO archaeology_sites VALUES
(1, 'GobekliTepe', 'Turkey', 'SoutheastAnatolia', 37.2231, 38.9255, 1994, 'KlausSchmidt', 'Temple', 'PrePotteryNeolithic', 8000, 'T-shapedSteles', 'StonePillars', 'Protected', 2, 'Ongoing', 5.0, 'UniversityOfAnkara', 1, 12000, 'UTM34T', '2022-06-15T00:00:00', 'WorldHeritageSite');

INSERT INTO archaeology_sites VALUES
(2, 'MachuPicchu', 'Peru', 'CuscoRegion', -13.1631, -72.5450, 1911, 'HiramBingham', 'Citadel', 'LateInca', 32000, 'Terraces', 'TempleOfSun', 'Conserved', 1, 'Completed', 12.5, 'NationalInstituteOfCulture', 1, 250000, 'UTM19S', '2021-09-20T00:00:00', 'MajorTouristAttraction');

INSERT INTO archaeology_sites VALUES
(3, 'CiudadelaAzteca', 'Mexico', 'MexicoCity', 19.4326, -99.1332, 1978, 'EduardoMatute', 'City', 'LatePostclassic', 54000, 'TemploMayor', 'Chacmool', 'Endangered', 3, 'Partial', 3.2, 'UNAM', 0, 0, 'UTM13N', '2020-03-10T00:00:00', 'UrbanEncroachment');

-- Renewable Energy Facilities
CREATE TABLE renewable_energy_facilities
(
    Id INTEGER NOT NULL PRIMARY KEY,
    FacilityName TEXT,
    FacilityType TEXT,
    Country TEXT,
    StateOrProvince TEXT,
    Latitude REAL,
    Longitude REAL,
    CapacityMW REAL,
    CommissionDate DATETIME,
    Operator TEXT,
    Owner TEXT,
    GridConnectionPoint TEXT,
    AvgAnnualGenerationGWh REAL,
    CO2eReducedTonnes REAL,
    FundingSource TEXT,
    ConstructionCostMillion REAL,
    MaintenanceCostYearly REAL,
    Status TEXT,
    LicenceExpiration DATETIME,
    RenewableSource TEXT,
    NumberOfTurbines INTEGER,
    TurbineModel TEXT,
    Acreage INTEGER,
    Notes TEXT,
    LastInspectionDate DATETIME
);

INSERT INTO renewable_energy_facilities VALUES
(1, 'SolarParkAlpha', 'Solar', 'USA', 'California', 36.7783, -119.4179, 250.0, '2020-04-01T00:00:00', 'SunPowerInc', 'GreenInvest', 'NodeA1', 500.0, 350000.0, 'PPPinvest', 180.0, 5.5, 'Operating', '2030-04-01T00:00:00', 'Photovoltaic', 0, 'N/A', 2000, 'PhaseOneCompleted', '2022-12-10T00:00:00');

INSERT INTO renewable_energy_facilities VALUES
(2, 'WindFarmBeta', 'Wind', 'Denmark', 'NorthJutland', 57.0488, 9.9217, 150.0, '2018-09-15T00:00:00', 'VestasA/S', 'NordicEnergy', 'NodeB7', 450.0, 200000.0, 'EUFunds', 120.0, 4.0, 'Operating', '2028-09-15T00:00:00', 'Onshore', 75, 'V112', 2500, 'ExpansionPlanned', '2023-03-05T00:00:00');

INSERT INTO renewable_energy_facilities VALUES
(3, 'HydroPlantGamma', 'Hydro', 'Canada', 'BritishColumbia', 49.2827, -123.1207, 300.0, '2015-06-20T00:00:00', 'BCHydro', 'ProvincialUtility', 'NodeC3', 900.0, 560000.0, 'PublicBond', 300.0, 7.2, 'Operating', '2035-06-20T00:00:00', 'Run-of-River', 0, 'N/A', 3500, 'LowEnvironmentalImpact', '2022-08-18T00:00:00');

-- Urban Planning Projects
CREATE TABLE urban_planning_projects
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProjectName TEXT,
    City TEXT,
    Country TEXT,
    StartDate DATETIME,
    EstimatedCompletionDate DATETIME,
    ProjectType TEXT,
    BudgetMillion REAL,
    FundingAgency TEXT,
    LeadPlanner TEXT,
    AreaSqM INTEGER,
    PopulationImpact INTEGER,
    MainObjective TEXT,
    SecondaryObjective TEXT,
    ZoningChanges TEXT,
    TransportationImprovements TEXT,
    GreenSpaceAddedSqM INTEGER,
    HousingUnitsAdded INTEGER,
    CommercialSpaceSqM INTEGER,
    PublicConsultationsHeld INTEGER,
    StakeholderGroup TEXT,
    Status TEXT,
    Phase TEXT,
    Remarks TEXT,
    LastUpdate DATETIME
);

INSERT INTO urban_planning_projects VALUES
(1, 'RiverfrontRevitalization', 'Sydney', 'Australia', '2021-01-10T00:00:00', '2025-12-31T00:00:00', 'Redevelopment', 250.0, 'CityCouncil', 'AnnaLee', 120000, 50000, 'PublicSpaces', 'MixedUse', 'Mixed', 'LightRail', 30000, 2000, 15000, 12, 'CommunityGroups', 'Active', 'Construction', 'Phase2Started', '2023-02-15T00:00:00');

INSERT INTO urban_planning_projects VALUES
(2, 'MetroExpansionNorth', 'Berlin', 'Germany', '2019-05-01T00:00:00', '2024-11-30T00:00:00', 'Transportation', 480.0, 'FederalTransport', 'MarkusSchulz', 80000, 120000, 'IncreaseCapacity', 'ReduceCongestion', 'ZoneA', 'U-BahnExtension', 5000, 0, 0, 8, 'TransitAuthorities', 'OnSchedule', 'Testing', 'FinalTrials', '2023-03-20T00:00:00');

INSERT INTO urban_planning_projects VALUES
(3, 'GreenCityInitiative', 'Portland', 'USA', '2020-03-15T00:00:00', '2026-06-30T00:00:00', 'Sustainability', 150.0, 'StateGrants', 'LiamChen', 200000, 80000, 'IncreaseTreeCanopy', 'BikeLanes', 'Residential', 'BikePathNetwork', 60000, 500, 20000, 20, 'EnvironmentalNGOs', 'Planning', 'Design', 'CommunityWorkshops', '2023-01-10T00:00:00');

-- Marine Biology Observations
CREATE TABLE marine_biology_observations
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ObservationDate DATETIME,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    SpeciesCommonName TEXT,
    SpeciesScientificName TEXT,
    LifeStage TEXT,
    CountObserved INTEGER,
    AvgLengthCm REAL,
    AvgWeightKg REAL,
    WaterTemperatureC REAL,
    SalinityPSU REAL,
    DepthMeters INTEGER,
    HabitatType TEXT,
    SurveyMethod TEXT,
    ObserverName TEXT,
    Organization TEXT,
    PhotoReference TEXT,
    VideoReference TEXT,
    Notes TEXT,
    DataQualityFlag INTEGER,
    VerificationStatus TEXT,
    LastModified DATETIME,
    GPSAccuracyM INTEGER,
    SamplingEquipment TEXT
);

INSERT INTO marine_biology_observations VALUES
(1, '2023-04-12T08:30:00', 'GreatBarrierReef', -18.2871, 147.6992, 'Clownfish', 'AmphiprionOcellaris', 'Adult', 45, 7.5, 0.02, 27.3, 35.0, 12, 'CoralReef', 'UnderwaterSurvey', 'DrMiller', 'MarineInstitute', 'photo001.jpg', 'video001.mp4', 'HealthyPopulation', 1, 'Verified', '2023-04-13T00:00:00', 3, 'SCUBA');

INSERT INTO marine_biology_observations VALUES
(2, '2023-05-05T14:20:00', 'MontereyBay', 36.6002, -121.8947, 'HarborSeal', 'PhocaVitulina', 'Pup', 12, 95.0, 80.0, 15.2, 33.5, 30, 'Coastal', 'AerialDrone', 'EmilyR', 'CoastalResearch', 'photo002.jpg', 'video002.mp4', 'PupsObservedNearHaulout', 1, 'Pending', '2023-05-06T00:00:00', 5, 'DroneCamera');

INSERT INTO marine_biology_observations VALUES
(3, '2023-06-18T10:45:00', 'SodwanaBay', -27.3159, 32.6832, 'HumpbackWhale', 'MegapteraNovaeangliae', 'Adult', 1, 15000.0, 30000.0, 22.0, 34.8, 250, 'OpenOcean', 'AcousticTag', 'DrKhan', 'OceanicStudies', 'photo003.jpg', 'video003.mp4', 'LoneMaleSpotted', 1, 'Verified', '2023-06-19T00:00:00', 10, 'Hydrophone');

-- Cultural Heritage Artifacts
CREATE TABLE cultural_heritage_artifacts
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ArtifactName TEXT,
    Culture TEXT,
    Country TEXT,
    Region TEXT,
    DiscoveryDate DATETIME,
    Discoverer TEXT,
    Material TEXT,
    Period TEXT,
    ApproxAgeYears INTEGER,
    CurrentLocation TEXT,
    Museum TEXT,
    ExhibitHall TEXT,
    DimensionsCm TEXT,
    WeightKg REAL,
    Condition TEXT,
    ConservationStatus TEXT,
    AcquisitionMethod TEXT,
    Provenance TEXT,
    LegalStatus TEXT,
    DisplayFlag INTEGER,
    CatalogNumber TEXT,
    ImageReference TEXT,
    Description TEXT,
    LastRestorationDate DATETIME,
    Notes TEXT
);

INSERT INTO cultural_heritage_artifacts VALUES
(1, 'TerracottaWarrior', 'QinDynasty', 'China', 'Shaanxi', '1974-03-15T00:00:00', 'Farmers', 'Terracotta', 'Ancient', 2200, 'MuseumOfTerracotta', 'TerracottaMuseum', 'WarriorHall', '180x70x120', 250.0, 'Excellent', 'Stable', 'Excavation', 'RoyalTomb', 'StateOwned', 1, 'TC-001', 'warrior.jpg', 'LeadFigureInArmy', '2005-09-10T00:00:00', 'IconicArtifact');

INSERT INTO cultural_heritage_artifacts VALUES
(2, 'RosettaStone', 'PtolemaicEgypt', 'Egypt', 'Alexandria', '1799-07-22T00:00:00', 'PierreB', 'Granodiorite', 'Hellenistic', 2200, 'BritishMuseum', 'Room4', '112x75x28', 760.0, 'Good', 'Protected', 'Gift', 'FrenchExpedition', 'BritishGovernment', 'PublicDomain', 1, 'RS-001', 'rosetta.jpg', 'KeyToHieroglyphics', '1923-04-01T00:00:00', 'HighlyStudied');

INSERT INTO cultural_heritage_artifacts VALUES
(3, 'MaskOfTutankhamun', 'AncientEgypt', 'Egypt', 'Luxor', '1922-11-04T00:00:00', 'HowardCar', 'Gold', 'NewKingdom', 3400, 'EgyptianMuseum', 'Hall1', '54x39x49', 10.5, 'Fair', 'Restored', 'Acquisition', 'Excavation', 'NationalHeritage', 1, 'MT-001', 'mask.jpg', 'IconicFuneraryMask', '2000-06-15T00:00:00', 'DelicateInlay');

-- Food Supply Chain
CREATE TABLE food_supply_chain
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProductName TEXT,
    Category TEXT,
    SupplierId INTEGER,
    FarmLocation TEXT,
    HarvestDate DATETIME,
    ProcessingDate DATETIME,
    DistributionCenterId INTEGER,
    TransportMode TEXT,
    BatchNumber TEXT,
    QuantityKg REAL,
    UnitPriceUSD REAL,
    ExpirationDate DATETIME,
    QualityGrade TEXT,
    Certification TEXT,
    TemperatureControlFlag INTEGER,
    RetailerId INTEGER,
    ShelfLocation TEXT,
    StockOnHandKg REAL,
    ReorderLevelKg REAL,
    LeadTimeDays INTEGER,
    LastInspectionDate DATETIME,
    InspectionResult TEXT,
    Notes TEXT,
    LastUpdated DATETIME,
    ComplianceStatus TEXT
);

INSERT INTO food_supply_chain VALUES
(1, 'OrganicApples', 'Fruit', 101, 'WashingtonUSA', '2023-08-01T00:00:00', '2023-08-03T00:00:00', 201, 'Truck', 'BATCH-A1', 5000.0, 1.2, '2023-10-01T00:00:00', 'A', 'USDAOrganic', 1, 301, 'Aisle5', 1200.0, 500.0, 3, '2023-08-10T00:00:00', 'Pass', 'FirstHarvestSeason', '2023-08-12T00:00:00', 'Compliant');

INSERT INTO food_supply_chain VALUES
(2, 'FreeRangeEggs', 'Dairy', 102, 'IowaUSA', '2023-07-20T00:00:00', '2023-07-21T00:00:00', 202, 'RefrigeratedTruck', 'BATCH-E5', 2000.0, 0.9, '2023-09-20T00:00:00', 'B', 'CertifiedFreeRange', 1, 302, 'Cooler2', 800.0, 300.0, 2, '2023-07-28T00:00:00', 'Pass', 'WeeklyRestock', '2023-07-30T00:00:00', 'Compliant');

INSERT INTO food_supply_chain VALUES
(3, 'AlmondButter', 'Spread', 103, 'CaliforniaUSA', '2023-06-15T00:00:00', '2023-06-20T00:00:00', 203, 'Rail', 'BATCH-AB12', 1500.0, 5.5, '2024-06-15T00:00:00', 'A', 'NonGMO', 0, 303, 'Shelf3', 600.0, 200.0, 5, '2023-06-25T00:00:00', 'Pass', 'CosmeticPackaging', '2023-06-27T00:00:00', 'Compliant');

-- Public Health Records
CREATE TABLE public_health_records
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ReportDate DATETIME,
    Region TEXT,
    Country TEXT,
    Disease TEXT,
    CaseCount INTEGER,
    DeathCount INTEGER,
    HospitalizedCount INTEGER,
    RecoveredCount INTEGER,
    VaccinatedCount INTEGER,
    VaccinationRatePercent REAL,
    TestingRatePerThousand REAL,
    MedianAgeAffected REAL,
    GenderDistribution TEXT,
    RiskLevel TEXT,
    ContainmentMeasures TEXT,
    HealthAuthority TEXT,
    DataSource TEXT,
    Notes TEXT,
    UpdateTimestamp DATETIME,
    SourceUrl TEXT,
    PopulationCovered INTEGER,
    IncidenceRatePer100k REAL,
    MortalityRatePer100k REAL,
    HospitalCapacityUtilization REAL,
    PublicAwarenessScore INTEGER,
    LastReviewDate DATETIME,
    ReviewerName TEXT
);

INSERT INTO public_health_records VALUES
(1, '2023-09-01T00:00:00', 'Midwest', 'USA', 'Influenza', 12500, 320, 850, 11000, 2500000, 75.5, 45.2, 38.0, 'Male55%Female45%', 'Medium', 'MaskMandate', 'CDC', 'NationalSurveillance', 'SeasonalFlu', '2023-09-02T00:00:00', 'http://cdc.gov/flu2023', 50000000, 25.0, 6.4, 82.0, 70, '2023-09-03T00:00:00', 'DrSmith');

INSERT INTO public_health_records VALUES
(2, '2023-09-01T00:00:00', 'Lombardy', 'Italy', 'COVID19', 85000, 4500, 12000, 73000, 3500000, 85.0, 80.5, 45.0, 'Male48%Female52%', 'High', 'VaccinationCampaign', 'ISS', 'RegionalReport', 'DeltaVariant', '2023-09-02T00:00:00', 'http://iss.it/covid19', 10000000, 850.0, 45.0, 95.0, 60, '2023-09-03T00:00:00', 'DrRossi');

INSERT INTO public_health_records VALUES
(3, '2023-09-01T00:00:00', 'Queensland', 'Australia', 'Dengue', 2300, 10, 150, 2200, 500000, 12.3, 30.0, 27.0, 'Male50%Female50%', 'Low', 'VectorControl', 'QueenslandHealth', 'StateHealthDept', 'SeasonalOutbreak', '2023-09-02T00:00:00', 'http://health.qld.gov.au/dengue', 5000000, 46.0, 0.2, 70.0, 80, '2023-09-03T00:00:00', 'DrLee');

-- Transportation Infrastructure
CREATE TABLE transportation_infrastructure
(
    Id INTEGER NOT NULL PRIMARY KEY,
    AssetName TEXT,
    AssetType TEXT,
    Location TEXT,
    City TEXT,
    Country TEXT,
    Latitude REAL,
    Longitude REAL,
    ConstructionYear INTEGER,
    Contractor TEXT,
    Owner TEXT,
    LengthKm REAL,
    CapacityVehiclesPerHour INTEGER,
    Status TEXT,
    LastInspectionDate DATETIME,
    InspectionScore INTEGER,
    MaintenanceCostYearly REAL,
    UpcomingUpgradePlan TEXT,
    EstimatedUpgradeCostMillion REAL,
    TrafficCountAnnual INTEGER,
    AverageSpeedKmH REAL,
    EmissionsTonnesCO2 INTEGER,
    FundingSource TEXT,
    ProjectCode TEXT,
    GeoJSONReference TEXT,
    Remarks TEXT,
    LastUpdated DATETIME,
    ComplianceStatus TEXT
);

INSERT INTO transportation_infrastructure VALUES
(1, 'BridgeNorth', 'Bridge', 'RiverCrossing', 'Berlin', 'Germany', 52.5200, 13.4050, 1998, 'BauAG', 'CityTransport', 2.5, 8000, 'Operational', '2022-11-15T00:00:00', 88, 1.2, 'Reinforcement2025', 3.5, 1200000, 65.0, 5000, 'EUFunds', 'BRG-001', 'bridge_north.geojson', 'RegularMaintenance', '2023-01-10T00:00:00', 'Compliant');

INSERT INTO transportation_infrastructure VALUES
(2, 'MetroLineRed', 'Rail', 'UrbanTransit', 'Tokyo', 'Japan', 35.6895, 139.6917, 2005, 'RailCorp', 'MetroAuthority', 45.0, 25000, 'Operational', '2023-03-20T00:00:00', 92, 2.8, 'SignalUpgrade2026', 12.0, 8500000, 55.0, 12000, 'NationalBudget', 'MLR-RED', 'metro_red.geojson', 'HighRidership', '2023-04-01T00:00:00', 'Compliant');

INSERT INTO transportation_infrastructure VALUES
(3, 'Highway101', 'Highway', 'CoastalRoute', 'LosAngeles', 'USA', 34.0522, -118.2437, 1970, 'ConstructCo', 'StateDOT', 350.0, 35000, 'Operational', '2023-02-10T00:00:00', 85, 4.5, 'Widening2027', 25.0, 25000000, 80.0, 36000, 'FederalGrant', 'HWY-101', 'highway_101.geojson', 'HeavyFreight', '2023-03-15T00:00:00', 'Compliant');

-- Climate Change Models
CREATE TABLE climate_change_models
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ModelName TEXT,
    Institution TEXT,
    Version TEXT,
    ReleaseDate DATETIME,
    SpatialResolutionKm REAL,
    TemporalResolutionDays INTEGER,
    EmissionScenario TEXT,
    VariablesIncluded TEXT,
    CalibrationMethod TEXT,
    ValidationMetric TEXT,
    GlobalMeanTempAnomalyC REAL,
    SeaLevelRiseCm REAL,
    ArcticIceLossSqKm REAL,
    CO2ConcentrationPpm REAL,
    MethaneConcentrationPpb REAL,
    ModelRunDurationHours REAL,
    ComputationalResources TEXT,
    FundingAgency TEXT,
    License TEXT,
    DOI TEXT,
    ContactPerson TEXT,
    DataAccessURL TEXT,
    LastUpdate DATETIME,
    Notes TEXT,
    PeerReviewed INTEGER,
    PublicationReference TEXT,
    ModelStatus TEXT,
    EnsembleMemberCount INTEGER,
    SensitivityParameter REAL
);

INSERT INTO climate_change_models VALUES
(1, 'CMIP6-ModelX', 'UniversityX', 'v1.2', '2023-05-01T00:00:00', 0.5, 30, 'SSP2-4.5', 'Temp,Precip,Clouds', 'Bayesian', 'RMSE', 1.2, 7.5, 120000, 420.0, 1900.0, 5000.0, 'HPCClusterA', 'NationalScienceFoundation', 'CC-BY', '10.1234/cmip6x', 'DrAlice', 'http://data.univx.edu/cmip6x', '2023-06-15T00:00:00', 'BaselineScenario', 1, 'JournalOfClimate 2024', 'Active', 10, 3.2);

INSERT INTO climate_change_models VALUES
(2, 'EcoSim-Alpha', 'InstituteY', 'v3.0', '2022-11-20T00:00:00', 1.0, 15, 'RCP8.5', 'Temp,SeaLevel,Ice', 'Ensemble', 'MAE', 2.4, 15.0, 250000, 460.0, 2100.0, 7200.0, 'SuperComputerB', 'EUResearchCouncil', 'GPL', '10.5678/ecosimalpha', 'DrBob', 'http://datascience.insty.org/ecosimalpha', '2023-01-10T00:00:00', 'HighEmissionPathway', 1, 'ClimateDynamics 2023', 'Active', 20, 4.5);

INSERT INTO climate_change_models VALUES
(3, 'GeoFlux-Beta', 'CentreZ', 'v0.9', '2021-03-15T00:00:00', 0.25, 10, 'SSP1-2.6', 'Temp,Precip,CarbonFlux', 'MLE', 'R2', 0.8, 3.2, 80000, 380.0, 1700.0, 3200.0, 'CloudClusterC', 'PrivateFunding', 'MIT', '10.9012/geofluxbeta', 'DrCarla', 'http://geo.centerz.org/geofluxbeta', '2022-12-01T00:00:00', 'LowEmissionScenario', 0, 'Preprint 2022', 'Testing', 5, 2.1);