-- District demographic statistics aggregated at the district level
CREATE TABLE district_demographics (
    DistrictID INTEGER NOT NULL PRIMARY KEY,
    TotalPopulation INTEGER,
    MedianHouseholdIncome INTEGER,
    PovertyRate INTEGER,
    UnemploymentRate INTEGER,
    HighSchoolGradRate INTEGER,
    BachelorDegreeRate INTEGER,
    PopulationUnder18 INTEGER,
    PopulationOver65 INTEGER,
    SingleParentHouseholds INTEGER,
    EnglishLearnerCount INTEGER,
    VeteranCount INTEGER,
    HousingUnits INTEGER,
    OwnerOccupiedUnits INTEGER,
    renterOccupiedUnits INTEGER,
    MedianAge INTEGER,
    FemalePopulation INTEGER,
    MalePopulation INTEGER,
    MedianFamilySize INTEGER,
    BroadbandAccessPercent INTEGER,
    PublicTransitUsePercent INTEGER
);

INSERT INTO district_demographics VALUES (101, 250000, 58000, 12, 5, 88, 35, 60000, 40000, 25000, 15000, 8000, 95000, 60000, 35000, 38, 125000, 125000, 3, 78, 22);
INSERT INTO district_demographics VALUES (102, 180000, 47000, 15, 7, 82, 28, 45000, 30000, 18000, 12000, 5000, 72000, 43000, 29000, 36, 90000, 90000, 2, 68, 25);
INSERT INTO district_demographics VALUES (103, 320000, 62000, 10, 4, 90, 40, 75000, 50000, 27000, 14000, 9500, 115000, 72000, 43000, 39, 160000, 160000, 4, 82, 19);

-- County economic indicators
CREATE TABLE county_economic_indicators (
    CountyCode TEXT NOT NULL PRIMARY KEY,
    GrossDomesticProduct INTEGER,
    PerCapitaGDP INTEGER,
    ManufacturingEmployment INTEGER,
    ServiceEmployment INTEGER,
    AgriculturalEmployment INTEGER,
    ConstructionEmployment INTEGER,
    UnemploymentClaims INTEGER,
    NewBusinessLicenses INTEGER,
    BusinessClosures INTEGER,
    MedianPropertyValue INTEGER,
    AvgCommuteTime INTEGER,
    VehicleOwnershipRate INTEGER,
    RetailSalesVolume INTEGER,
    TourismRevenue INTEGER,
    EnergyConsumptionMWh INTEGER,
    CarbonEmissionsTons INTEGER,
    AvgHouseholdSize INTEGER,
    PovertyPopulation INTEGER,
    EducationExpenditure INTEGER,
    HealthExpenditure INTEGER,
    InfrastructureSpending INTEGER
);

INSERT INTO county_economic_indicators VALUES ('C001', 4500000000, 45000, 12000, 55000, 8000, 6000, 3000, 1500, 700, 210000, 28, 2, 1200000, 250000, 800000, 50000, 2, 30000, 5000000, 2000000, 1500000);
INSERT INTO county_economic_indicators VALUES ('C002', 3200000000, 41000, 9000, 42000, 6000, 5000, 2500, 1300, 600, 180000, 30, 2, 950000, 180000, 650000, 42000, 2, 25000, 4000000, 1500000, 1200000);
INSERT INTO county_economic_indicators VALUES ('C003', 6100000000, 52000, 15000, 72000, 9000, 8000, 3500, 1700, 800, 260000, 27, 2, 1400000, 300000, 950000, 62000, 3, 35000, 6200000, 2500000, 1800000);

-- School facility utilization statistics
CREATE TABLE school_facility_utilization_stats (
    FacilityID INTEGER NOT NULL PRIMARY KEY,
    SchoolCode TEXT,
    ClassroomCount INTEGER,
    OccupiedClassrooms INTEGER,
    LabCount INTEGER,
    OccupiedLabs INTEGER,
    GymnasiumCount INTEGER,
    OccupiedGymnasiums INTEGER,
    AuditoriumCount INTEGER,
    OccupiedAuditoriums INTEGER,
    SportsFieldCount INTEGER,
    OccupiedSportsFields INTEGER,
    LibrarySeatCapacity INTEGER,
    LibrarySeatsOccupied INTEGER,
    CafeteriaSeatCapacity INTEGER,
    CafeteriaSeatsOccupied INTEGER,
    ParkingSpaces INTEGER,
    ParkingSpacesOccupied INTEGER,
    AverageDailyOccupancyRate INTEGER,
    MaintenanceRequestsOpen INTEGER,
    MaintenanceRequestsClosed INTEGER,
    EnergyUsageKWh INTEGER
);

