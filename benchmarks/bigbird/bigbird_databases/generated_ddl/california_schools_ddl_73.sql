-- District financial overview aligned with district-level budgeting
CREATE TABLE district_financial_overview
(
    DistrictCode TEXT PRIMARY KEY,
    FiscalYear INTEGER,
    TotalRevenue REAL,
    LocalFunding REAL,
    StateFunding REAL,
    FederalFunding REAL,
    GrantsReceived REAL,
    ExpendituresPersonnel REAL,
    ExpendituresOperations REAL,
    ExpendituresCapital REAL,
    DebtService REAL,
    UnrestrictedFundBalance REAL,
    RestrictedFundBalance REAL,
    PerPupilSpending REAL,
    RevenuePerStudent REAL,
    ExpenditurePerStudent REAL,
    NumberOfSchools INTEGER,
    NumberOfStudents INTEGER,
    AuditStatus TEXT,
    AuditDate DATE,
    Notes TEXT
);

INSERT INTO district_financial_overview
VALUES ('D001',2023,125000000,50000000,40000000,20000000,5000000,60000000,20000000,25000000,5000000,15000000,8000000,10000,9000,8000,45,12000,'Complete','2023-07-15','Annual audit completed');

INSERT INTO district_financial_overview
VALUES ('D002',2023,98000000,35000000,30000000,15000000,3000000,45000000,18000000,20000000,4000000,12000000,6000000,9500,8700,8200,38,9500,'Pending','2023-08-01','Audit pending final signoff');

INSERT INTO district_financial_overview
VALUES ('D003',2023,147500000,60000000,50000000,25000000,7000000,75000000,25000000,30000000,6000000,20000000,9000000,10500,9500,8500,52,13500,'Complete','2023-07-20','Reconciled with state reports');

-- Community health index providing aggregate health metrics per community
CREATE TABLE community_health_index
(
    CommunityID TEXT PRIMARY KEY,
    Year INTEGER,
    AvgLifeExpectancy REAL,
    InfantMortalityRate REAL,
    ObesityRate REAL,
    DiabetesPrevalence REAL,
    SmokingPrevalence REAL,
    PhysicalActivityRate REAL,
    AccessToCareScore REAL,
    MentalHealthProviderRatio REAL,
    DentalProviderRatio REAL,
    VaccinationCoverage REAL,
    AirQualityIndex REAL,
    WaterQualityScore REAL,
    MedianHouseholdIncome REAL,
    UnemploymentRate REAL,
    EducationLevelScore REAL,
    CrimeRatePer1000 REAL,
    HousingStabilityScore REAL,
    HealthyFoodAccessScore REAL,
    OverallHealthIndex REAL
);

INSERT INTO community_health_index
VALUES ('C100',2022,78.5,5.2,30.1,9.8,15.3,65.0,82.0,1.2,0.9,92.5,42.0,88.0,62000,4.5,78.0,12.3,85.0,70.0,80.1);

INSERT INTO community_health_index
VALUES ('C101',2022,77.2,6.1,32.5,10.5,16.8,60.0,78.5,1.0,0.8,89.0,48.0,84.5,54000,5.2,74.0,14.0,78.5,68.5,76.4);

INSERT INTO community_health_index
VALUES ('C102',2022,79.1,4.8,29.0,8.7,13.9,68.5,85.0,1.3,1.0,94.2,39.0,90.5,71000,3.9,81.0,11.0,87.0,73.5,82.7);

-- Regional transportation infrastructure statistics
CREATE TABLE regional_transportation_infrastructure_stats
(
    RegionCode TEXT PRIMARY KEY,
    Year INTEGER,
    TotalRoadMiles REAL,
    HighwayMiles REAL,
    BridgeCount INTEGER,
    BridgeConditionScore REAL,
    PublicTransitRidership REAL,
    BusRoutes INTEGER,
    LightRailStations INTEGER,
    BikeLaneMiles REAL,
    PedestrianWalkwayMiles REAL,
    AvgCommuteTime REAL,
    TrafficCongestionIndex REAL,
    RoadMaintenanceSpending REAL,
    TransitFunding REAL,
    FuelConsumptionMillionGallons REAL,
    CO2EmissionsTonnes REAL,
    AccidentCount INTEGER,
    FatalAccidents INTEGER,
    SafetyImprovementScore REAL,
    ProjectsUnderConstruction INTEGER
);

