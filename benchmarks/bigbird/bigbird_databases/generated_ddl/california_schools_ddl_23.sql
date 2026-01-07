-- District Infrastructure Projects Detail
CREATE TABLE district_infrastructure_projects_detail (
    ProjectID TEXT PRIMARY KEY,
    ProjectName TEXT,
    ProjectType TEXT,
    FundingSource TEXT,
    EstimatedCost REAL,
    ActualCost REAL,
    StartDate DATE,
    ProjectedEndDate DATE,
    ActualEndDate DATE,
    Status TEXT,
    County TEXT,
    District TEXT,
    ContractorName TEXT,
    ContractNumber TEXT,
    Phase TEXT,
    MilestoneCount INTEGER,
    RiskLevel TEXT,
    EnvironmentalReview TEXT,
    PublicComments INTEGER,
    CreatedBy TEXT,
    CreatedDate DATE,
    LastUpdatedBy TEXT,
    LastUpdateDate DATE
);

INSERT INTO district_infrastructure_projects_detail VALUES
('DP001','MainStreetRehab','Roadway','StateGrant',2500000.00,2400000.00,'2022-01-15','2024-12-31','2024-11-20','Completed','RiverCounty','DistrictA','BuildCorp','C12345','Construction',5,'Medium','Approved',124,'PlannerMike','2022-01-10','DirectorAnna','2024-11-25');

INSERT INTO district_infrastructure_projects_detail VALUES
('DP002','RiverBridgeUpgrade','Bridge','FederalFunds',1800000.00,0.00,'2023-06-01','2025-06-01',NULL,'InProgress','LakeCounty','DistrictB','BridgeMakers','B67890','Design',3,'High','Pending',58,'EngineerSam','2023-05-20','SupervisorLee','2023-06-15');

INSERT INTO district_infrastructure_projects_detail VALUES
('DP003','SolarPanelInstallation','Renewable','LocalBond',950000.00,950000.00,'2021-09-01','2023-03-01','2023-02-28','Completed','HillCounty','DistrictC','SunPower','S54321','Installation',2,'Low','Completed',32,'ProjectLeadNina','2021-08-15','ManagerTom','2023-03-05');

-- Community Health Metrics
CREATE TABLE community_health_metrics (
    MetricID TEXT PRIMARY KEY,
    Region TEXT,
    Year INTEGER,
    Population INTEGER,
    ObesityRate REAL,
    DiabetesRate REAL,
    VaccinationRate REAL,
    AirQualityIndex INTEGER,
    WaterQualityScore INTEGER,
    AvgLifeExpectancy REAL,
    SmokingRate REAL,
    PhysicalActivityRate REAL,
    MentalHealthIndex REAL,
    HealthcareAccessScore REAL,
    PovertyRate REAL,
    MedianIncome INTEGER,
    EducationAttainmentRate REAL,
    HospitalBedsPer1000 REAL,
    EmergencyResponseTimeAvg REAL,
    DataCollectedDate DATE,
    SourceAgency TEXT
);

INSERT INTO community_health_metrics VALUES
('CM001','NorthRegion','2022',125000,28.4,9.1,92.5,45,78,78.2,15.3,61.0,72.5,85.0,12.5,54000,88.0,2.5,7.4,'2022-12-01','HealthDept');

INSERT INTO community_health_metrics VALUES
('CM002','EastRegion','2022',98000,31.0,10.4,89.0,52,71,76.5,17.8,58.2,68.3,80.5,15.0,47000,82.0,2.1,8.0,'2022-12-03','HealthDept');

INSERT INTO community_health_metrics VALUES
('CM003','SouthRegion','2022',143500,26.7,8.5,94.2,38,84,80.1,13.2,65.4,75.9,88.2,10.2,61000,90.5,2.8,6.9,'2022-12-05','HealthDept');