INSERT INTO school_facility_utilization_stats VALUES (201, 'S001', 45, 38, 5, 4, 2, 2, 1, 1, 3, 2, 300, 250, 400, 350, 120, 100, 85, 12, 30, 75000);
INSERT INTO school_facility_utilization_stats VALUES (202, 'S002', 30, 27, 3, 3, 1, 1, 1, 0, 2, 2, 200, 180, 250, 220, 80, 70, 78, 8, 20, 56000);
INSERT INTO school_facility_utilization_stats VALUES (203, 'S003', 60, 55, 7, 6, 3, 3, 2, 2, 4, 4, 350, 320, 500, 460, 150, 130, 90, 15, 45, 89000);

-- Regional transportation statistics
CREATE TABLE regional_transportation_stats (
    RegionID INTEGER NOT NULL PRIMARY KEY,
    TotalRoadMiles INTEGER,
    HighwayMiles INTEGER,
    BridgeCount INTEGER,
    AverageDailyTraffic INTEGER,
    PublicTransitRidership INTEGER,
    BikeLaneMiles INTEGER,
    PedestrianWalkwaysMiles INTEGER,
    TrafficAccidents INTEGER,
    FatalAccidents INTEGER,
    AverageCommuteTime INTEGER,
    FuelConsumptionGallons INTEGER,
    CO2EmissionsTons INTEGER,
    TransitVehicleCount INTEGER,
    TransitVehicleMileage INTEGER,
    RoadMaintenanceBudget INTEGER,
    BridgeInspectionScore INTEGER,
    BikeShareStations INTEGER,
    ElectricVehicleChargingPoints INTEGER,
    AverageVehicleAge INTEGER,
    RoadConditionIndex INTEGER,
    TransitOnTimePerformance INTEGER
);

INSERT INTO regional_transportation_stats VALUES (301, 12000, 3500, 480, 1800000, 250000, 150, 200, 3200, 30, 28, 900000, 21000, 1200, 500000, 8000000, 88, 45, 80, 12, 75, 92);
INSERT INTO regional_transportation_stats VALUES (302, 9500, 2800, 350, 1400000, 190000, 120, 150, 2500, 20, 27, 720000, 17000, 950, 380000, 6000000, 85, 30, 55, 9, 78, 88);
INSERT INTO regional_transportation_stats VALUES (303, 13500, 4200, 560, 2100000, 300000, 180, 250, 4100, 40, 30, 1050000, 25000, 1400, 620000, 9500000, 90, 60, 95, 14, 72, 95);

-- Extended community health metrics
CREATE TABLE community_health_metrics_extended (
    CommunityID INTEGER NOT NULL PRIMARY KEY,
    Population INTEGER,
    PrimaryCarePhysicians INTEGER,
    HospitalBeds INTEGER,
    AvgLifeExpectancy INTEGER,
    InfantMortalityRate INTEGER,
    ObesityRate INTEGER,
    DiabetesPrevalence INTEGER,
    SmokingPrevalence INTEGER,
    PhysicalInactivityRate INTEGER,
    MentalHealthProviderCount INTEGER,
    SubstanceAbuseRate INTEGER,
    VaccinationCoveragePercent INTEGER,
    EmergencyResponseTimeMinutes INTEGER,
    AirQualityIndex INTEGER,
    WaterQualityScore INTEGER,
    NoisePollutionLevel INTEGER,
    CrimeRatePer1000 INTEGER,
    AverageAnnualHealthcareCost INTEGER,
    HealthInsuranceCoveragePercent INTEGER,
    AverageBMI INTEGER,
    PublicHealthFunding INTEGER,
    HealthEducationProgramCount INTEGER,
    CommunityFitnessCenterCount INTEGER
);

INSERT INTO community_health_metrics_extended VALUES (401, 85000, 45, 120, 78, 5, 22, 9, 15, 30, 20, 8, 92, 7, 45, 88, 3, 15, 3400, 85, 27, 1500000, 12, 5);
INSERT INTO community_health_metrics_extended VALUES (402, 62000, 30, 80, 76, 6, 25, 11, 18, 35, 15, 10, 89, 9, 52, 90, 4, 20, 4100, 80, 29, 1200000, 9, 3);
INSERT INTO community_health_metrics_extended VALUES (403, 102000, 60, 150, 79, 4, 20, 8, 12, 28, 25, 7, 95, 6, 38, 92, 2, 12, 3100, 88, 26, 1800000, 15, 7);

