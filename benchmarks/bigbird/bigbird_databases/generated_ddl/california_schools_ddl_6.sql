-- School Funding Sources
CREATE TABLE school_funding_sources (
    CDSCode TEXT NOT NULL,
    FiscalYear TEXT NOT NULL,
    FederalGrantAmt REAL,
    StateGrantAmt REAL,
    LocalFundingAmt REAL,
    PrivateDonationsAmt REAL,
    BondIssuanceAmt REAL,
    CapitalImprovementAmt REAL,
    TechnologyFundingAmt REAL,
    FacilitiesFundingAmt REAL,
    SportsFundingAmt REAL,
    ArtsFundingAmt REAL,
    SpecialEdFundingAmt REAL,
    TitleIAmount REAL,
    TitleIIAmount REAL,
    TitleIIIAmount REAL,
    TitleIVAmount REAL,
    TitleVAmount REAL,
    OtherFundingAmt REAL,
    TotalFunding REAL,
    FundingSourceNotes TEXT,
    PRIMARY KEY (CDSCode, FiscalYear),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO school_funding_sources VALUES ('001234','2022-2023',500000,300000,200000,150000,80000,120000,90000,110000,40000,35000,25000,60000,20000,15000,10000,5000,30000,1650000,'Community foundation grant');
INSERT INTO school_funding_sources VALUES ('001235','2022-2023',450000,280000,210000,120000,75000,110000,85000,105000,38000,34000,24000,58000,19000,14000,9500,4800,28000,1585000,'Local business sponsorship');
INSERT INTO school_funding_sources VALUES ('001236','2022-2023',520000,310000,190000,130000,82000,115000,87000,108000,39000,36000,26000,61000,21000,15500,10200,5200,31000,1668000,'State education initiative');

-- District Performance Metrics
CREATE TABLE district_performance_metrics (
    DistrictCode TEXT NOT NULL,
    AcademicYear TEXT NOT NULL,
    AvgReadingScore REAL,
    AvgMathScore REAL,
    AvgScienceScore REAL,
    GraduationRate REAL,
    DropoutRate REAL,
    AttendanceRate REAL,
    CollegeEnrollmentRate REAL,
    ESLPercent REAL,
    SpecialEdPercent REAL,
    GiftedPercent REAL,
    StudentTeacherRatio REAL,
    TeacherExperienceAvg REAL,
    FundingPerStudent REAL,
    ExpenditurePerStudent REAL,
    TechnologyAccessPct REAL,
    LibraryBooksPerStudent REAL,
    ExtracurricularParticipationPct REAL,
    DisciplineIncidentsPer1000 REAL,
    PerformanceNotes TEXT,
    PRIMARY KEY (DistrictCode, AcademicYear)
);
INSERT INTO district_performance_metrics VALUES ('D001','2022-2023',78.5,81.2,79.0,92.3,2.1,95.6,68.4,12.5,14.3,6.7,16.2,8.5,7200,8600,88.2,120,45.3,3.2,'Stable improvement');
INSERT INTO district_performance_metrics VALUES ('D002','2022-2023',74.0,77.5,76.1,88.9,3.5,93.2,61.0,15.0,16.8,5.9,17.5,9.0,6800,8200,85.0,115,42.0,4.1,'Targeted interventions needed');
INSERT INTO district_performance_metrics VALUES ('D003','2022-2023',80.2,83.8,81.5,95.0,1.5,97.0,72.1,10.2,13.0,7.5,15.8,7.9,7500,9000,90.5,125,48.7,2.8,'Exceeds state averages');

-- Student Extra Curricular Participation
CREATE TABLE student_extra_curricular_participation (
    StudentID TEXT NOT NULL,
    CDSCode TEXT NOT NULL,
    AcademicYear TEXT NOT NULL,
    ClubCode TEXT NOT NULL,
    ClubName TEXT,
    Role TEXT,
    ParticipationHours REAL,
    LeadershipPosition TEXT,
    AwardReceived TEXT,
    CompetitionLevel TEXT,
    SponsorName TEXT,
    StartDate TEXT,
    EndDate TEXT,
    MentorName TEXT,
    MentorContact TEXT,
    ParticipationStatus TEXT,
    HoursEarned REAL,
    CreditsEarned REAL,
    FundingSource TEXT,
    Remarks TEXT,
    PRIMARY KEY (StudentID, ClubCode, AcademicYear),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO student_extra_curricular_participation VALUES ('S1001','001234','2022-2023','C001','ScienceClub','Member',120,'','RegionalScienceFair','Regional','TechCorp','2022-09-01','2023-05-30','DrSmith','5551234','Active',120,3,'SchoolBudget','');
INSERT INTO student_extra_curricular_participation VALUES ('S1002','001235','2022-2023','C002','DebateTeam','VicePresident',150,'VicePresident','BestSpeaker','State','LawFirm','2022-09-15','2023-06-01','MsJohnson','5555678','Active',150,4,'Fundraising','');
INSERT INTO student_extra_curricular_participation VALUES ('S1003','001236','2022-2023','C003','ArtClub','Member',90,'','ExcellenceInArt','Local','ArtSupplyCo','2022-10-01','2023-04-30','MrLee','5559012','Completed',90,2,'Grant','');

-- School Facility Utilization
CREATE TABLE school_facility_utilization (
    FacilityID TEXT NOT NULL,
    CDSCode TEXT NOT NULL,
    FacilityType TEXT,
    SquareFootage REAL,
    Capacity INTEGER,
    UtilizationPct REAL,
    MaintenanceCost REAL,
    EnergyConsumptionKWh REAL,
    WaterUsageGallons REAL,
    YearConstructed INTEGER,
    LastRenovationYear INTEGER,
    AccessibilityScore REAL,
    SafetyScore REAL,
    HVACAgeYears REAL,
    RoofAgeYears REAL,
    LightingEfficiencyRating TEXT,
    FlooringType TEXT,
    SeatingType TEXT,
    UsageSchedule TEXT,
    BookingCount INTEGER,
    AvgOccupancy REAL,
    PRIMARY KEY (FacilityID),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO school_facility_utilization VALUES ('F001','001234','Gymnasium',25000,500,78.5,12000,450000,30000,1998,2018,8.5,9.0,12,15,'A','Rubber','Bleacher','Mon-Fri 07:00-22:00',180,390);
INSERT INTO school_facility_utilization VALUES ('F002','001235','Auditorium',18000,350,65.2,9000,320000,25000,2002,2015,7.8,8.7,10,12,'B','Carpet','Theater','Mon-Fri 08:00-20:00',95,228);
INSERT INTO school_facility_utilization VALUES ('F003','001236','ScienceLab',12000,200,82.0,8000,210000,18000,2005,2020,9.0,9.5,8,10,'A','Tile','LabBench','Mon-Fri 09:00-18:00',210,164);

-- District Transportation Assets
CREATE TABLE district_transportation_assets (
    AssetID TEXT NOT NULL,
    DistrictCode TEXT NOT NULL,
    AssetType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    YearPurchased INTEGER,
    PurchasePrice REAL,
    ServiceLifeYears REAL,
    CurrentMileage REAL,
    LastServiceDate TEXT,
    NextServiceDue TEXT,
    FuelType TEXT,
    FuelEfficiencyMpg REAL,
    EmissionStandard TEXT,
    CapacitySeats INTEGER,
    AssignedRoute TEXT,
    GPSInstalled TEXT,
    GPSLastUpdate TEXT,
    AssetStatus TEXT,
    DepreciationValue REAL,
    DisposalPlan TEXT,
    PRIMARY KEY (AssetID),
    FOREIGN KEY (DistrictCode) REFERENCES schools(District) -- using district name as placeholder
);
INSERT INTO district_transportation_assets VALUES ('A001','D001','Bus','BlueBird','AllStar',2015,85000,12,120000,'2023-02-10','2023-08-10','Diesel',8.5,'Euro5',55,'R12','Yes','2023-01-28','Active',34000','SellAfterLife');
INSERT INTO district_transportation_assets VALUES ('A002','D002','Van','Ford','Transit',2018,42000,10,45000,'2023-03-05','2023-09-05',' gasoline',22.0,'Euro6',15,'R7','Yes','2023-02-20','Active',21000','Retain');
INSERT INTO district_transportation_assets VALUES ('A003','D003','ElectricBus','Proterra','Catalyst',2020,150000,15,30000,'2023-01-15','2023-07-15','Electric',0,'Zero',60,'R15','Yes','2023-01-10','Active',90000','Recycle');

-- School Community Engagement Events
CREATE TABLE school_community_engagement_events (
    EventID TEXT NOT NULL,
    CDSCode TEXT NOT NULL,
    EventName TEXT,
    EventDate TEXT,
    EventType TEXT,
    ExpectedAttendance INTEGER,
    ActualAttendance INTEGER,
    LeadOrganizer TEXT,
    PartnerOrganization TEXT,
    Venue TEXT,
    DurationHours REAL,
    Cost REAL,
    FundingSource TEXT,
    MediaCoverage TEXT,
    SurveyResponses INTEGER,
    SatisfactionScore REAL,
    FollowUpActions TEXT,
    VolunteerCount INTEGER,
    StudentVolunteerHours REAL,
    CommunityVolunteerHours REAL,
    SafetyIncidents INTEGER,
    EventNotes TEXT,
    PRIMARY KEY (EventID),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO school_community_engagement_events VALUES ('E001','001234','HealthFair','2023-04-12','Health','200','185','NurseTeam','LocalHospital','Gym','6',5000,'Grant','LocalTV','150',4.2','SendThankYouLetters',30,120,80,0,'Well received');
INSERT INTO school_community_engagement_events VALUES ('E002','001235','CareerDay','2023-05-05','Career','300','290','GuidanceDept','TechCompany','Auditorium','8',3000,'Sponsorship','Radio','180',4.5','ProvideFeedbackForms',45,150,100,0,'High engagement');
INSERT INTO school_community_engagement_events VALUES ('E003','001236','ArtExhibit','2023-06-20','Arts','150','145','ArtClub','CommunityCenter','Hall','5',2000,'Donations','Online','90',4.0','PublishCatalog',20,80,50,0,'Positive comments');

-- School Technology Support Log
CREATE TABLE school_technology_support_log (
    TicketID TEXT NOT NULL,
    CDSCode TEXT NOT NULL,
    IssueDate TEXT,
    IssueCategory TEXT,
    DeviceType TEXT,
    DeviceSerial TEXT,
    ReportedBy TEXT,
    ContactInfo TEXT,
    PriorityLevel TEXT,
    AssignedTech TEXT,
    ResolutionDate TEXT,
    ResolutionSummary TEXT,
    DowntimeHours REAL,
    SoftwareVersion TEXT,
    OSVersion TEXT,
    NetworkSegment TEXT,
    SLAResponseHours REAL,
    SLAResolveHours REAL,
    Status TEXT,
    CustomerSatisfactionScore REAL,
    FollowUpNeeded TEXT,
    Remarks TEXT,
    PRIMARY KEY (TicketID),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO school_technology_support_log VALUES ('T001','001234','2023-03-10','Network','Router','R12345','MrBrown','5551111','High','TechA','2023-03-12','Replaced faulty module',48,'v2.1','IOS15','SegmentA',2,24,'Closed',4.8','No','');
INSERT INTO school_technology_support_log VALUES ('T002','001235','2023-04-01','Software','Laptop','L98765','MsGreen','5552222','Medium','TechB','2023-04-02','Updated operating system',4,'v5.4','Windows10','SegmentB',1,8,'Closed',4.5','Yes','Follow up on driver issues');
INSERT INTO school_technology_support_log VALUES ('T003','001236','2023-04-18','Hardware','Projector','P54321','MrWhite','5553333','Low','TechC','2023-04-20','Recalibrated lens',2,'N/A','N/A','SegmentC',1,6,'Closed',4.9','No','');

-- School Nutrition Programs
CREATE TABLE school_nutrition_programs (
    ProgramID TEXT NOT NULL,
    CDSCode TEXT NOT NULL,
    ProgramName TEXT,
    StartYear INTEGER,
    EndYear INTEGER,
    TargetPopulation TEXT,
    MealsProvidedPerDay INTEGER,
    BudgetAllocated REAL,
    FundingSource TEXT,
    NutritionistInCharge TEXT,
    MenuPlanType TEXT,
    CaloriesPerMeal INTEGER,
    SodiumMg INTEGER,
    SugarG INTEGER,
    FiberG INTEGER,
    VitaminD_IU INTEGER,
    IronMg INTEGER,
    ComplianceScore REAL,
    AnnualAuditDate TEXT,
    AuditResult TEXT,
    Notes TEXT,
    PRIMARY KEY (ProgramID),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO school_nutrition_programs VALUES ('N001','001234','FreeLunch','2020','2025','LowIncome','300','250000','Federal','DrTaylor','Standard','550','700','30','5','400','3',9.2,'2023-02-15','Pass','');
INSERT INTO school_nutrition_programs VALUES ('N002','001235','BreakfastClub','2021','2026','AllStudents','200','150000','State','MsAllen','Standard','450','600','25','4','300','2',8.8,'2023-03-10','Pass','');
INSERT INTO school_nutrition_programs VALUES ('N003','001236','SummerMealProgram','2022','2024','HighNeed','250','180000','Grant','DrMiller','Vegetarian','500','650','28','5','350','3',9.0,'2023-04-05','Pass','');

-- School Safety Training Sessions
CREATE TABLE school_safety_training_sessions (
    SessionID TEXT NOT NULL,
    CDSCode TEXT NOT NULL,
    SessionDate TEXT,
    TrainingTopic TEXT,
    TrainerName TEXT,
    TrainerAffiliation TEXT,
    DurationHours REAL,
    ParticipantsCount INTEGER,
    StaffParticipants INTEGER,
    StudentParticipants INTEGER,
    CertificationEarned TEXT,
    MaterialsUsed TEXT,
    EvaluationScore REAL,
    FollowUpDate TEXT,
    ActionItems TEXT,
    Cost REAL,
    FundingSource TEXT,
    AttendanceRate REAL,
    IncidentReductionPct REAL,
    FeedbackComments TEXT,
    SessionStatus TEXT,
    RecordURL TEXT,
    PRIMARY KEY (SessionID),
    FOREIGN KEY (CDSCode) REFERENCES schools(CDSCode)
);
INSERT INTO school_safety_training_sessions VALUES ('S001','001234','2023-02-20','FireSafety','JohnDoe','FireDept','3',120,80,40,'Certified','Handouts','4.7','2023-03-01','Update evacuation maps',800,'District','95','12','Good engagement','Completed','http://example.com/records/S001');
INSERT INTO school_safety_training_sessions VALUES ('S002','001235','2023-03-15','CyberSafety','JaneSmith','ITConsultancy','2',150,90,60,'Certified','Slides','4.5','2023-04-01','Implement password policy',600,'Grant','92','15','Useful content','Completed','http://example.com/records/S002');
INSERT INTO school_safety_training_sessions VALUES ('S003','001236','2023-04-10','FirstAid','MikeBrown','RedCross','4',130,70,60,'Certified','Kits','4.8','2023-04-20','Restock kits',900,'District','97','18','Very interactive','Completed','http://example.com/records/S003');

-- District Legal Cases
CREATE TABLE district_legal_cases (
    CaseID TEXT NOT NULL,
    DistrictCode TEXT NOT NULL,
    CaseNumber TEXT,
    FilingDate TEXT,
    ClosingDate TEXT,
    CaseType TEXT,
    Plaintiff TEXT,
    Defendant TEXT,
    ClaimAmount REAL,
    SettlementAmount REAL,
    Verdict TEXT,
    JudgeName TEXT,
    CourtLocation TEXT,
    LegalCounsel TEXT,
    CaseStatus TEXT,
    ReasonSummary TEXT,
    OutcomeDate TEXT,
    AppealFiled TEXT,
    AppealOutcome TEXT,
    LegalFees REAL,
    CaseNotes TEXT,
    PRIMARY KEY (CaseID)
);
INSERT INTO district_legal_cases VALUES ('C001','D001','2022-001','2022-03-10','2022-09-15','Employment','TeacherA','District','50000','45000','Settled','JudgeSmith','CountyCourt','LawFirmA','Closed','Contract dispute','2022-09-15','No','N/A','12000','');
INSERT INTO district_legal_cases VALUES ('C002','D002','2022-015','2022-05-01','2022-12-20','Facilities','ParentGroup','District','120000','0','JudgmentForPlaintiff','JudgeLee','SuperiorCourt','LawFirmB','Closed','Safety violation claim','2022-12-20','Yes','Pending','18000','');
INSERT INTO district_legal_cases VALUES ('C003','D003','2023-003','2023-01-22','2023-08-30','Equity','StudentOrg','District','80000','80000','Settled','JudgeKim','DistrictCourt','LawFirmC','Closed','Discrimination allegation','2023-08-30','No','N/A','15000','');-- State Education Statistics
CREATE TABLE state_education_statistics (
    Year INTEGER NOT NULL,
    StateCode TEXT NOT NULL,
    TotalStudents INTEGER,
    Graduates INTEGER,
    DropoutRate REAL,
    AvgStudentTeacherRatio REAL,
    ExpenditurePerPupil REAL,
    TotalFunding REAL,
    FederalFundingPct REAL,
    StateFundingPct REAL,
    PrivateFundingPct REAL,
    UrbanEnrollment INTEGER,
    RuralEnrollment INTEGER,
    SuburbanEnrollment INTEGER,
    MaleEnrollment INTEGER,
    FemaleEnrollment INTEGER,
    EnglishLearnersPct REAL,
    SpecialEdPct REAL,
    AvgACTScore REAL,
    AvgSATScore REAL
);
INSERT INTO state_education_statistics (Year,StateCode,TotalStudents,Graduates,DropoutRate,AvgStudentTeacherRatio,ExpenditurePerPupil,TotalFunding,FederalFundingPct,StateFundingPct,PrivateFundingPct,UrbanEnrollment,RuralEnrollment,SuburbanEnrollment,MaleEnrollment,FemaleEnrollment,EnglishLearnersPct,SpecialEdPct,AvgACTScore,AvgSATScore) VALUES (2022,'CA',6100000,4800000,5.2,22.5,12000.5,73000000,20.0,70.0,10.0,3000000,1100000,2000000,3100000,3000000,12.5,8.3,22.1,1280);
INSERT INTO state_education_statistics (Year,StateCode,TotalStudents,Graduates,DropoutRate,AvgStudentTeacherRatio,ExpenditurePerPupil,TotalFunding,FederalFundingPct,StateFundingPct,PrivateFundingPct,UrbanEnrollment,RuralEnrollment,SuburbanEnrollment,MaleEnrollment,FemaleEnrollment,EnglishLearnersPct,SpecialEdPct,AvgACTScore,AvgSATScore) VALUES (2022,'TX',5400000,4100000,6.1,23.0,9500.2,62000000,18.5,71.5,10.0,2500000,900000,2000000,2700000,2700000,10.3,9.1,21.7,1250);
INSERT INTO state_education_statistics (Year,StateCode,TotalStudents,Graduates,DropoutRate,AvgStudentTeacherRatio,ExpenditurePerPupil,TotalFunding,FederalFundingPct,StateFundingPct,PrivateFundingPct,UrbanEnrollment,RuralEnrollment,SuburbanEnrollment,MaleEnrollment,FemaleEnrollment,EnglishLearnersPct,SpecialEdPct,AvgACTScore,AvgSATScore) VALUES (2022,'NY',2600000,2100000,4.8,20.8,13500.9,48000000,22.0,68.0,10.0,1400000,300000,900000,1300000,1300000,13.0,7.5,23.0,1320);

-- Regional Air Quality
CREATE TABLE regional_air_quality (
    RegionID TEXT NOT NULL,
    RegionName TEXT,
    Year INTEGER,
    Month INTEGER,
    AvgPM25 REAL,
    AvgPM10 REAL,
    NO2 REAL,
    O3 REAL,
    CO REAL,
    SO2 REAL,
    AQI INTEGER,
    MonitoringStationCount INTEGER,
    PopulationExposed INTEGER,
    DaysExceedStandard INTEGER,
    PrimarySource TEXT,
    TempAvg REAL,
    HumidityAvg REAL,
    WindSpeedAvg REAL,
    DataQualityFlag TEXT,
    ReportingAgency TEXT
);
INSERT INTO regional_air_quality (RegionID,RegionName,Year,Month,AvgPM25,AvgPM10,NO2,O3,CO,SO2,AQI,MonitoringStationCount,PopulationExposed,DaysExceedStandard,PrimarySource,TempAvg,HumidityAvg,WindSpeedAvg,DataQualityFlag,ReportingAgency) VALUES ('R001','Coastal Valley',2022,7,12.4,25.7,15.2,30.1,0.8,2.1,55,8,120000,3,'Vehicle Traffic',78.5,65.2,5.6,'Good','EPA');
INSERT INTO regional_air_quality (RegionID,RegionName,Year,Month,AvgPM25,AvgPM10,NO2,O3,CO,SO2,AQI,MonitoringStationCount,PopulationExposed,DaysExceedStandard,PrimarySource,TempAvg,HumidityAvg,WindSpeedAvg,DataQualityFlag,ReportingAgency) VALUES ('R002','Mountain Basin',2022,1,8.1,15.4,9.5,28.3,0.5,1.4,42,5,85000,0,'Wood Burning',32.1,48.3,3.2,'Good','State Dept of Env');
INSERT INTO regional_air_quality (RegionID,RegionName,Year,Month,AvgPM25,AvgPM10,NO2,O3,CO,SO2,AQI,MonitoringStationCount,PopulationExposed,DaysExceedStandard,PrimarySource,TempAvg,HumidityAvg,WindSpeedAvg,DataQualityFlag,ReportingAgency) VALUES ('R003','Industrial Corridor',2022,11,25.6,55.3,35.8,22.7,1.2,4.5,115,12,300000,12,'Manufacturing',45.9,70.1,6.8,'Moderate','EPA');

-- State Technology Initiatives
CREATE TABLE state_technology_initiatives (
    InitiativeID TEXT NOT NULL,
    Name TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAmount REAL,
    FundingSource TEXT,
    LeadAgency TEXT,
    TargetSchools INTEGER,
    TargetStudents INTEGER,
    DevicesProvided INTEGER,
    ConnectivityUpgrade TEXT,
    TeacherTrainingHours INTEGER,
    EstimatedImpactScore REAL,
    Status TEXT,
    PrimaryTechnology TEXT,
    SecondaryTechnology TEXT,
    EvaluationDate DATE,
    BudgetUtilizationPct REAL,
    Notes TEXT,
    Region TEXT,
    ProgramCategory TEXT
);
INSERT INTO state_technology_initiatives (InitiativeID,Name,StartDate,EndDate,FundingAmount,FundingSource,LeadAgency,TargetSchools,TargetStudents,DevicesProvided,ConnectivityUpgrade,TeacherTrainingHours,EstimatedImpactScore,Status,PrimaryTechnology,SecondaryTechnology,EvaluationDate,BudgetUtilizationPct,Notes,Region,ProgramCategory) VALUES ('TI001','SmartClassroom2025','2021-09-01','2025-06-30',25000000,'State General Fund','Dept of Ed','1200','350000','350000','Fiber Optic Upgrade',1800,89.5,'Active','Interactive Whiteboards','Learning Management System','2024-05-15',78.2,'Phase 1 completed','Northern','Infrastructure');
INSERT INTO state_technology_initiatives (InitiativeID,Name,StartDate,EndDate,FundingAmount,FundingSource,LeadAgency,TargetSchools,TargetStudents,DevicesProvided,ConnectivityUpgrade,TeacherTrainingHours,EstimatedImpactScore,Status,PrimaryTechnology,SecondaryTechnology,EvaluationDate,BudgetUtilizationPct,Notes,Region,ProgramCategory) VALUES ('TI002','RuralNetBoost','2022-01-15','2024-12-31',15000000,'Federal Grant','Dept of Telecom','400','120000','0','Satellite Internet',900,75.3,'Active','Satellite Terminals','Mobile Hotspots','2023-11-30',65.0,'Pending final rollout','Southern','Connectivity');
INSERT INTO state_technology_initiatives (InitiativeID,Name,StartDate,EndDate,FundingAmount,FundingSource,LeadAgency,TargetSchools,TargetStudents,DevicesProvided,ConnectivityUpgrade,TeacherTrainingHours,EstimatedImpactScore,Status,PrimaryTechnology,SecondaryTechnology,EvaluationDate,BudgetUtilizationPct,Notes,Region,ProgramCategory) VALUES ('TI003','STEMInnovationHub','2020-07-01','2023-06-30',18000000,'Private Partnership','Dept of Science','250','80000','80000','WiFi Expansion',1200,82.1,'Completed','Robotics Kits','3D Printers','2023-04-20',94.5,'All schools equipped','Central','Curriculum');

-- Federal Education Programs
CREATE TABLE federal_education_programs (
    ProgramID TEXT NOT NULL,
    ProgramName TEXT,
    FiscalYear INTEGER,
    TotalAwardAmount REAL,
    AwardedToAgency TEXT,
    EligiblePopulation TEXT,
    GrantType TEXT,
    ApplicationDeadline DATE,
    AwardDate DATE,
    MatchingRequirementPct REAL,
    ReportingFrequency TEXT,
    AdminOffice TEXT,
    ProgramGoal TEXT,
    PerformanceMetric TEXT,
    AvgScore REAL,
    MaxScore REAL,
    ProgramStatus TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Website TEXT
);
INSERT INTO federal_education_programs (ProgramID,ProgramName,FiscalYear,TotalAwardAmount,AwardedToAgency,EligiblePopulation,GrantType,ApplicationDeadline,AwardDate,MatchingRequirementPct,ReportingFrequency,AdminOffice,ProgramGoal,PerformanceMetric,AvgScore,MaxScore,ProgramStatus,ContactPhone,ContactEmail,Website) VALUES ('FE001','College Access Grant','2022',50000000,'Department of Ed','Low Income Students','Formula Grant','2022-03-01','2022-07-15',25.0,'Annual','Office of Postsecondary','Increase college enrollment','Enrollment Rate',78.5,100.0,'Active','5551234567','collegegrant@ed.gov','https://ed.gov/collegegrant');
INSERT INTO federal_education_programs (ProgramID,ProgramName,FiscalYear,TotalAwardAmount,AwardedToAgency,EligiblePopulation,GrantType,ApplicationDeadline,AwardDate,MatchingRequirementPct,ReportingFrequency,AdminOffice,ProgramGoal,PerformanceMetric,AvgScore,MaxScore,ProgramStatus,ContactPhone,ContactEmail,Website) VALUES ('FE002','STEM Teacher Enhancement','2023',30000000,'National Science Foundation','STEM Teachers','Competitive','2023-05-15','2023-09-30',15.0,'Semiannual','Office of STEM','Improve STEM instruction','Student Test Scores',82.3,100.0,'Pending','5559876543','stemteacher@nsf.gov','https://nsf.gov/stemteacher');
INSERT INTO federal_education_programs (ProgramID,ProgramName,FiscalYear,TotalAwardAmount,AwardedToAgency,EligiblePopulation,GrantType,ApplicationDeadline,AwardDate,MatchingRequirementPct,ReportingFrequency,AdminOffice,ProgramGoal,PerformanceMetric,AvgScore,MaxScore,ProgramStatus,ContactPhone,ContactEmail,Website) VALUES ('FE003','Early Childhood Literacy','2021',20000000,'Institute of Education Sciences','Preschool Children','Formula Grant','2021-02-20','2021-06-01',10.0,'Annual','Office of Early Learning','Boost literacy rates','Reading Proficiency',75.0,100.0,'Completed','5552223344','earlylit@ies.edu','https://ies.edu/earlyliteracy');

-- Census Population Metrics
CREATE TABLE census_population_metrics (
    CensusTractID TEXT NOT NULL,
    StateFIPS TEXT,
    CountyFIPS TEXT,
    TotalPopulation INTEGER,
    MedianAge REAL,
    MalePopulation INTEGER,
    FemalePopulation INTEGER,
    Households INTEGER,
    AvgHouseholdSize REAL,
    MedianIncome REAL,
    PovertyRate REAL,
    UnemploymentRate REAL,
    EducationLessHS REAL,
    EducationHSGrad REAL,
    EducationSomeCollege REAL,
    EducationBachelorsPlus REAL,
    RaceWhite REAL,
    RaceBlack REAL,
    RaceAsian REAL,
    RaceHispanic REAL,
    HousingUnits INTEGER,
    VacantUnits INTEGER
);
INSERT INTO census_population_metrics (CensusTractID,StateFIPS,CountyFIPS,TotalPopulation,MedianAge,MalePopulation,FemalePopulation,Households,AvgHouseholdSize,MedianIncome,PovertyRate,UnemploymentRate,EducationLessHS,EducationHSGrad,EducationSomeCollege,EducationBachelorsPlus,RaceWhite,RaceBlack,RaceAsian,RaceHispanic,HousingUnits,VacantUnits) VALUES ('CT1001','06','001',12500,34.2,6100,6400,5000,2.5,62000,12.5,5.3,8.0,30.0,35.0,27.0,55.0,12.0,6.0,27.0,4800,320);
INSERT INTO census_population_metrics (CensusTractID,StateFIPS,CountyFIPS,TotalPopulation,MedianAge,MalePopulation,FemalePopulation,Households,AvgHouseholdSize,MedianIncome,PovertyRate,UnemploymentRate,EducationLessHS,EducationHSGrad,EducationSomeCollege,EducationBachelorsPlus,RaceWhite,RaceBlack,RaceAsian,RaceHispanic,HousingUnits,VacantUnits) VALUES ('CT1002','48','003',21000,31.8,10200,10800,8000,2.6,58000,15.0,6.1,10.5,28.5,32.0,29.0,48.0,20.0,8.0,24.0,7800,540);
INSERT INTO census_population_metrics (CensusTractID,StateFIPS,CountyFIPS,TotalPopulation,MedianAge,MalePopulation,FemalePopulation,Households,AvgHouseholdSize,MedianIncome,PovertyRate,UnemploymentRate,EducationLessHS,EducationHSGrad,EducationSomeCollege,EducationBachelorsPlus,RaceWhite,RaceBlack,RaceAsian,RaceHispanic,HousingUnits,VacantUnits) VALUES ('CT1003','36','005',17800,36.5,8600,9200,6700,2.7,65000,9.8,4.2,7.2,33.0,30.5,29.3,62.0,15.0,5.0,18.0,6200,410);

-- Higher Education Institutions
CREATE TABLE higher_education_institutions (
    InstitutionID TEXT NOT NULL,
    InstitutionName TEXT,
    InstitutionType TEXT,
    City TEXT,
    State TEXT,
    Zip TEXT,
    EnrollmentUndergrad INTEGER,
    EnrollmentGrad INTEGER,
    FacultyCount INTEGER,
    StaffCount INTEGER,
    EndowmentMUSD REAL,
    TuitionInState REAL,
    TuitionOutState REAL,
    AcceptanceRatePct REAL,
    AvgSATScore INTEGER,
    AvgACTScore REAL,
    GraduationRatePct REAL,
    RetentionRatePct REAL,
    ResearchExpenditureMUSD REAL,
    NetRevenueMUSD REAL,
    AccreditationBody TEXT,
    YearFounded INTEGER,
    CampusSizeAcres REAL,
    Latitude REAL,
    Longitude REAL
);
INSERT INTO higher_education_institutions (InstitutionID,InstitutionName,InstitutionType,City,State,Zip,EnrollmentUndergrad,EnrollmentGrad,FacultyCount,StaffCount,EndowmentMUSD,TuitionInState,TuitionOutState,AcceptanceRatePct,AvgSATScore,AvgACTScore,GraduationRatePct,RetentionRatePct,ResearchExpenditureMUSD,NetRevenueMUSD,AccreditationBody,YearFounded,CampusSizeAcres,Latitude,Longitude) VALUES ('UNI001','State University','Public','Capitol City','CA','90001',25000,8000,1200,1500,2500.5,12000,25000,55.0,1250,27.5,78.0,85.0,500.0,300.0','Regional Accrediting Commission',1890,1500.5,34.0522,-118.2437);
INSERT INTO higher_education_institutions (InstitutionID,InstitutionName,InstitutionType,City,State,Zip,EnrollmentUndergrad,EnrollmentGrad,FacultyCount,StaffCount,EndowmentMUSD,TuitionInState,TuitionOutState,AcceptanceRatePct,AvgSATScore,AvgACTScore,GraduationRatePct,RetentionRatePct,ResearchExpenditureMUSD,NetRevenueMUSD,AccreditationBody,YearFounded,CampusSizeAcres,Latitude,Longitude) VALUES ('UNI002','Tech Institute','Private','Techville','TX','73301',8000,3000,600,800,1200.0,25000,35000,30.0,1380,30.2,88.0,92.0,350.0,200.0','National Accrediting Agency',1965,450.3,30.2672,-97.7431);
INSERT INTO higher_education_institutions (InstitutionID,InstitutionName,InstitutionType,City,State,Zip,EnrollmentUndergrad,EnrollmentGrad,FacultyCount,StaffCount,EndowmentMUSD,TuitionInState,TuitionOutState,AcceptanceRatePct,AvgSATScore,AvgACTScore,GraduationRatePct,RetentionRatePct,ResearchExpenditureMUSD,NetRevenueMUSD,AccreditationBody,YearFounded,CampusSizeAcres,Latitude,Longitude) VALUES ('UNI003','Liberal Arts College','Private','River Town','NY','10001',3000,500,250,350,800.0,22000,30000,65.0,1150,26.0,82.0,87.0,100.0,80.0','Regional Accrediting Commission',1920,300.0,40.7128,-74.0060);

-- Research Funding Awards
CREATE TABLE research_funding_awards (
    AwardID TEXT NOT NULL,
    GrantTitle TEXT,
    PI_Name TEXT,
    InstitutionID TEXT,
    FundingAgency TEXT,
    AwardAmount REAL,
    StartDate DATE,
    EndDate DATE,
    ProjectCategory TEXT,
    ProgramArea TEXT,
    Keywords TEXT,
    Abstract TEXT,
    FundingMechanism TEXT,
    DirectCost REAL,
    IndirectCost REAL,
    TotalCost REAL,
    Status TEXT,
    ReviewScore REAL,
    AwardNumber TEXT,
    ReportingRequirements TEXT,
    PublicAccessURL TEXT
);
INSERT INTO research_funding_awards (AwardID,GrantTitle,PI_Name,InstitutionID,FundingAgency,AwardAmount,StartDate,EndDate,ProjectCategory,ProgramArea,Keywords,Abstract,FundingMechanism,DirectCost,IndirectCost,TotalCost,Status,ReviewScore,AwardNumber,ReportingRequirements,PublicAccessURL) VALUES ('RA001','Quantum Computing Initiative','Dr Jane Smith','UNI001','National Science Foundation','5000000','2022-09-01','2025-08-31','Technology','Computing','Quantum,Algorithms','Develop scalable quantum algorithms for optimization','Grant','4000000','1000000','5000000','Active',92.5,'NSF2022QCI','Annual Report','https://nsf.gov/qci');
INSERT INTO research_funding_awards (AwardID,GrantTitle,PI_Name,InstitutionID,FundingAgency,AwardAmount,StartDate,EndDate,ProjectCategory,ProgramArea,Keywords,Abstract,FundingMechanism,DirectCost,IndirectCost,TotalCost,Status,ReviewScore,AwardNumber,ReportingRequirements,PublicAccessURL) VALUES ('RA002','Renewable Energy Storage','Dr Alan Brown','UNI002','Department of Energy','3000000','2021-01-15','2024-12-31','Energy','Materials','Battery,Storage','Design high-capacity battery materials for grid storage','Cooperative Agreement','2500000','500000','3000000','Active',88.0,'DOE2021RES','Semiannual Report','https://doe.gov/renewable');
INSERT INTO research_funding_awards (AwardID,GrantTitle,PI_Name,InstitutionID,FundingAgency,AwardAmount,StartDate,EndDate,ProjectCategory,ProgramArea,Keywords,Abstract,FundingMechanism,DirectCost,IndirectCost,TotalCost,Status,ReviewScore,AwardNumber,ReportingRequirements,PublicAccessURL) VALUES ('RA003','Social Media Impact Study','Dr Maria Lopez','UNI003','National Institutes of Health','1200000','2023-03-01','2026-02-28','Health','Behavioral Science','Social Media,Adolescents','Assess mental health outcomes linked to social media use','Grant','1000000','200000','1200000','Pending',NULL,'NIH2023SMI','Quarterly Report','https://nih.gov/smi');

-- Public Transport Network
CREATE TABLE public_transport_network (
    NetworkID TEXT NOT NULL,
    OperatorName TEXT,
    ServiceArea TEXT,
    Mode TEXT,
    RouteCount INTEGER,
    FleetSize INTEGER,
    AvgDailyRidership INTEGER,
    AnnualRidership INTEGER,
    PeakHourFrequency INTEGER,
    ServiceHoursPerDay INTEGER,
    OnTimePerformancePct REAL,
    FareStructure TEXT,
    SubsidyAmount REAL,
    CapitalInvestmentMUSD REAL,
    EmissionsMetricCO2t REAL,
    AccessibilityScore REAL,
    CustomerSatisfactionScore REAL,
    SafetyIncidentsYear INTEGER,
    MaintenanceCostMUSD REAL,
    FundingSource TEXT,
    YearEstablished INTEGER,
    ContactEmail TEXT
);
INSERT INTO public_transport_network (NetworkID,OperatorName,ServiceArea,Mode,RouteCount,FleetSize,AvgDailyRidership,AnnualRidership,PeakHourFrequency,ServiceHoursPerDay,OnTimePerformancePct,FareStructure,SubsidyAmount,CapitalInvestmentMUSD,EmissionsMetricCO2t,AccessibilityScore,CustomerSatisfactionScore,SafetyIncidentsYear,MaintenanceCostMUSD,FundingSource,YearEstablished,ContactEmail) VALUES ('PN001','MetroTransit','Metro Region','Bus',120,300,250000,91250000,15,18,92.3,'Flat Fare',$15000000,85.0,1200.5,8.5,85.0,12,10.5,'Federal Grants',1985,'info@metrotransit.org');
INSERT INTO public_transport_network (NetworkID,OperatorName,ServiceArea,Mode,RouteCount,FleetSize,AvgDailyRidership,AnnualRidership,PeakHourFrequency,ServiceHoursPerDay,OnTimePerformancePct,FareStructure,SubsidyAmount,CapitalInvestmentMUSD,EmissionsMetricCO2t,AccessibilityScore,CustomerSatisfactionScore,SafetyIncidentsYear,MaintenanceCostMUSD,FundingSource,YearEstablished,ContactEmail) VALUES ('PN002','CityRail','Urban Core','Light Rail',45,90,180000,65700000,10,20,96.7,'Zone Based',$20000000,120.0,800.2,5.0,90.0,78,8.2,'State Funding',1998,'contact@cityrail.com');
INSERT INTO public_transport_network (NetworkID,OperatorName,ServiceArea,Mode,RouteCount,FleetSize,AvgDailyRidership,AnnualRidership,PeakHourFrequency,ServiceHoursPerDay,OnTimePerformancePct,FareStructure,SubsidyAmount,CapitalInvestmentMUSD,EmissionsMetricCO2t,AccessibilityScore,CustomerSatisfactionScore,SafetyIncidentsYear,MaintenanceCostMUSD,FundingSource,YearEstablished,ContactEmail) VALUES ('PN003','RiverShuttle','River Valley','Ferry',12,25,50000,18250000,5,16,88.0,'Ticketed',$5000000,35.0,300.0,7.2,80.0,65,6.5,'Public-Private Partnership',2005,'support@rivershuttle.net');

-- Emergency Services Resources
CREATE TABLE emergency_services_resources (
    AgencyID TEXT NOT NULL,
    AgencyName TEXT,
    Jurisdiction TEXT,
    PrimaryDisasterType TEXT,
    PersonnelCount INTEGER,
    VehiclesCount INTEGER,
    StationsCount INTEGER,
    AnnualBudgetMUSD REAL,
    AverageResponseTimeMin REAL,
    CoverageAreaSqMi REAL,
    MutualAidAgreements INTEGER,
    TrainingHoursPerPersonnel REAL,
    EquipmentInventoryValueMUSD REAL,
    FundingSource TEXT,
    IncidentCountYear INTEGER,
    FatalitiesYear INTEGER,
    InjuriesYear INTEGER,
    RescueMissionsYear INTEGER,
    CommunityEducationHours INTEGER,
    PublicAlertSystem TEXT,
    GISCoveragePct REAL,
    ContactPhone TEXT
);
INSERT INTO emergency_services_resources (AgencyID,AgencyName,Jurisdiction,PrimaryDisasterType,PersonnelCount,VehiclesCount,StationsCount,AnnualBudgetMUSD,AverageResponseTimeMin,CoverageAreaSqMi,MutualAidAgreements,TrainingHoursPerPersonnel,EquipmentInventoryValueMUSD,FundingSource,IncidentCountYear,FatalitiesYear,InjuriesYear,RescueMissionsYear,CommunityEducationHours,PublicAlertSystem,GISCoveragePct,ContactPhone) VALUES ('ES001','County Fire Department','County A','Wildfire',250,80,12,45.0,6.5,1500,8,40.0,12.5,'State Funding',1200,15,45,300,2000,'Tsunami Warning',98.5,'5551112222');
INSERT INTO emergency_services_resources (AgencyID,AgencyName,Jurisdiction,PrimaryDisasterType,PersonnelCount,VehiclesCount,StationsCount,AnnualBudgetMUSD,AverageResponseTimeMin,CoverageAreaSqMi,MutualAidAgreements,TrainingHoursPerPersonnel,EquipmentInventoryValueMUSD,FundingSource,IncidentCountYear,FatalitiesYear,InjuriesYear,RescueMissionsYear,CommunityEducationHours,PublicAlertSystem,GISCoveragePct,ContactPhone) VALUES ('ES002','City EMS','City B','Medical Emergency',180,45,7,30.0,5.2,800,5,35.0,8.0,'Municipal Funds',1800,2,120,500,1500,'Siren System',95.0,'5553334444');
INSERT INTO emergency_services_resources (AgencyID,AgencyName,Jurisdiction,PrimaryDisasterType,PersonnelCount,VehiclesCount,StationsCount,AnnualBudgetMUSD,AverageResponseTimeMin,CoverageAreaSqMi,MutualAidAgreements,TrainingHoursPerPersonnel,EquipmentInventoryValueMUSD,FundingSource,IncidentCountYear,FatalitiesYear,InjuriesYear,RescueMissionsYear,CommunityEducationHours,PublicAlertSystem,GISCoveragePct,ContactPhone) VALUES ('ES003','Regional Search and Rescue','Region C','Mountain Rescue',90,30,4,20.0,7.8,2500,3,50.0,5.5,'Federal Grants',300,0,5,120,800,'Radio Broadcast',92.3,'5557778888');

-- State Budget Allocations
CREATE TABLE state_budget_allocations (
    FiscalYear INTEGER NOT NULL,
    StateCode TEXT NOT NULL,
    TotalRevenueMUSD REAL,
    TotalExpenditureMUSD REAL,
    EducationAllocationPct REAL,
    HealthAllocationPct REAL,
    TransportationAllocationPct REAL,
    SafetyAllocationPct REAL,
    EnvironmentalAllocationPct REAL,
    CapitalOutlayPct REAL,
    DebtServiceMUSD REAL,
    RainyDayFundMUSD REAL,
    UnfundedLiabilitiesMUSD REAL,
    RevenueSourceTax REAL,
    RevenueSourceFees REAL,
    RevenueSourceFederal REAL,
    ExpenditureCategoryK12 REAL,
    ExpenditureCategoryHigherEd REAL,
    ExpenditureCategoryPublicHealth REAL,
    ExpenditureCategoryInfrastructure REAL,
    ExpenditureCategorySocialServices REAL,
    BudgetSurplusDeficitMUSD REAL,
    AuditorName TEXT,
    AuditDate DATE
);
INSERT INTO state_budget_allocations (FiscalYear,StateCode,TotalRevenueMUSD,TotalExpenditureMUSD,EducationAllocationPct,HealthAllocationPct,TransportationAllocationPct,SafetyAllocationPct,EnvironmentalAllocationPct,CapitalOutlayPct,DebtServiceMUSD,RainyDayFundMUSD,UnfundedLiabilitiesMUSD,RevenueSourceTax,RevenueSourceFees,RevenueSourceFederal,ExpenditureCategoryK12,ExpenditureCategoryHigherEd,ExpenditureCategoryPublicHealth,ExpenditureCategoryInfrastructure,ExpenditureCategorySocialServices,BudgetSurplusDeficitMUSD,AuditorName,AuditDate) VALUES (2022,'CA',450000,440000,20.0,15.0,10.0,5.0,3.0,12.0,15000,2000,5000,80.0,5.0,10.0,88000,34000,66000,62000,56000,10000,'State Audit Office','2023-03-15');
INSERT INTO state_budget_allocations (FiscalYear,StateCode,TotalRevenueMUSD,TotalExpenditureMUSD,EducationAllocationPct,HealthAllocationPct,TransportationAllocationPct,SafetyAllocationPct,EnvironmentalAllocationPct,CapitalOutlayPct,DebtServiceMUSD,RainyDayFundMUSD,UnfundedLiabilitiesMUSD,RevenueSourceTax,RevenueSourceFees,RevenueSourceFederal,ExpenditureCategoryK12,ExpenditureCategoryHigherEd,ExpenditureCategoryPublicHealth,ExpenditureCategoryInfrastructure,ExpenditureCategorySocialServices,BudgetSurplusDeficitMUSD,AuditorName,AuditDate) VALUES (2022,'TX',300000,295000,19.0,16.0,11.0,4.5,2.5,13.0,12000,1500,4000,78.0,4.0,9.0,72000,26000,58000,54000,47000,8000,'State Comptroller','2023-04-20');
INSERT INTO state_budget_allocations (FiscalYear,StateCode,TotalRevenueMUSD,TotalExpenditureMUSD,EducationAllocationPct,HealthAllocationPct,TransportationAllocationPct,SafetyAllocationPct,EnvironmentalAllocationPct,CapitalOutlayPct,DebtServiceMUSD,RainyDayFundMUSD,UnfundedLiabilitiesMUSD,RevenueSourceTax,RevenueSourceFees,RevenueSourceFederal,ExpenditureCategoryK12,ExpenditureCategoryHigherEd,ExpenditureCategoryPublicHealth,ExpenditureCategoryInfrastructure,ExpenditureCategorySocialServices,BudgetSurplusDeficitMUSD,AuditorName,AuditDate) VALUES (2022,'NY',410000,405000,21.0,14.5,9.5,5.5,3.5,11.5,13000,1800,4500,82.0,6.0,11.0,82000,31000,63000,61000,53000,5000,'Office of the Auditor General','2023-05-10');