-- State Education Policy Changes
CREATE TABLE state_education_policy_changes (
    PolicyID TEXT PRIMARY KEY,
    State TEXT,
    Year INTEGER,
    PolicyName TEXT,
    Category TEXT,
    Description TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    EnactedBy TEXT,
    ImplementationStatus TEXT,
    FundingImpact REAL,
    StudentImpactScore REAL,
    TeacherImpactScore REAL,
    CreatedDate DATE,
    UpdatedDate DATE,
    Reviewer TEXT,
    ReviewComments TEXT,
    DocumentURL TEXT,
    AmendmentCount INTEGER,
    PublicCommentCount INTEGER,
    LegislativeSession TEXT,
    PolicyCode TEXT
);

INSERT INTO state_education_policy_changes VALUES
('PC001','StateX','2021','ExtendedLearningTime','Curriculum','Increase school day by 30 minutes','2022-01-01',NULL,'GovernorSmith','Pending',2.5,78.0,65.0,'2021-06-15','2021-07-01','AnalystKelly','Awaiting budget approval','http://statex.gov/policy/pc001',0,124,'2021-2022','ELT2021');

INSERT INTO state_education_policy_changes VALUES
('PC002','StateY','2020','TeacherRetentionIncentive','Compensation','Bonus for teachers with 5+ years','2021-08-01',NULL,'SenatorLee','Implemented',1.8,82.5,70.3,'2020-09-20','2021-01-10','AnalystMark','Positive impact observed','http://statey.gov/policy/pc002',2,89,'2020-2021','TRI2020');

INSERT INTO state_education_policy_changes VALUES
('PC003','StateZ','2022','DigitalLiteracyStandards','Technology','New standards for K-12 digital skills','2023-01-01','2025-12-31','EducationBoard','Draft',3.2,85.0,68.0,'2022-03-05','2022-04-12','AnalystJade','Under review','http://statez.gov/policy/pc003',1,45,'2022-2023','DLS2022');

-- Regional Air Quality Stations
CREATE TABLE regional_air_quality_stations (
    StationID TEXT PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    Elevation REAL,
    Agency TEXT,
    YearInstalled INTEGER,
    SensorCount INTEGER,
    PM25Avg REAL,
    OzoneAvg REAL,
    NO2Avg REAL,
    SO2Avg REAL,
    COAvg REAL,
    AQI INTEGER,
    LastCalibrationDate DATE,
    MaintenanceFrequencyDays INTEGER,
    DataTransmissionMethod TEXT,
    PowerSource TEXT,
    OperationalStatus TEXT,
    ContactEmail TEXT,
    LatitudeDMS TEXT,
    LongitudeDMS TEXT
);

INSERT INTO regional_air_quality_stations VALUES
('AS001','RiverValley','34.0567','-118.2456','250','EPA','2018','5','12.5','0.040','0.025','0.010','0.9','45','2023-06-15','180','Cellular','Solar','Active','rivervalley@epa.gov','3403N','11814W');

INSERT INTO regional_air_quality_stations VALUES
('AS002','MountainPeak','40.7123','-105.9845','1600','StateEnv','2020','7','8.2','0.030','0.018','0.008','0.5','38','2023-05-20','365','Radio','Mains','Active','mountainpeak@stateenv.gov','4042N','10559W');

INSERT INTO regional_air_quality_stations VALUES
('AS003','CoastalBreeze','36.7783','-119.4179','15','LocalAir','2016','4','15.0','0.050','0.030','0.012','1.1','55','2023-07-01','90','Internet','Wind','Maintenance','coastalbreeze@localair.org','3634N','11925W');

-- School Artistic Exhibition Inventory
CREATE TABLE school_artistic_exhibition_inventory (
    ExhibitionID TEXT PRIMARY KEY,
    SchoolName TEXT,
    ExhibitionTitle TEXT,
    CuratorName TEXT,
    StartDate DATE,
    EndDate DATE,
    NumberOfWorks INTEGER,
    TotalVisitors INTEGER,
    FundingSource TEXT,
    InsurancePolicyNumber TEXT,
    EstimatedValue REAL,
    SponsorName TEXT,
    GallerySpace TEXT,
    ArtworkType TEXT,
    MediaFormat TEXT,
    InstallationTeam TEXT,
    SecurityLevel TEXT,
    AccessibilityRating REAL,
    EventWebsite TEXT,
    CatalogPublished INTEGER,
    Notes TEXT,
    CreatedDate DATE
);