-- Environmental quality assessments
CREATE TABLE environmental_quality_assessments (
    AssessmentID INTEGER NOT NULL PRIMARY KEY,
    SiteCode TEXT,
    AirQualityScore INTEGER,
    WaterQualityScore INTEGER,
    SoilContaminationLevel INTEGER,
    NoiseLevelDecibels INTEGER,
    LightPollutionIndex INTEGER,
    BiodiversityIndex INTEGER,
    GreenSpacePercent INTEGER,
    WasteRecyclingRate INTEGER,
    HazardousWasteIncidents INTEGER,
    RenewableEnergyPercent INTEGER,
    AvgAnnualTemperatureC INTEGER,
    RainfallMM INTEGER,
    FloodRiskLevel INTEGER,
    DroughtRiskLevel INTEGER,
    HeatIslandEffectScore INTEGER,
    CarbonFootprintTons INTEGER,
    ConservationProjectCount INTEGER,
    EnvironmentalComplianceScore INTEGER,
    InspectionPassRate INTEGER,
    AirEmissionViolations INTEGER,
    WaterDischargeViolations INTEGER,
    SoilRemediationCost INTEGER
);

INSERT INTO environmental_quality_assessments VALUES (501, 'E001', 78, 84, 12, 55, 22, 68, 30, 45, 2, 15, 12, 900, 3, 2, 40, 25000, 8, 92, 98, 1, 0, 50000);
INSERT INTO environmental_quality_assessments VALUES (502, 'E002', 70, 78, 18, 60, 25, 60, 25, 38, 4, 12, 14, 850, 4, 3, 45, 30000, 5, 85, 95, 2, 1, 75000);
INSERT INTO environmental_quality_assessments VALUES (503, 'E003', 82, 88, 9, 52, 20, 72, 35, 50, 1, 18, 13, 950, 2, 1, 38, 22000, 10, 96, 99, 0, 0, 40000);

-- Technology adoption metrics at schools
CREATE TABLE technology_adoption_metrics (
    SchoolTechID INTEGER NOT NULL PRIMARY KEY,
    SchoolCode TEXT,
    TotalComputers INTEGER,
    LaptopsPerStudent INTEGER,
    TabletsPerStudent INTEGER,
    InteractiveWhiteboards INTEGER,
    ClassroomChromebooks INTEGER,
    WiFiAccessPoints INTEGER,
    AvgInternetSpeedMbps INTEGER,
    CloudServiceSubscriptions INTEGER,
    LMSUserCount INTEGER,
    MobileDeviceManagementCount INTEGER,
    CyberSecurityIncidents INTEGER,
    AvgTechSupportTicketsPerMonth INTEGER,
    TeacherTechTrainingHours INTEGER,
    StudentTechTrainingHours INTEGER,
    3DPricinters INTEGER,
    VRLabStations INTEGER,
    EdTechBudgetUSD INTEGER,
    PercentageDevicesUpToDate INTEGER,
    AverageDeviceAgeMonths INTEGER,
    SoftwareLicenseCount INTEGER,
    OpenSourceToolUsagePercent INTEGER,
    DigitalContentHoursConsumed INTEGER
);

INSERT INTO technology_adoption_metrics VALUES (601, 'S001', 1200, 1, 1, 4, 250, 45, 150, 12, 800, 300, 2, 15, 40, 30, 5, 2, 250000, 85, 24, 500, 20, 1200);
INSERT INTO technology_adoption_metrics VALUES (602, 'S002', 800, 0, 1, 2, 180, 35, 120, 8, 600, 200, 1, 10, 35, 25, 3, 1, 180000, 80, 30, 350, 15, 900);
INSERT INTO technology_adoption_metrics VALUES (603, 'S003', 1500, 2, 1, 5, 320, 60, 200, 15, 950, 400, 3, 20, 45, 35, 7, 3, 300000, 90, 18, 650, 25, 1500);

-- Alumni outcome statistics
CREATE TABLE alumni_outcome_statistics (
    AlumniStatID INTEGER NOT NULL PRIMARY KEY,
    SchoolCode TEXT,
    GraduationYear INTEGER,
    AlumniCount INTEGER,
    EmploymentRate INTEGER,
    MedianStartingSalary INTEGER,
    GraduateSchoolEnrollment INTEGER,
    ProfessionalCertificationCount INTEGER,
    EntrepreneurshipRate INTEGER,
    AverageYearsExperience INTEGER,
    IndustryTechPercent INTEGER,
    IndustryHealthcarePercent INTEGER,
    IndustryFinancePercent INTEGER,
    IndustryEducationPercent INTEGER,
    IndustryPublicSectorPercent INTEGER,
    UnemploymentRate INTEGER,
    AlumniDonationsUSD INTEGER,
    AlumniMentorCount INTEGER,
    AlumniVolunteerHours INTEGER,
    AlumniSurveyResponseRate INTEGER,
    AvgAlumniSatisfactionScore INTEGER,
    GeographicMobilityScore INTEGER,
    InternationalAlumniCount INTEGER,
    AlumniRetentionInStatePercent INTEGER
);

