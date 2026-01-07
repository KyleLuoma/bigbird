-- County economic indicators table
CREATE TABLE county_economic_indicators
(
    CountyCode                TEXT PRIMARY KEY,
    CountyName                TEXT,
    Year                      INTEGER,
    MedianHouseholdIncome     REAL,
    UnemploymentRate          REAL,
    PovertyRate               REAL,
    PerCapitaIncome           REAL,
    Population                INTEGER,
    LaborForce                INTEGER,
    ManufacturingEmployment   INTEGER,
    AgricultureEmployment     INTEGER,
    ServiceEmployment         INTEGER,
    MedianHomeValue           REAL,
    AverageCommuteTime        REAL,
    EducationBachelorsRate    REAL,
    EducationMastersRate      REAL,
    IncomeInequalityIndex    REAL,
    HealthInsuranceCoverage   REAL,
    CrimeRatePer1000          REAL,
    BroadbandAccessRate       REAL
);
INSERT INTO county_economic_indicators VALUES ('001','AlphaCounty',2022,61800,5.2,13.4,34200,150000,72000,12000,5000,55000,210000,25.4,30.1,15.2,0.45,1.98,2.73,85.0);
INSERT INTO county_economic_indicators VALUES ('002','BetaCounty',2022,47500,7.1,18.9,26000,95000,46000,8000,3000,38000,150000,28.7,22.5,10.8,0.58,3.21,1.85,78.5);
INSERT INTO county_economic_indicators VALUES ('003','GammaCounty',2022,53200,6.0,15.2,31000,112000,54000,10000,4000,44000,180000,27.1,26.8,12.3,0.51,2.65,2.10,82.3);

-- Regional air quality measurements table
CREATE TABLE regional_air_quality_measurements
(
    StationID                 TEXT PRIMARY KEY,
    RegionName                TEXT,
    MeasurementDate           DATE,
    PM25_Concentration        REAL,
    PM10_Concentration        REAL,
    Ozone_ppb                 REAL,
    NO2_ppb                   REAL,
    SO2_ppb                   REAL,
    CO_ppm                    REAL,
    AQI                       INTEGER,
    TemperatureC              REAL,
    HumidityPercent           REAL,
    WindSpeed_mps             REAL,
    WindDirectionDegrees      REAL,
    Precipitation_mm          REAL,
    Visibility_km             REAL,
    SolarRadiation_Wm2        REAL,
    MeasurementMethod        TEXT,
    DataQualityFlag           TEXT,
    ReportingAgency           TEXT,
    Latitude                  REAL,
    Longitude                 REAL,
    Elevation_m               REAL
);
INSERT INTO regional_air_quality_measurements VALUES ('ST001','NorthValley','2022-07-15',12.3,28.7,45.0,22.1,3.5,0.4,42,23.5,55.0,3.2,180,0.0,15.2,'Automated','Good','EnvAgency','41.12','-71.34','150');
INSERT INTO regional_air_quality_measurements VALUES ('ST002','EastHill','2022-07-15',15.8,35.2,38.0,19.4,2.8,0.5,55,21.0,60.2,2.8,210,0.0,13.8,'Manual','Moderate','EnvAgency','42.05','-70.89','200');
INSERT INTO regional_air_quality_measurements VALUES ('ST003','WestRidge','2022-07-15',9.7,20.4,55.0,24.5,4.1,0.3,35,25.1,50.3,3.6,150,0.0,16.0,'Automated','Good','EnvAgency','40.78','-71.10','120');