INSERT INTO school_artistic_exhibition_inventory VALUES
('EX001','CentralHigh','Visions of Tomorrow','LauraSmith','2023-03-01','2023-04-15','45','1200','CommunityGrant','INS12345','25000.00','ArtsFund','MainHall','MixedMedia','Digital','TeamA','High','4.5','http://centralhigh.edu/exhibit1','1','First annual showcase','2023-02-20');

INSERT INTO school_artistic_exhibition_inventory VALUES
('EX002','NorthsideAcademy','Nature in Motion','MichaelLee','2023-05-10','2023-06-05','30','800','SchoolBudget','INS67890','18000.00','EcoSponsor','GalleryB','Photography','Print','TeamB','Medium','4.0','http://northside.edu/exhibit2','0','Student photography project','2023-04-28');

INSERT INTO school_artistic_exhibition_inventory VALUES
('EX003','WestfieldPrep','Cultural Mosaic','SofiaGarcia','2023-09-12','2023-10-20','60','1500','AlumniDonations','INS24680','32000.00','HeritageFoundation','ExhibitHall','Paintings','Oil','TeamC','High','4.8','http://westfieldprep.edu/exhibit3','1','Collaboration with local artists','2023-08-30');

-- District Renewable Energy Assets
CREATE TABLE district_renewable_energy_assets (
    AssetID TEXT PRIMARY KEY,
    AssetType TEXT,
    Location TEXT,
    CapacityMW REAL,
    InstallationDate DATE,
    Vendor TEXT,
    MaintenanceContract TEXT,
    CurrentOutputMW REAL,
    Status TEXT,
    ExpectedLifeYears INTEGER,
    CommissioningDate DATE,
    DecommissionDate DATE,
    GridConnectionID TEXT,
    EnergyProductionYTD REAL,
    CO2OffsetTonnes REAL,
    FundingProgram TEXT,
    OwnerAgency TEXT,
    Latitude REAL,
    Longitude REAL,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    Remarks TEXT
);

INSERT INTO district_renewable_energy_assets VALUES
('RE001','SolarFarm','EastValley','15.0','2019-04-10','SunEnergyInc','SC2025','14.2','Operational','25','2019-06-01',NULL,'GC1001','45000.0','12000.0','StateRenewable','DistrictA','35.6895','-120.1234','2023-04-10','92','No issues');

INSERT INTO district_renewable_energy_assets VALUES
('RE002','WindTurbine','HillTop','3.5','2021-08-22','WindWorks','WC2026','3.4','Operational','20','2021-10-01',NULL,'GC1002','15000.0','4000.0','FederalGrant','DistrictB','36.7783','-119.4179','2023-03-15','88','Routine maintenance completed');

INSERT INTO district_renewable_energy_assets VALUES
('RE003','BiogasPlant','RiverSide','2.0','2018-01-15','BioPowerCo','BP2024','1.9','Operational','30','2018-03-01',NULL,'GC1003','12000.0','3500.0','LocalBond','DistrictC','34.0522','-118.2437','2023-05-20','90','Upgrade of gas handling system');

-- Alumni Career Pathways
CREATE TABLE alumni_career_pathways (
    AlumniID TEXT PRIMARY KEY,
    GraduationYear INTEGER,
    Degree TEXT,
    Major TEXT,
    CurrentIndustry TEXT,
    PositionTitle TEXT,
    SalaryBracket TEXT,
    EmploymentStatus TEXT,
    City TEXT,
    State TEXT,
    CompanyName TEXT,
    LinkedInURL TEXT,
    AlumniEmail TEXT,
    PhoneNumber TEXT,
    MentorName TEXT,
    MentorEmail TEXT,
    CareerProgressionLevel INTEGER,
    ContinuingEducation INTEGER,
    ProfessionalCertifications TEXT,
    AwardsReceived TEXT,
    LastUpdateDate DATE,
    Notes TEXT
);