INSERT INTO regional_transportation_infrastructure_stats
VALUES ('R01',2023,12500.5,2200.3,340,78.5,5.2,180,12,350.7,420.9,28.5,62.3,12.5,8.1,45000.0,96000.0,1240,22,85.0,5);

INSERT INTO regional_transportation_infrastructure_stats
VALUES ('R02',2023,8600.2,1500.0,210,81.0,3.8,120,8,210.4,260.2,27.1,55.7,9.8,6.4,31000.0,68000.0,950,18,82.5,3);

INSERT INTO regional_transportation_infrastructure_stats
VALUES ('R03',2023,15200.8,3000.6,410,74.2,6.5,210,15,470.9,590.1,30.2,70.1,15.0,10.2,52000.0,112000.0,1380,27,88.0,7);

-- Environmental quality report for regions
CREATE TABLE environmental_quality_report
(
    ReportID TEXT PRIMARY KEY,
    ReportDate DATE,
    RegionCode TEXT,
    AirPM25 REAL,
    AirOzone REAL,
    WaterPH REAL,
    WaterContaminantLevel REAL,
    SoilLeadLevel REAL,
    NoiseLevelDBA REAL,
    GreenSpacePercent REAL,
    TreeCanopyPercent REAL,
    RenewableEnergyCapacityMW REAL,
    WasteRecycledTons REAL,
    HazardousWasteTons REAL,
    ClimateRiskScore REAL,
    FloodRiskScore REAL,
    DroughtRiskScore REAL,
    BiodiversityIndex REAL,
    EnvironmentalJusticeScore REAL,
    RecommendationsSummary TEXT,
    PreparedBy TEXT
);

INSERT INTO environmental_quality_report
VALUES ('ER001','2023-06-15','R01',12.5,0.045,7.2,0.03,15,68,22.5,35.0,120.5,5000,120,45,30,25,0.78,0.62,'Increase tree planting, upgrade water treatment','EnvDept');

INSERT INTO environmental_quality_report
VALUES ('ER002','2023-06-20','R02',10.8,0.038,7.0,0.025,12,62,25.0,38.5,85.0,3400,90,40,28,22,0.81,0.58,'Implement noise barriers, expand renewable projects','EnvAgency');

INSERT INTO environmental_quality_report
VALUES ('ER003','2023-06-18','R03',14.2,0.052,6.9,0.035,18,71,20.0,33.0,140.2,6200,150,48,35,27,0.74,0.65,'Reduce industrial emissions, improve flood defenses','EcoCommission');

-- District staffing profile tracking personnel composition
CREATE TABLE district_staffing_profile
(
    DistrictID TEXT PRIMARY KEY,
    Year INTEGER,
    TotalStaff INTEGER,
    Teachers INTEGER,
    Administrators INTEGER,
    SupportStaff INTEGER,
    SubstituteTeachers INTEGER,
    TeacherStudentRatio REAL,
    AdministratorStudentRatio REAL,
    AverageTeacherExperienceYears REAL,
    AverageTeacherSalary REAL,
    AverageAdministratorSalary REAL,
    StaffTurnoverRate REAL,
    FullTimeEquivalentStaff REAL,
    ProfessionalDevelopmentHoursPerStaff REAL,
    CertificationsHeld INTEGER,
    LanguagesSpoken INTEGER,
    SpecialEdStaff INTEGER,
    ESLStaff INTEGER,
    HealthStaff INTEGER,
    Counselors INTEGER
);

INSERT INTO district_staffing_profile
VALUES ('D001',2023,3000,1800,250,800,150,15.5,1.2,8.3,62000,95000,7.5,2950,20,320,45,120,80,30,25);

INSERT INTO district_staffing_profile
VALUES ('D002',2023,2400,1500,200,600,130,14.8,1.1,9.0,61000,94000,6.8,2350,18,280,38,95,70,28,22);

INSERT INTO district_staffing_profile
VALUES ('D003',2023,3550,2100,300,950,170,16.2,1.3,7.9,63000,97000,8.1,3400,22,350,52,130,85,35,30);