-- State education funding programs table
CREATE TABLE state_education_funding_programs
(
    ProgramID                 TEXT PRIMARY KEY,
    StateCode                 TEXT,
    ProgramName               TEXT,
    FiscalYear                INTEGER,
    TotalFundingAllocated     REAL,
    FundingSource             TEXT,
    EligibilityCriteria      TEXT,
    TargetStudentCount        INTEGER,
    PerStudentAllocation      REAL,
    MatchingRequirementPct    REAL,
    GrantPeriodYears          INTEGER,
    ApplicationDeadline      DATE,
    AwardStatus               TEXT,
    ProgramCoordinator        TEXT,
    ContactEmail               TEXT,
    ContactPhone               TEXT,
    ReportingFrequency        TEXT,
    EvaluationMetric          TEXT,
    MaximumAwardAmount        REAL,
    MinimumAwardAmount        REAL,
    GeographicFocus           TEXT,
    SubjectAreaFocus          TEXT,
    PriorityLevel             TEXT,
    AdministeringAgency       TEXT
);
INSERT INTO state_education_funding_programs VALUES ('PRG001','CA','STEM_Innovation_Grant',2023,25000000,'State Budget','Public High Schools',5000,5000,10.0,3,'2023-06-30','Open','JaneDoe','jane.doe@example.com','555-1234','Annual','StudentPerformance','50000','25000','Northern','STEM','High','DeptEducation');
INSERT INTO state_education_funding_programs VALUES ('PRG002','TX','Rural_School_Improvement',2023,15000000,'Federal Matching','Rural Elementary Schools',3000,5000,20.0,2,'2023-07-15','Open','JohnSmith','john.smith@example.com','555-5678','Semiannual','AttendanceRate','40000','20000','Rural','General','Medium','DeptEducation');
INSERT INTO state_education_funding_programs VALUES ('PRG003','NY','Early_Childhood_Education',2023,18000000,'State Grants','Public PreK Programs',4000,4500,15.0,4,'2023-05-31','Open','MariaLee','maria.lee@example.com','555-9012','Annual','EnrollmentGrowth','45000','30000','Statewide','EarlyChildhood','High','DeptEducation');

-- Federal grant allocation summary table
CREATE TABLE federal_grant_allocation_summary
(
    GrantID                  TEXT PRIMARY KEY,
    AgencyName               TEXT,
    GrantTitle               TEXT,
    FiscalYear               INTEGER,
    TotalAwardedAmount       REAL,
    NumberOfRecipients       INTEGER,
    AverageAwardAmount       REAL,
    MinimumAwardAmount       REAL,
    MaximumAwardAmount       REAL,
    ProgramArea              TEXT,
    EligibilityRequirements TEXT,
    FundingInstrument        TEXT,
    AwardStartDate           DATE,
    AwardEndDate             DATE,
    ReportingRequirement    TEXT,
    Audited                 INTEGER,
    ApplicationProcess      TEXT,
    ContactOffice            TEXT,
    ContactPhone             TEXT,
    ContactEmail             TEXT,
    GeographicCoverage      TEXT,
    TargetPopulation         TEXT,
    PerformanceMetric        TEXT,
    StateMatchRequired       REAL,
    CongressionalDistrict    TEXT,
    GrantStatus              TEXT
);
INSERT INTO federal_grant_allocation_summary VALUES ('FG001','EDUDept','National_Reading_Initiative',2022,120000000,240,500000,100000,1000000,'Literacy','Public Schools','Cooperative Agreement','2022-01-01','2025-12-31','Quarterly',1,'Competitive','OfficeOfGrantManagement','555-1111','grant.office@example.com','Nationwide','K-12 Students','ReadingScoreImprovement',0.0,'All','Active');
INSERT INTO federal_grant_allocation_summary VALUES ('FG002','HEDept','Community_College_Upgrade',2022,80000000,160,500000,200000,800000,'HigherEd','Community Colleges','Grant','2022-07-01','2026-06-30','Annual',1,'Formula','OfficeOfGrantManagement','555-2222','grant.office@example.com','Nationwide','Community College Students','GraduationRateIncrease',0.1,'All','Active');
INSERT INTO federal_grant_allocation_summary VALUES ('FG003','HealthDept','Rural_Health_Improvement',2022,95000000,190,500000,150000,1200000,'Health','Rural Clinics','Cooperative Agreement','2022-03-15','2027-03-14','Semiannual',1,'Competitive','OfficeOfGrantManagement','555-3333','grant.office@example.com','Rural','Rural Residents','HealthOutcomeImprovement',0.2,'All','Active');