INSERT INTO alumni_career_pathways VALUES
('ALU001','2015','Bachelors','ComputerScience','Technology','SoftwareEngineer','70k-90k','Employed','SanFrancisco','CA','TechSolutions','https://linkedin.com/in/alumni1','alumni1@example.com','5551234567','JohnDoe','johndoe@example.com','3','0','AWS Certified','EmployeeOfYear','2023-06-01','Active network');

INSERT INTO alumni_career_pathways VALUES
('ALU002','2012','Masters','Education','NonProfit','ProgramDirector','50k-70k','Employed','Portland','OR','CommunityAid','https://linkedin.com/in/alumni2','alumni2@example.com','5559876543','JaneSmith','janesmith@example.com','4','1','ProjectManagement Professional','VolunteerAward','2023-05-20','Mentoring new graduates');

INSERT INTO alumni_career_pathways VALUES
('ALU003','2018','Bachelors','Biology','Healthcare','ResearchScientist','80k-100k','Employed','Boston','MA','BioLab','https://linkedin.com/in/alumni3','alumni3@example.com','5555551212','MikeBrown','mikebrown@example.com','2','0','Clinical Research Cert','InnovationPrize','2023-07-10','Pursuing PhD');

-- Student Extracurricular Budget
CREATE TABLE student_extracurricular_budget (
    BudgetID TEXT PRIMARY KEY,
    SchoolName TEXT,
    FiscalYear INTEGER,
    ActivityType TEXT,
    AllocatedAmount REAL,
    SpentAmount REAL,
    FundingSource TEXT,
    BudgetApprovedBy TEXT,
    ApprovalDate DATE,
    ExpenseCategory1 TEXT,
    ExpenseAmount1 REAL,
    ExpenseCategory2 TEXT,
    ExpenseAmount2 REAL,
    ExpenseCategory3 TEXT,
    ExpenseAmount3 REAL,
    ExpenseCategory4 TEXT,
    ExpenseAmount4 REAL,
    Notes TEXT,
    LastModifiedBy TEXT,
    LastModifiedDate DATE,
    AuditStatus TEXT,
    Variance REAL,
    Comments TEXT
);

INSERT INTO student_extracurricular_budget VALUES
('EB001','CentralHigh','2023','Robotics','15000.00','14200.00','SchoolFunds','PrincipalLee','2023-01-15','Equipment','8000.00','Travel','3000.00','Materials','2000.00','Contingency','2000.00','Final competition expenses','FinanceDept','2023-06-10','Closed','-800.00','All items accounted');

INSERT INTO student_extracurricular_budget VALUES
('EB002','NorthsideAcademy','2023','DramaClub','12000.00','11500.00','ArtsGrant','DirectorKim','2023-01-20','SetDesign','4000.00','Costumes','3500.00','Lighting','2000.00','Marketing','1000.00','Season production','AdminOffice','2023-06-12','Pending','-500.00','Awaiting final report');

INSERT INTO student_extracurricular_budget VALUES
('EB003','WestfieldPrep','2023','ScienceFair','8000.00','7500.00','CommunityDonations','CoordinatorAna','2023-01-10','Supplies','3000.00','Venue','2500.00','JudgingFees','1500.00','Advertising','1000.00','Regional fair','FinanceTeam','2023-06-08','Closed','-500.00','Successful event');