INSERT INTO alumni_outcome_statistics VALUES (701, 'S001', 2020, 450, 92, 48000, 60, 30, 12, 3, 35, 20, 15, 10, 5, 5, 250000, 40, 1500, 45, 88, 70, 15, 55);
INSERT INTO alumni_outcome_statistics VALUES (702, 'S002', 2020, 320, 88, 42000, 45, 20, 8, 4, 30, 25, 10, 12, 8, 6, 180000, 30, 1200, 40, 82, 65, 10, 48);
INSERT INTO alumni_outcome_statistics VALUES (703, 'S003', 2020, 520, 94, 53000, 80, 40, 15, 2, 38, 18, 12, 9, 7, 4, 300000, 55, 1800, 50, 90, 75, 20, 60);

-- School financial audit summary
CREATE TABLE school_financial_audit_summary (
    AuditID INTEGER NOT NULL PRIMARY KEY,
    SchoolCode TEXT,
    FiscalYear TEXT,
    TotalRevenueUSD INTEGER,
    TotalExpendituresUSD INTEGER,
    NetOperatingBalanceUSD INTEGER,
    FederalFundingUSD INTEGER,
    StateFundingUSD INTEGER,
    LocalFundingUSD INTEGER,
    GrantFundingUSD INTEGER,
    CapitalImprovementSpendingUSD INTEGER,
    MaintenanceSpendingUSD INTEGER,
    SalaryAndBenefitsUSD INTEGER,
    InstructionalSpendingUSD INTEGER,
    TransportationSpendingUSD INTEGER,
    TechnologySpendingUSD INTEGER,
    DebtServiceUSD INTEGER,
    AuditFindingCount INTEGER,
    UnadjustedFindingSeverityScore INTEGER,
    AdjustedFindingSeverityScore INTEGER,
    RecommendationsImplemented INTEGER,
    ComplianceScore INTEGER,
    FinancialRiskRating INTEGER,
    AuditorName TEXT,
    AuditDate DATE
);

INSERT INTO school_financial_audit_summary VALUES (801, 'S001', '2022', 12500000, 11900000, 600000, 2500000, 3000000, 2000000, 1500000, 800000, 600000, 5500000, 3000000, 500000, 400000, 200000, 3, 15, 10, 2, 92, 2, 'AuditCorp', '2023-03-15');
INSERT INTO school_financial_audit_summary VALUES (802, 'S002', '2022', 9500000, 9100000, 400000, 1800000, 2200000, 1500000, 1000000, 600000, 450000, 4200000, 2300000, 400000, 300000, 150000, 2, 12, 8, 1, 88, 3, 'FinCheck', '2023-04-20');
INSERT INTO school_financial_audit_summary VALUES (803, 'S003', '2022', 13800000, 13200000, 600000, 3000000, 3500000, 2500000, 1800000, 900000, 700000, 6200000, 3500000, 550000, 450000, 250000, 4, 18, 12, 3, 95, 1, 'AuditPlus', '2023-05-10');

-- Student wellness surveys
CREATE TABLE student_wellness_surveys (
    SurveyID INTEGER NOT NULL PRIMARY KEY,
    SchoolCode TEXT,
    SurveyYear INTEGER,
    RespondentCount INTEGER,
    AvgPhysicalActivityDaysPerWeek INTEGER,
    AvgSleepHoursPerNight INTEGER,
    StressLevelScore INTEGER,
    AnxietyLevelScore INTEGER,
    DepressionLevelScore INTEGER,
    BullyingIncidentsReported INTEGER,
    NutritionScore INTEGER,
    SubstanceUseScore INTEGER,
    ScreenTimeHoursPerDay INTEGER,
    SocialConnectednessScore INTEGER,
    AccessToCounselingPercent INTEGER,
    ParticipationInSportsPercent INTEGER,
    ParticipationInClubsPercent INTEGER,
    OverallWellBeingScore INTEGER,
    ParentInvolvementScore INTEGER,
    TeacherSupportScore INTEGER,
    SchoolClimateScore INTEGER,
    MentalHealthResourcesScore INTEGER,
    PhysicalHealthResourcesScore INTEGER,
    SurveyCompletionRatePercent INTEGER,
    CommentsSummary TEXT
);

INSERT INTO student_wellness_surveys VALUES (901, 'S001', 2022, 800, 4, 7, 30, 25, 20, 15, 78, 10, 3, 70, 85, 60, 55, 68, 75, 80, 82, 90, 88, 92, 'Positive overall');
INSERT INTO student_wellness_surveys VALUES (902, 'S002', 2022, 620, 3, 6, 35, 30, 25, 20, 72, 12, 4, 65, 78, 55, 50, 60, 70, 73, 68, 85, 80, 85, 'Some concerns about stress');
INSERT INTO student_wellness_surveys VALUES (903, 'S003', 2022, 950, 5, 8, 28, 22, 18, 10, 80, 8, 2, 75, 88, 70, 65, 73, 78, 85, 88, 92, 90, 95, 'Excellent wellness indicators');