-- Public transport network usage table
CREATE TABLE public_transport_network_usage
(
    RouteID                 TEXT PRIMARY KEY,
    AgencyName              TEXT,
    ServiceType             TEXT,
    StartLocation           TEXT,
    EndLocation             TEXT,
    AverageDailyRidership   INTEGER,
    PeakHourRidership       INTEGER,
    VehiclesInService       INTEGER,
    AvgVehicleCapacity      INTEGER,
    OnTimePerformancePct   REAL,
    AvgTravelTimeMinutes    REAL,
    DistanceMiles           REAL,
    FuelType                TEXT,
    EmissionsCO2_tons       REAL,
    AccessibilityCompliance TEXT,
    FareStructure           TEXT,
    YearEstablished         INTEGER,
    LatestUpgradeYear       INTEGER,
    MaintenanceCostAnnual   REAL,
    RevenueAnnual           REAL,
    SubsidyAmountAnnual     REAL,
    ServiceHoursPerDay      REAL,
    WeekendService          TEXT,
    NightService            TEXT,
    SeasonalVariations      TEXT,
    DataSource              TEXT,
    LatitudeStart           REAL,
    LongitudeStart          REAL,
    LatitudeEnd             REAL,
    LongitudeEnd            REAL
);
INSERT INTO public_transport_network_usage VALUES ('RT001','MetroTransit','Bus','Downtown','Uptown',12500,3000,45,50,92.5,25.4,12.5,'Diesel',45.6,'Full','FlatRate','1998',2021,850000,1200000,350000,18.0,'Yes','Yes','WinterHigher','AgencyReport','40.7128','-74.0060','40.7890','-73.9500');
INSERT INTO public_transport_network_usage VALUES ('RT002','CityRail','LightRail','EastSide','WestSide',9800,2500,30,80,88.3,22.1,9.8,'Electric',12.4,'Partial','ZoneBased','2005',2020,600000,950000,200000,20.0,'Yes','No','SummerHigher','AgencyReport','34.0522','-118.2437','34.0400','-118.2700');
INSERT INTO public_transport_network_usage VALUES ('RT003','CountyBus','Bus','NorthTown','SouthTown',7200,2100,38,45,85.0,28.7,15.2,'Hybrid',30.1,'Full','DistanceBased','2010',2019,400000,750000,150000,16.0,'Yes','Yes','None','AgencyReport','41.8781','-87.6298','41.8500','-87.6500');

-- Environmental impact assessment projects table
CREATE TABLE environmental_impact_assessment_projects
(
    ProjectID                TEXT PRIMARY KEY,
    ProjectName              TEXT,
    LeadAgency               TEXT,
    InitiationDate           DATE,
    CompletionDate           DATE,
    Status                   TEXT,
    Region                   TEXT,
    PrimaryFocus             TEXT,
    EstimatedCostUSD         REAL,
    ActualCostUSD            REAL,
    FundingSource            TEXT,
    RegulatoryCompliance     TEXT,
    NumberOfStakeholders     INTEGER,
    PublicConsultationsHeld  INTEGER,
    EnvironmentalRiskScore   REAL,
    MitigationPlanDocument   TEXT,
    MonitoringPlanDocument   TEXT,
    BiodiversityImpact       TEXT,
    WaterQualityImpact       TEXT,
    AirQualityImpact         TEXT,
    SoilContaminationRisk    TEXT,
    ClimateChangeResilience  TEXT,
    CommunityBenefitScore    REAL,
    ProjectManager           TEXT,
    ContactEmail             TEXT,
    ContactPhone             TEXT,
    DataRepositoryLink       TEXT,
    GISLayerReference        TEXT,
    DocumentationVersion     TEXT,
    ReviewCommittee          TEXT
);
INSERT INTO environmental_impact_assessment_projects VALUES ('EIA001','RiverDelta Restoration','EnvAgency','2021-03-01','2023-08-15','Completed','DeltaRegion','Habitat Restoration',2500000,2385000,'State Grant','Compliant',12,5,3.2,'MitigPlan001','MonPlan001','High','Moderate','Low','Low','Medium','85.0','AliceBrown','alice.brown@example.com','555-4444','repo.example.com/eia001','layer001','v1.2','CommitteeA');
INSERT INTO environmental_impact_assessment_projects VALUES ('EIA002','UrbanAir Quality Study','HealthDept','2022-01-15','2024-05-30','InProgress','MetroArea','Air Quality',1500000,800000,'Federal Grant','Pending',8,2,4.5,'MitigPlan002','MonPlan002','None','High','High','Low','Low','Low','70.0','BobClark','bob.clark@example.com','555-5555','repo.example.com/eia002','layer002','v0.9','CommitteeB');
INSERT INTO environmental_impact_assessment_projects VALUES ('EIA003','CoastalErosion Monitoring','CoastGuard','2020-06-20','2025-12-31','Planned','CoastalZone','Erosion Monitoring',3500000,0,'Mixed','Planned',15,0,5.0,'MitigPlan003','MonPlan003','Moderate','Low','None','Low','High','90.0','CarolDavis','carol.davis@example.com','555-6666','repo.example.com/eia003','layer003','v0.1','CommitteeC');