-- Technology Software Licenses
CREATE TABLE technology_software_licenses (
    LicenseID TEXT PRIMARY KEY,
    SoftwareName TEXT,
    Version TEXT,
    Vendor TEXT,
    LicenseType TEXT,
    SeatCount INTEGER,
    PurchaseDate DATE,
    ExpirationDate DATE,
    Cost REAL,
    Department TEXT,
    AssignedTo TEXT,
    RenewalStatus TEXT,
    SupportContractNumber TEXT,
    MaintenanceStartDate DATE,
    MaintenanceEndDate DATE,
    LicenseKey TEXT,
    ComplianceStatus TEXT,
    LastAuditDate DATE,
    AuditorName TEXT,
    Notes TEXT,
    Platform TEXT,
    OperatingSystem TEXT,
    LicenseURL TEXT
);

INSERT INTO technology_software_licenses VALUES
('LIC001','EduSuite','5.2','EduTech','Perpetual','150','2020-03-01','2030-03-01','75000.00','Administration','AllAdmins','Active','SC12345','2020-03-01','2030-03-01','ABCD-1234-EFGH-5678','Compliant','2023-02-15','AuditTeamA','Includes support','Windows','Windows10','http://edutech.com/lic001');

INSERT INTO technology_software_licenses VALUES
('LIC002','MathLab','3.8','MathCo','Subscription','80','2022-07-15','2023-07-15','20000.00','Mathematics','MathDept','Pending Renewal','SC67890','2022-07-15','2023-07-15','WXYZ-9876-IJKL-5432','Pending','2023-06-30','AuditTeamB','Renewal pending','Linux','Ubuntu20.04','http://mathco.com/lic002');

INSERT INTO technology_software_licenses VALUES
('LIC003','DesignPro','2.1','CreativeInc','Floating','60','2021-11-05','2024-11-05','30000.00','Arts','DesignStaff','Active','SC24680','2021-11-05','2024-11-05','LMNO-1357-PQRS-2468','Compliant','2023-01-20','AuditTeamC','No issues','MacOS','macOS12','http://creativeinc.com/lic003');

-- Environmental Impact Assessment Reports
CREATE TABLE environmental_impact_assessment_reports (
    ReportID TEXT PRIMARY KEY,
    ProjectName TEXT,
    AssessmentDate DATE,
    LeadAgency TEXT,
    ImpactScore REAL,
    AirImpact TEXT,
    WaterImpact TEXT,
    SoilImpact TEXT,
    BiodiversityImpact TEXT,
    NoiseImpact TEXT,
    VisualImpact TEXT,
    MitigationMeasures TEXT,
    PublicCommentsCount INTEGER,
    ApprovalStatus TEXT,
    Reviewer TEXT,
    ReviewDate DATE,
    CommentsSummary TEXT,
    DocumentLink TEXT,
    FollowUpActions TEXT,
    NextReviewDate DATE,
    FundingSource TEXT,
    ProjectPhase TEXT,
    AssessmentMethodology TEXT
);

INSERT INTO environmental_impact_assessment_reports VALUES
('EIA001','RiverBridgeUpgrade','2023-02-10','StateDept','4.5','Moderate','Low','Low','High','Low','Medium','ErosionControl;NoiseBarriers','45','Approved','DrSmith','2023-03-01','Overall acceptable with mitigations','http://state.gov/eia001','Implement noise barriers by Q4','2024-02-10','FederalFunds','Construction','FieldSurvey+Modeling');

INSERT INTO environmental_impact_assessment_reports VALUES
('EIA002','SolarPanelInstallation','2022-11-20','LocalAuthority','2.1','Low','Low','Low','Low','Low','Low','StandardInstallationGuidelines','12','Approved','MsJones','2022-12-05','Minimal impact','http://local.gov/eia002','Routine maintenance plan','2023-11-20','LocalBond','Installation','SiteAssessment');

INSERT INTO environmental_impact_assessment_reports VALUES
('EIA003','MainStreetRehab','2023-05-15','CountyCouncil','3.8','High','Medium','Medium','Medium','High','High','StormwaterManagement;TreePlanting','78','Pending','MrLee','2023-06-01','Significant urban impact, requires mitigation','http://county.gov/eia003','Begin stormwater upgrades Q3','2025-05-15','StateGrant','Design','GISAnalysis+PublicSurvey');