-- School building renovation projects
CREATE TABLE school_building_renovation_projects
(
    ProjectID TEXT PRIMARY KEY,
    SchoolID TEXT,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    Budget REAL,
    FundingSource TEXT,
    Contractor TEXT,
    SquareFootage REAL,
    FloorsRenovated INTEGER,
    ClassroomsRenovated INTEGER,
    LabsRenovated INTEGER,
    GymnasiumRenovated INTEGER,
    HVACUpgrade INTEGER,
    RoofReplacement INTEGER,
    AccessibilityImprovement INTEGER,
    EnergyEfficiencyRating REAL,
    ProjectStatus TEXT,
    InspectionDate DATE,
    FinalReportLink TEXT,
    Notes TEXT
);

INSERT INTO school_building_renovation_projects
VALUES ('P1001','S001','Science Wing Expansion','2022-09-01','2023-06-15',2500000,'Bond','BuildCo','15000',2,12,5,0,1,0,1,8.5,'Completed','2023-06-20','http://example.com/reports/p1001','Phase I completed');

INSERT INTO school_building_renovation_projects
VALUES ('P1002','S002','Gymnasium Modernization','2023-01-10','2023-12-05',1800000,'Grant','AceBuilders','12000',1,0,0,1,1,1,1,9.0,'InProgress','2023-11-30','http://example.com/reports/p1002','Roof and HVAC upgraded');

INSERT INTO school_building_renovation_projects
VALUES ('P1003','S003','Main Building Accessibility Upgrade','2022-05-20','2023-04-30',950000,'StateFund','UniversalConstruct','8000',1,0,0,0,0,0,1,7.8,'Completed','2023-05-05','http://example.com/reports/p1003','Added ramps and elevators');

-- District technology investment portfolio
CREATE TABLE district_technology_investment_portfolio
(
    InvestmentID TEXT PRIMARY KEY,
    DistrictID TEXT,
    FiscalYear INTEGER,
    Category TEXT,
    Subcategory TEXT,
    AmountInvested REAL,
    Vendor TEXT,
    ContractStartDate DATE,
    ContractEndDate DATE,
    LicenseCount INTEGER,
    DevicesPurchased INTEGER,
    InfrastructureUpgrade INTEGER,
    CloudServiceSubscription INTEGER,
    ProfessionalDevelopmentHours REAL,
    ExpectedLifetimeYears INTEGER,
    ROIProjected REAL,
    FundingSource TEXT,
    ApprovalStatus TEXT,
    Comments TEXT,
    LastUpdated DATE
);

INSERT INTO district_technology_investment_portfolio
VALUES ('TI001','D001',2023,'Hardware','Laptops',1200000,'TechMart','2023-02-01','2026-01-31',2500,2500,1,0,30,4,1.8,'Bond','Approved','Standard refresh cycle','2023-03-15');

INSERT INTO district_technology_investment_portfolio
VALUES ('TI002','D002',2023,'Software','Student Information System',850000,'EduSoft','2023-01-15','2025-12-31',0,0,0,1,45,5,2.1,'Grant','Pending','Awaiting board signoff','2023-02-20');

INSERT INTO district_technology_investment_portfolio
VALUES ('TI003','D003',2023,'Infrastructure','Network Upgrade',600000,'NetBuilders','2023-03-10','2024-12-31',0,0,1,0,20,3,1.5,'Bond','Approved','Fiber backbone installation','2023-04-01');

-- Community arts participation metrics
CREATE TABLE community_arts_participation
(
    CommunityID TEXT PRIMARY KEY,
    Year INTEGER,
    Population INTEGER,
    NumberOfArtsEvents INTEGER,
    TotalAttendance INTEGER,
    PerCapitaArtsAttendance REAL,
    NumberOfArtists INTEGER,
    ArtGalleries INTEGER,
    PublicArtInstallations INTEGER,
    ArtsFundingUSD REAL,
    GrantsReceivedUSD REAL,
    VolunteerHours INTEGER,
    ArtsEducationPrograms INTEGER,
    SchoolArtsPrograms INTEGER,
    CommunityArtsCenterExists INTEGER,
    ArtsOrganizationCount INTEGER,
    CreativeEconomyGDP REAL,
    SurveyResponseRate REAL,
    HighlightedArtist TEXT,
    Notes TEXT
);