-- Community health statistics table
CREATE TABLE community_health_statistics
(
    CommunityID                TEXT PRIMARY KEY,
    CommunityName              TEXT,
    Year                       INTEGER,
    Population                 INTEGER,
    MedianAge                  REAL,
    PercentFemale              REAL,
    PercentMale                REAL,
    ObesityRatePercent         REAL,
    DiabetesPrevalencePercent  REAL,
    HypertensionPrevalencePercent REAL,
    SmokingRatePercent         REAL,
    AlcoholUseRatePercent      REAL,
    PhysicalInactivityPercent  REAL,
    AverageLifeExpectancyYears REAL,
    InfantMortalityRatePer1000 REAL,
    AccessToPrimaryCarePercent REAL,
    HospitalBedsPer1000        REAL,
    MentalHealthProviderCount INTEGER,
    VaccinationCoveragePercent REAL,
    COVID19_CasesPer1000       REAL,
    COVID19_DeathsPer1000      REAL,
    AirQualityIndexMean        REAL,
    WaterQualityScore          REAL,
    FoodDesertStatus           TEXT,
    AverageIncomeUSD           REAL,
    UnemploymentRatePercent    REAL,
    EducationHSGradRatePercent REAL,
    CrimeRatePer1000           REAL,
    PovertyRatePercent         REAL,
    DataSource                 TEXT
);
INSERT INTO community_health_statistics VALUES ('COM001','Lakeside',2022,45200,38.5,51.2,48.8,29.1,9.4,22.0,15.3,12.5,28.0,78.5,6.2,87.0,2.5,15,92.0,45.3,1.2,45.0,85.0,'No','58000',6.1,88.0,12.5,14.8,'StateHealthDept');
INSERT INTO community_health_statistics VALUES ('COM002','Hillcrest',2022,31200,36.2,49.5,50.5,24.3,7.8,19.5,12.0,10.2,22.5,80.3,5.5,92.0,1.9,10,95.0,30.1,0.8,38.0,90.0,'Yes','47000',5.5,84.0,15.0,11.2,'StateHealthDept');
INSERT INTO community_health_statistics VALUES ('COM003','Riverside',2022,78500,40.1,50.0,50.0,31.7,10.2,24.8,17.6,13.8,31.0,77.0,7.1,80.0,3.1,20,88.0,60.5,2.4,50.0,80.0,'No','63000',7.8,90.0,10.5,13.5,'StateHealthDept');

-- Higher education institution profiles table
CREATE TABLE higher_education_institution_profiles
(
    InstitutionID            TEXT PRIMARY KEY,
    InstitutionName          TEXT,
    InstitutionType          TEXT,
    State                    TEXT,
    City                     TEXT,
    YearEstablished          INTEGER,
    EnrollmentTotal          INTEGER,
    UndergraduateEnrollment  INTEGER,
    GraduateEnrollment       INTEGER,
    FacultyCount             INTEGER,
    StaffCount               INTEGER,
    EndowmentUSD             REAL,
    TuitionInStateUSD        REAL,
    TuitionOutOfStateUSD     REAL,
    AcceptanceRatePercent    REAL,
    GraduationRatePercent    REAL,
    RetentionRateFirstYearPercent REAL,
    ResearchExpenditureUSD    REAL,
    NetRevenueUSD            REAL,
    CampusSizeAcres           REAL,
    LibraryVolumes           INTEGER,
    StudentHousingCapacity   INTEGER,
    AthleticTeamsCount       INTEGER,
    NCAADivision             TEXT,
    OnlineProgramFlag        INTEGER,
    InternationalStudentCount INTEGER,
    PercentStudentsOnFinancialAid REAL,
    AverageClassSize         REAL,
    StudentFacultyRatio      REAL,
    AccreditationAgency      TEXT,
    DataLastUpdated          DATE
);
INSERT INTO higher_education_institution_profiles VALUES ('HEU001','Northwest State University','Public','WA','Evergreen',1890,18200,15000,3200,1300,800,560000000,9500,21500,68.5,71.0,78.0,210000000,120000000,420,750000,4200,18,'DivisionII',1,1200,58.0,25.0,18.5,'RegionalAccreditor','2023-01-15');
INSERT INTO higher_education_institution_profiles VALUES ('HEU002','Metro City College','Private','NY','MetroCity',1955,8200,5500,2700,600,300,180000000,21000,31000,55.0,84.0,85.0,85000000,50000000,120,350000,1800,12,'DivisionIII',0,350,62.0,20.0,15.0,'NationalAccreditor','2023-01-20');
INSERT INTO higher_education_institution_profiles VALUES ('HEU003','Coastal Technical Institute','Public','FL','Baytown',1972,13500,9000,4500,1000,500,340000000,8500,16500,72.0,69.0,73.0,150000000,95000000,250,420000,3200,22,'DivisionI',1,800,55.0,23.0,18.0,'RegionalAccreditor','2023-01-18');

-- Workforce credential statistics table
CREATE TABLE workforce_credential_statistics
(
    CredentialID             TEXT PRIMARY KEY,
    CredentialName           TEXT,
    Category                 TEXT,
    State                    TEXT,
    Year                     INTEGER,
    CertifiedIndividuals     INTEGER,
    ActiveIndividuals        INTEGER,
    AverageSalaryUSD         REAL,
    MedianSalaryUSD          REAL,
    SalaryGrowthRatePercent  REAL,
    JobPlacementRatePercent  REAL,
    AverageHoursToComplete   REAL,
    ExaminationPassRatePercent REAL,
    RenewalRequirementYears INTEGER,
    ContinuingEducationHoursRequired INTEGER,
    NumberOfTrainingProviders INTEGER,
    OnlineDeliveryPercentage REAL,
    EmployerSatisfactionScore REAL,
    CredentialCostUSD        REAL,
    FinancialAidAvailable   INTEGER,
    FundingSource            TEXT,
    WagePremiumPercent       REAL,
    IndustryDemandIndex      REAL,
    RegionalDemandScore      REAL,
    CertificationBody        TEXT,
    DataLastUpdated          DATE,
    SourceReport             TEXT,
    AccreditationLevel       TEXT,
    MinimumEducationRequirement TEXT,
    ExamProvider             TEXT
);
INSERT INTO workforce_credential_statistics VALUES ('CRD001','Certified Data Analyst','IT','CA',2022,5200,4700,78000,75000,4.5,92.0,130,88.0,3,20,45,65.0,4.5,250,1,'StateGrant',15.0,8.2,7.5,'DataCertBoard','2023-02-01','AnnualReport','LevelII','Bachelor','TestingCenterA');
INSERT INTO workforce_credential_statistics VALUES ('CRD002','Licensed Practical Nurse','Healthcare','TX',2022,8600,8300,62000,60000,3.2,95.0,180,90.0,2,30,38,55.0,4.2,180,1,'FederalAid',12.0,7.8,6.9,'HealthCredCouncil','2023-02-02','AnnualReport','LevelI','Associate','TestingCenterB');
INSERT INTO workforce_credential_statistics VALUES ('CRD003','Project Management Professional','Management','NY',2022,4300,4100,105000,102000,5.1,89.0,150,85.0,3,25,52,70.0,4.8,300,0,'CompanySponsored',18.0,9.1,8.3,'PMInstitute','2023-02-03','AnnualReport','LevelIII','Bachelor','TestingCenterC');