INSERT INTO community_arts_participation
VALUES ('C100',2022,85000,320,45000,0.53,1200,45,78,2100000,350000,5000,85,30,1,60,12.5,0.78,'Jane Doe','Strong local mural program');

INSERT INTO community_arts_participation
VALUES ('C101',2022,62000,210,29000,0.47,800,30,55,1500000,240000,3200,60,22,1,45,9.2,0.71,'John Smith','Annual jazz festival expanded');

INSERT INTO community_arts_participation
VALUES ('C102',2022,104000,410,62000,0.60,1500,60,92,2800000,500000,7200,110,38,1,78,15.8,0.84,'Maria Lee','Community theater renovation completed');

-- District emergency resource inventory
CREATE TABLE district_emergency_resource_inventory
(
    InventoryID TEXT PRIMARY KEY,
    DistrictID TEXT,
    ResourceType TEXT,
    ItemDescription TEXT,
    Quantity INTEGER,
    Unit TEXT,
    StorageLocation TEXT,
    ExpirationDate DATE,
    LastInspectionDate DATE,
    ConditionScore REAL,
    Supplier TEXT,
    ContactPerson TEXT,
    Phone TEXT,
    Email TEXT,
    ReorderLevel INTEGER,
    ReorderQuantity INTEGER,
    FundingSource TEXT,
    Status TEXT,
    Comments TEXT,
    LastUpdated DATE
);

INSERT INTO district_emergency_resource_inventory
VALUES ('ERIN001','D001','Medical','First Aid Kits',250,'kits','Central Warehouse','2025-12-31','2023-05-10',9.2,'MediSupply','Alice Green','555-0123','alice@goods.com',50,100,'Grant','Available','All packs stocked','2023-06-01');

INSERT INTO district_emergency_resource_inventory
VALUES ('ERIN002','D002','Food','Non-Perishable Meals',1500,'units','East Depot','2026-06-30','2023-04-22',8.8,'FoodCo','Bob White','555-0456','bob@foodco.com',200,400,'Bond','Available','Rotation schedule in place','2023-06-03');

INSERT INTO district_emergency_resource_inventory
VALUES ('ERIN003','D003','Equipment','Portable Generators',35,'units','West Facility','2028-01-15','2023-03-18',9.5,'PowerGear','Carol Black','555-0789','carol@powergear.com',5,10,'StateFund','Available','Annual maintenance completed','2023-06-05');

-- Statewide student attendance summary
CREATE TABLE statewide_student_attendance_summary
(
    SummaryID TEXT PRIMARY KEY,
    State TEXT,
    AcademicYear TEXT,
    TotalStudents INTEGER,
    AverageAttendanceRate REAL,
    ChronicAbsenteeismRate REAL,
    ExcusedAbsencesPerStudent REAL,
    UnexcusedAbsencesPerStudent REAL,
    AttendanceRateByGradeK12 REAL,
    AttendanceRateByGrade9_12 REAL,
    AttendanceRateByRaceWhite REAL,
    AttendanceRateByRaceBlack REAL,
    AttendanceRateByRaceHispanic REAL,
    AttendanceRateByRaceAsian REAL,
    AttendanceRateBySpecialEd REAL,
    AttendanceRateByELD REAL,
    AttendanceImprovementTrend REAL,
    FundingImpactScore REAL,
    PolicyChanges TEXT,
    DataSource TEXT,
    ReportGeneratedDate DATE
);

INSERT INTO statewide_student_attendance_summary
VALUES ('SS001','TX','2022-2023',4523000,92.5,5.2,4.1,1.7,93.0,91.2,94.5,89.0,90.8,95.3,88.5,92.0,0.4,1.2,'Extended school year','StateDept','2023-07-01');

INSERT INTO statewide_student_attendance_summary
VALUES ('SS002','CA','2022-2023',6254000,90.8,6.1,5.0,2.2,91.5,89.7,92.0,86.5,88.2,93.8,85.0,88.5,-0.1,1.0,'Attendance incentive program','StateDept','2023-07-02');

INSERT INTO statewide_student_attendance_summary
VALUES ('SS003','NY','2022-2023',3178000,93.2,4.5,3.6,1.4,94.0,92.5,95.0,90.2,91.5,96.0,89.8,93.0,0.6,1.3,'Revised absence reporting','StateDept','2023-07-03');