-- National research grant awards table
CREATE TABLE national_research_grant_awards
(
    AwardID                 TEXT PRIMARY KEY,
    GrantProgramName        TEXT,
    FundingAgency           TEXT,
    FiscalYear              INTEGER,
    AwardAmountUSD          REAL,
    PrincipalInvestigator   TEXT,
    InstitutionID           TEXT,
    ProjectTitle            TEXT,
    ProjectStartDate        DATE,
    ProjectEndDate          DATE,
    ResearchArea            TEXT,
    AwardStatus             TEXT,
    CoPI_Count              INTEGER,
    TotalPersonnelCount     INTEGER,
    EstimatedFullTimeEquivalent REAL,
    DirectCostUSD           REAL,
    IndirectCostUSD         REAL,
    MatchingFundsRequired   REAL,
    ReportingFrequency     TEXT,
    PublicationTargetCount  INTEGER,
    PatentTargetCount       INTEGER,
    DataManagementPlan      TEXT,
    EthicalApprovalRequired INTEGER,
    ReviewPanelScore        REAL,
    AwardedByCommittee      TEXT,
    GrantNumber             TEXT,
    FundingCategory         TEXT,
    DurationMonths          INTEGER,
    DataRepositoryLink      TEXT,
    LastModifiedDate        DATE
);
INSERT INTO national_research_grant_awards VALUES ('NGA001','Advanced Robotics Initiative','NSF',2022,2500000,'DrAliceMiller','HEU001','NextGen Humanoid Robots','2022-07-01','2025-06-30','Robotics','Active',2,15,12.5,1800000,700000,0.2,'Annual',6,1,'Yes',1,85.5,'PanelA','NSF-AR-2022-001','Science',36,'repo.example.com/nga001','2023-03-01');
INSERT INTO national_research_grant_awards VALUES ('NGA002','Renewable Energy Systems','DOE',2021,3500000,'DrBobNelson','HEU003','Solar Grid Integration','2021-09-15','2025-09-14','Energy','Active',3,20,18.0,2600000,900000,0.25,'Semiannual',8,2,'Yes',1,88.0,'PanelB','DOE-RE-2021-042','Technology',48,'repo.example.com/nga002','2023-03-02');
INSERT INTO national_research_grant_awards VALUES ('NGA003','Public Health Surveillance','NIH',2023,1800000,'DrCarolLee','HEU002','Pandemic Early Warning','2023-01-10','2026-01-09','PublicHealth','Pending',1,10,7.0,1300000,500000,0.15,'Quarterly',5,0,'Yes',1,80.2,'PanelC','NIH-PHS-2023-115','Health',36,'repo.example.com/nga003','2023-03-03');

-- State technology initiatives table
CREATE TABLE state_technology_initiatives
(
    InitiativeID           TEXT PRIMARY KEY,
    StateCode              TEXT,
    InitiativeName         TEXT,
    LaunchYear             INTEGER,
    FundingAllocatedUSD    REAL,
    LeadAgency             TEXT,
    TargetSector           TEXT,
    PrimaryObjective       TEXT,
    ExpectedImpactScore    REAL,
    NumberOfProjects       INTEGER,
    TotalBeneficiaries     INTEGER,
    DigitalInfrastructureType TEXT,
    BroadbandCoveragePct   REAL,
    SmartGridImplementationPct REAL,
    IoTDeviceDeploymentCount INTEGER,
    CybersecurityInvestmentUSD REAL,
    TrainingProgramsCount  INTEGER,
    GrantProgramName       TEXT,
    EligibilityCriteria    TEXT,
    ApplicationDeadline    DATE,
    Status                 TEXT,
    ProjectManager         TEXT,
    ContactEmail           TEXT,
    ContactPhone           TEXT,
    DataPortalLink         TEXT,
    PerformanceMetric      TEXT,
    ReviewCycleMonths      INTEGER,
    LastUpdated            DATE,
    ReportingFrequency    TEXT,
    DataSource             TEXT
);
INSERT INTO state_technology_initiatives VALUES ('STI001','CA','Broadband Expansion Initiative',2020,500000000,'DeptOfTech','RuralCommunities','Increase broadband access',9.2,120,4500000,'FiberOptic',78.5,65.0,150000,20000000,30,'Broadband Grants','Rural ISPs',2023-06-30,'Active','EmilyGreen','emily.green@example.com','555-7777','data.example.com/sti001','CoverageGrowth',12,'2023-02-15','Annual','StateReport');
INSERT INTO state_technology_initiatives VALUES ('STI002','TX','Smart Cities Program',2021,350000000,'DeptOfTech','UrbanAreas','Deploy smart city technologies',8.5,85,3200000,'5G',92.0,80.0,95000,18000000,25,'Smart City Grants','Municipal Governments',2024-03-31,'Planning','MichaelBrown','michael.brown@example.com','555-8888','data.example.com/sti002','EfficiencyImprovement',12,'2023-02-20','Quarterly','StateReport');
INSERT INTO state_technology_initiatives VALUES ('STI003','NY','Cybersecurity Workforce Development',2022,120000000,'DeptOfTech','EducationSector','Train cybersecurity professionals',8.0,45,150000,'Hybrid',85.0,0,0,25000000,40,'Cybersecurity Grants','HigherEd Institutions',2024-12-31,'Active','SamanthaBlue','samantha.blue@example.com','555-9999','data.example.com/sti003','SkillIncrease',12,'2023-02-25','Semiannual','StateReport');

-- Environmental sensor network table
CREATE TABLE environmental_sensor_network
(
    SensorID                TEXT PRIMARY KEY,
    SensorType              TEXT,
    InstallationDate        DATE,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters         REAL,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    FirmwareVersion         TEXT,
    CalibrationDate         DATE,
    MaintenanceIntervalDays INTEGER,
    LastMaintenanceDate     DATE,
    BatteryLifeHours        INTEGER,
    PowerSource             TEXT,
    MeasurementParameter1   TEXT,
    MeasurementParameter2   TEXT,
    MeasurementParameter3   TEXT,
    DataTransmissionMethod  TEXT,
    NetworkID               TEXT,
    DataRetentionPeriodDays INTEGER,
    AlertThresholdHigh      REAL,
    AlertThresholdLow       REAL,
    Status                  TEXT,
    InstallationTeam        TEXT,
    CommissioningEngineer   TEXT,
    CommissioningDate       DATE,
    DataEndpointURL         TEXT,
    SecurityProtocol        TEXT,
    FirmwareUpdateAvailable INTEGER,
    LastUpdateTimestamp     TEXT,
    OperationalSince        DATE,
    DecommissionDate        DATE,
    Notes                   TEXT
);
INSERT INTO environmental_sensor_network VALUES ('SNS001','AirQuality','2022-01-15',40.7128,-74.0060,10,'AirSense','AQ-100','v1.2','2022-06-01',180,'2023-01-10',5000,'Solar','PM2.5','Ozone','NO2','Cellular','NET001',365,35.0,5.0,'Active','TeamAlpha','EngJohn','2022-02-01','http://data.example.com/sns001','TLS1.2',1,'2023-02-28','2022-01-15','',NULL);
INSERT INTO environmental_sensor_network VALUES ('SNS002','WaterQuality','2021-08-20',34.0522,-118.2437,15,'HydroTech','WQ-200','v3.0','2022-01-05',365,'2023-02-01',7200,'Battery','pH','Turbidity','Conductivity','WiFi','NET002',730,8.5,4.0,'Active','TeamBeta','EngLisa','2021-09-15','http://data.example.com/sns002','TLS1.3',0,'2023-03-01','2021-08-20','',NULL);
INSERT INTO environmental_sensor_network VALUES ('SNS003','SoilMoisture','2020-05-10',41.8781,-87.6298,200,'GeoSoil','SM-300','v2.5','2020-12-01',90,'2023-01-20',2400,'Solar','VolumetricWaterContent','Temperature','Salinity','LoRa','NET003',180,45.0,10.0','Inactive','TeamGamma','EngMark','2020-06-01','http://data.example.com/sns003','TLS1.2',1,'2023-02-15','2020-05-10','2023-12-31','Sensor failed calibration');
-- End of script