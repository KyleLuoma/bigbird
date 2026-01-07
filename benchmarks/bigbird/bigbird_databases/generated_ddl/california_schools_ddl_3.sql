-- District public art projects associated with schools
CREATE TABLE district_public_art_projects
(
    ProjectID               TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    ProjectName             TEXT NULL,
    ArtistName              TEXT NULL,
    YearInstalled           INTEGER NULL,
    LocationDescription     TEXT NULL,
    Status                  TEXT NULL,
    FundingSource           TEXT NULL,
    EstimatedCost           REAL NULL,
    ActualCost              REAL NULL,
    MaterialsUsed           TEXT NULL,
    MaintenancePlan         TEXT NULL,
    CommunityEngagementHours INTEGER NULL,
    PhotoReference          TEXT NULL,
    PermitNumber            TEXT NULL,
    ApprovalDate            DATE NULL,
    CompletionDate          DATE NULL,
    CoordinatesLat          REAL NULL,
    CoordinatesLong         REAL NULL,
    Comments                TEXT NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO district_public_art_projects (ProjectID, CDSCode, ProjectName, ArtistName, YearInstalled, LocationDescription, Status, FundingSource, EstimatedCost, ActualCost, MaterialsUsed, MaintenancePlan, CommunityEngagementHours, PhotoReference, PermitNumber, ApprovalDate, CompletionDate, CoordinatesLat, CoordinatesLong, Comments) VALUES 
('PA001','CDS001','SunriseMural','JaneDoe',2020,'NorthHall','Completed','DistrictGrant',50000,47500,'Acrylic','AnnualReview',120,'sunrise.jpg','PN123','2020-01-15','2020-03-20',34.0522,-118.2437,''),
('PA002','CDS002','RiverSculpture','JohnSmith',2021,'MainQuad','InProgress','CommunityDonations',80000,0,'Bronze','BiAnnualCheck',0,'river.png','PN456','2021-04-10',NULL,36.1699,-115.1398,'Awaiting final approval'),
('PA003','CDS003','LibertyMosaic','AnaLee',2019,'LibraryFacade','Completed','StateArtsFund',60000,59500,'Tile','QuarterlyReview',200,'liberty.jpg','PN789','2019-02-05','2019-06-12',40.7128,-74.0060,'');

-- School food service inspection records
CREATE TABLE school_food_service_inspections
(
    InspectionID            TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    InspectionDate          DATE NULL,
    InspectorName           TEXT NULL,
    KitchenCleanlinessScore INTEGER NULL,
    FoodTemperatureLogScore INTEGER NULL,
    PestControlScore        INTEGER NULL,
    ComplianceStatus        TEXT NULL,
    ViolationsCount         INTEGER NULL,
    FollowUpDate            DATE NULL,
    CorrectiveActionPlan    TEXT NULL,
    Notes                   TEXT NULL,
    WaterQualityScore       INTEGER NULL,
    WasteManagementScore    INTEGER NULL,
    EquipmentConditionScore INTEGER NULL,
    StaffHygieneScore       INTEGER NULL,
    SolarPanelInspectionScore REAL NULL,
    RefrigerationAuditScore REAL NULL,
    OverallScore            REAL NULL,
    SignatureName           TEXT NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO school_food_service_inspections (InspectionID, CDSCode, InspectionDate, InspectorName, KitchenCleanlinessScore, FoodTemperatureLogScore, PestControlScore, ComplianceStatus, ViolationsCount, FollowUpDate, CorrectiveActionPlan, Notes, WaterQualityScore, WasteManagementScore, EquipmentConditionScore, StaffHygieneScore, SolarPanelInspectionScore, RefrigerationAuditScore, OverallScore, SignatureName) VALUES 
('INSP001','CDS001','2022-05-10','MikeRogers',95,92,88,'Compliant',0,'2022-06-01','MonthlyTraining','All good',90,85,88,93,0.0,0.0,90.5,'MikeRogers'),
('INSP002','CDS002','2022-04-22','LauraKim',80,78,70,'NonCompliant',3,'2022-05-15','PestControlFollowUp','Minor temperature issues',75,80,78,70,0.0,0.0,74.5,'LauraKim'),
('INSP003','CDS003','2022-06-18','SamLee',88,85,90,'Compliant',1,'2022-07-10','CorrectiveActionPlan1','One violation corrected',85,88,86,89,0.0,0.0,86.5,'SamLee');

-- Teacher health and wellness programs
CREATE TABLE teacher_health_wellness_programs
(
    ProgramID               TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    ProgramName             TEXT NULL,
    StartDate               DATE NULL,
    EndDate                 DATE NULL,
    ProviderOrganization    TEXT NULL,
    ParticipationRate       REAL NULL,
    SessionsHeld            INTEGER NULL,
    AvgSessionDurationMinutes INTEGER NULL,
    HealthFocusArea         TEXT NULL,
    WellnessPointsEarned    INTEGER NULL,
    IncentiveDescription    TEXT NULL,
    BudgetAllocated         REAL NULL,
    BudgetSpent             REAL NULL,
    CoordinatorName         TEXT NULL,
    EvaluationScore         REAL NULL,
    FeedbackComments        TEXT NULL,
    OnlineAccessURL         TEXT NULL,
    CertificationOffered    TEXT NULL,
    RenewalRequired         INTEGER NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO teacher_health_wellness_programs (ProgramID, CDSCode, ProgramName, StartDate, EndDate, ProviderOrganization, ParticipationRate, SessionsHeld, AvgSessionDurationMinutes, HealthFocusArea, WellnessPointsEarned, IncentiveDescription, BudgetAllocated, BudgetSpent, CoordinatorName, EvaluationScore, FeedbackComments, OnlineAccessURL, CertificationOffered, RenewalRequired) VALUES 
('HW001','CDS001','MindfulTeaching','2022-01-15','2022-12-31','WellnessCo',0.78,24,60,'StressReduction',240,'GiftCard',12000,11500,'EmilyClark',4.5,'Positive feedback overall','http://wellnessco.edu','WellnessCert',1),
('HW002','CDS002','FitTeachers','2022-03-01','2022-11-30','FitForce',0.65,18,45,'PhysicalFitness',180,'GymPass',10000,9500,'JohnDoe',4.0,'Needs more variety','http://fitforce.org','FitnessCert',0),
('HW003','CDS003','NutritionBasics','2022-02-10','2022-10-20','HealthFirst',0.55,12,30,'Nutrition',120,'HealthySnackBox',8000,7500,'SarahLee',3.8,'Good but could be more interactive','http://healthfirst.net','NutritionCert',1);

-- Student transportation passes
CREATE TABLE student_transportation_passes
(
    PassID                  TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    StudentID               TEXT NULL,
    IssueDate               DATE NULL,
    ExpirationDate          DATE NULL,
    PassType                TEXT NULL,
    ZoneCode                TEXT NULL,
    Cost                    REAL NULL,
    SubsidyAmount           REAL NULL,
    PaymentMethod           TEXT NULL,
    BusRouteNumber          INTEGER NULL,
    SeatNumber              INTEGER NULL,
    ActiveFlag              INTEGER NULL,
    LostCount               INTEGER NULL,
    ReplacementFee          REAL NULL,
    IssuingOfficer          TEXT NULL,
    ContactPhone            TEXT NULL,
    EmailAddress            TEXT NULL,
    Notes                   TEXT NULL,
    LastUpdated             DATE NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO student_transportation_passes (PassID, CDSCode, StudentID, IssueDate, ExpirationDate, PassType, ZoneCode, Cost, SubsidyAmount, PaymentMethod, BusRouteNumber, SeatNumber, ActiveFlag, LostCount, ReplacementFee, IssuingOfficer, ContactPhone, EmailAddress, Notes, LastUpdated) VALUES 
('PASS001','CDS001','STU1001','2022-08-01','2023-07-31','Annual','Z1',200.00,50.00,'CreditCard',12,5,1,0,25.00,'OfficerA','5551234567','parent1@example.com','First year pass', '2022-08-01'),
('PASS002','CDS002','STU2002','2022-09-15','2023-09-14','Semester','Z2',120.00,30.00,'Cash',8,12,1,1,20.00,'OfficerB','5559876543','parent2@example.com','Lost once, replaced', '2022-09-15'),
('PASS003','CDS003','STU3003','2022-07-10','2023-07-09','Annual','Z3',210.00,0.00,'Check',5,3,0,0,0.00,'OfficerC','5555555555','parent3@example.com','Expired', '2022-07-10');

-- Facility security camera logs
CREATE TABLE facility_security_camera_logs
(
    LogID                   TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    CameraID                TEXT NULL,
    InstallationDate        DATE NULL,
    LocationDescription     TEXT NULL,
    Resolution              TEXT NULL,
    FrameRate               INTEGER NULL,
    NightVisionEnabled      INTEGER NULL,
    FirmwareVersion         TEXT NULL,
    LastMaintenanceDate     DATE NULL,
    Status                  TEXT NULL,
    MotionDetectedCount     INTEGER NULL,
    RecordedIncidents       INTEGER NULL,
    StorageCapacityGB       REAL NULL,
    RetentionPeriodDays     INTEGER NULL,
    OperatorName            TEXT NULL,
    VerificationStatus      TEXT NULL,
    Remarks                 TEXT NULL,
    Latitude                REAL NULL,
    Longitude               REAL NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO facility_security_camera_logs (LogID, CDSCode, CameraID, InstallationDate, LocationDescription, Resolution, FrameRate, NightVisionEnabled, FirmwareVersion, LastMaintenanceDate, Status, MotionDetectedCount, RecordedIncidents, StorageCapacityGB, RetentionPeriodDays, OperatorName, VerificationStatus, Remarks, Latitude, Longitude) VALUES 
('CAM001','CDS001','C001','2021-01-10','MainEntrance','1080p',30,1,'v1.2.3','2022-04-01','Active',450,12,256.0,90,'TechMike','Verified','No issues',34.0522,-118.2437),
('CAM002','CDS002','C002','2020-06-15','ParkingLot','720p',25,1,'v1.1.0','2022-03-15','Active',320,8,128.0,60,'TechAnna','Verified','Adjusted angle',36.1699,-115.1398),
('CAM003','CDS003','C003','2019-11-20','Gymnasium','1080p',30,0,'v1.0.5','2022-02-20','Inactive',0,0,64.0,30,'TechJohn','Pending','Camera offline for maintenance',40.7128,-74.0060);

-- Community event participation records
CREATE TABLE community_event_participation
(
    ParticipationID         TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    EventName               TEXT NULL,
    EventDate               DATE NULL,
    Organizer               TEXT NULL,
    ParticipantCount        INTEGER NULL,
    VolunteerHours          INTEGER NULL,
    SponsorshipAmount       REAL NULL,
    MediaCoverage           TEXT NULL,
    FeedbackScore           REAL NULL,
    EventType               TEXT NULL,
    Location                TEXT NULL,
    RegistrationDeadline    DATE NULL,
    ContactPerson           TEXT NULL,
    ContactPhone            TEXT NULL,
    ContactEmail            TEXT NULL,
    EventTheme              TEXT NULL,
    OutcomeSummary          TEXT NULL,
    FollowUpActions         TEXT NULL,
    LastModified            DATE NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO community_event_participation (ParticipationID, CDSCode, EventName, EventDate, Organizer, ParticipantCount, VolunteerHours, SponsorshipAmount, MediaCoverage, FeedbackScore, EventType, Location, RegistrationDeadline, ContactPerson, ContactPhone, ContactEmail, EventTheme, OutcomeSummary, FollowUpActions, LastModified) VALUES 
('EVT001','CDS001','FallScienceFair','2022-10-15','ScienceDept',300,120,5000,'LocalNews',4.7,'Fair','Auditorium','2022-09-30','DrSmith','5551112222','smith@example.com','Innovation','High engagement and awards','Plan next year improvements','2022-10-20'),
('EVT002','CDS002','CommunityHealthScreening','2022-08-05','HealthDept',150,80,2000,'Radio','4.2','Screening','Gym','2022-07-20','NurseLee','5553334444','lee@example.com','Wellness','Identified health needs','Follow up with referrals','2022-08-07'),
('EVT003','CDS003','ArtWalk','2022-09-12','ArtsCouncil',500,200,7500,'SocialMedia','4.9','Exhibit','SchoolCourtyard','2022-08-30','MsBrown','5555556666','brown@example.com','Creativity','Positive community response','Schedule next quarter','2022-09-13');

-- Environmental sustainability initiatives
CREATE TABLE environmental_sustainability_initiatives
(
    InitiativeID            TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    InitiativeName          TEXT NULL,
    LaunchDate              DATE NULL,
    Category                TEXT NULL,
    TargetMetric            TEXT NULL,
    BaselineValue           REAL NULL,
    CurrentValue            REAL NULL,
    ReductionPercentage     REAL NULL,
    FundingSource           TEXT NULL,
    ResponsibleDept         TEXT NULL,
    LeadCoordinator         TEXT NULL,
    Status                  TEXT NULL,
    ExpectedCompletionDate DATE NULL,
    Achievements            TEXT NULL,
    Challenges              TEXT NULL,
    PartnerOrganizations    TEXT NULL,
    PublicReportsURL        TEXT NULL,
    CarbonFootprintSavedTons REAL NULL,
    Notes                   TEXT NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO environmental_sustainability_initiatives (InitiativeID, CDSCode, InitiativeName, LaunchDate, Category, TargetMetric, BaselineValue, CurrentValue, ReductionPercentage, FundingSource, ResponsibleDept, LeadCoordinator, Status, ExpectedCompletionDate, Achievements, Challenges, PartnerOrganizations, PublicReportsURL, CarbonFootprintSavedTons, Notes) VALUES 
('ENV001','CDS001','SolarPanelInstallation','2021-03-01','Energy','PeakPowerKW',0,150,100,'GreenGrant','Facilities','LauraGreen','Completed','2022-02-28','Reduced electricity bill by 30%','Roof structural limitations','SolarCo','http://reports.school1.org/solar','0.5',''),
('ENV002','CDS002','ZeroWasteProgram','2020-09-15','Waste','LandfillTonnes',200,120,40,'CommunityFund','Operations','MarkWhite','Ongoing','2023-12-31','Diverted 80 tonnes','Participating staff buy-in','EcoPartners','http://reports.school2.org/zerowaste','0.3','Need more recycling bins'),
('ENV003','CDS003','WaterConservation','2022-01-10','Water','GallonsUsedPerDay',5000,3800,24,'StateAid','Facilities','NinaBlue','Planning','2023-06-30','Projected 15% reduction','Aging plumbing','WaterTech','http://reports.school3.org/water','0.2','');

-- Technology support tickets
CREATE TABLE technology_support_tickets
(
    TicketID                TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    DeviceID                TEXT NULL,
    IssueDate               DATE NULL,
    ReportedBy              TEXT NULL,
    IssueCategory           TEXT NULL,
    PriorityLevel           TEXT NULL,
    Description             TEXT NULL,
    AssignedTechnician      TEXT NULL,
    ResolutionDate          DATE NULL,
    ResolutionSummary       TEXT NULL,
    Status                  TEXT NULL,
    DowntimeHours           REAL NULL,
    ImpactedUsers           INTEGER NULL,
    SoftwareVersion         TEXT NULL,
    HardwareModel           TEXT NULL,
    WarrantyStatus          TEXT NULL,
    EscalationLevel         INTEGER NULL,
    CustomerSatisfactionScore REAL NULL,
    LastUpdated             DATE NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO technology_support_tickets (TicketID, CDSCode, DeviceID, IssueDate, ReportedBy, IssueCategory, PriorityLevel, Description, AssignedTechnician, ResolutionDate, ResolutionSummary, Status, DowntimeHours, ImpactedUsers, SoftwareVersion, HardwareModel, WarrantyStatus, EscalationLevel, CustomerSatisfactionScore, LastUpdated) VALUES 
('TKT001','CDS001','DEV1001','2022-07-05','TeacherA','Printer','High','Paper jam in hallway printer','TechMike','2022-07-06','Cleared jam and reset','Resolved',0.5,25,'v2.1','HP LaserJet','InWarranty',1,4.8,'2022-07-06'),
('TKT002','CDS002','DEV2002','2022-08-12','StudentB','WiFi','Medium','Intermittent connectivity in library','TechAnna','2022-08-14','Replaced access point','Resolved',2.0,45,'v5.0','Cisco AP','OutOfWarranty',2,4.2,'2022-08-14'),
('TKT003','CDS003','DEV3003','2022-09-20','AdminC','Software','Low','Update failure on accounting software','TechJohn','2022-09-22','Reinstalled patch','Resolved',1.0,5,'v3.4','Dell OptiPlex','InWarranty',1,4.5','2022-09-22');

-- Extracurricular club finances
CREATE TABLE extracurricular_club_finances
(
    RecordID                TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    ClubName                TEXT NULL,
    FiscalYear              INTEGER NULL,
    BudgetAllocated         REAL NULL,
    IncomeDonations         REAL NULL,
    IncomeFundraisers       REAL NULL,
    ExpenditureSupplies     REAL NULL,
    ExpenditureEvents       REAL NULL,
    ExpenditureTravel       REAL NULL,
    NetBalance              REAL NULL,
    TreasurerName           TEXT NULL,
    AuditStatus             TEXT NULL,
    LastAuditDate           DATE NULL,
    FundingSource           TEXT NULL,
    MembershipFeesCollected REAL NULL,
    SponsorshipsReceived    REAL NULL,
    FinancialNotes          TEXT NULL,
    ApprovalSignature       TEXT NULL,
    UpdatedTimestamp        DATE NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO extracurricular_club_finances (RecordID, CDSCode, ClubName, FiscalYear, BudgetAllocated, IncomeDonations, IncomeFundraisers, ExpenditureSupplies, ExpenditureEvents, ExpenditureTravel, NetBalance, TreasurerName, AuditStatus, LastAuditDate, FundingSource, MembershipFeesCollected, SponsorshipsReceived, FinancialNotes, ApprovalSignature, UpdatedTimestamp) VALUES 
('FIN001','CDS001','ChessClub',2022,5000,1200,800,600,1500,400,1500,'LauraKing','Approved','2022-03-15','SchoolFund',2000,300,'All receipts archived','PrincipalA','2022-04-01'),
('FIN002','CDS002','RoboticsTeam',2022,10000,2500,1800,1200,3000,1500,3000,'MikeBrown','Pending','2022-02-28','GrantTech','4000',500,'Pending equipment invoices','PrincipalB','2022-03-20'),
('FIN003','CDS003','DramaClub',2022,7000,900,1200,800,2000,0,3100,'SusanWhite','Approved','2022-04-10','AlumniDonations',2500,400,'Extra funding for costumes','PrincipalC','2022-04-15');

-- School medical immunization records
CREATE TABLE school_medical_immunization_records
(
    RecordID                TEXT NOT NULL PRIMARY KEY,
    CDSCode                 TEXT NULL,
    StudentID               TEXT NULL,
    StudentFirstName        TEXT NULL,
    StudentLastName         TEXT NULL,
    DOB                     DATE NULL,
    ImmunizationType        TEXT NULL,
    DoseNumber              INTEGER NULL,
    AdministrationDate      DATE NULL,
    ProviderName            TEXT NULL,
    LotNumber               TEXT NULL,
    ExpirationDate          DATE NULL,
    Site                    TEXT NULL,
    ReactionObserved        TEXT NULL,
    FollowUpRequired        INTEGER NULL,
    RecordVerifiedBy        TEXT NULL,
    VerificationDate        DATE NULL,
    Notes                   TEXT NULL,
    Status                  TEXT NULL,
    LastUpdated             DATE NULL,
    FOREIGN KEY (CDSCode) REFERENCES schools (CDSCode)
);

INSERT INTO school_medical_immunization_records (RecordID, CDSCode, StudentID, StudentFirstName, StudentLastName, DOB, ImmunizationType, DoseNumber, AdministrationDate, ProviderName, LotNumber, ExpirationDate, Site, ReactionObserved, FollowUpRequired, RecordVerifiedBy, VerificationDate, Notes, Status, LastUpdated) VALUES 
('IMM001','CDS001','STU001','Alex','Johnson','2010-05-12','MMR',1,'2021-08-15','HealthClinic','LN123','2023-12-31','LeftArm','None',0,'NurseAmy','2021-08-16','','Completed','2021-08-16'),
('IMM002','CDS002','STU002','Bella','Smith','2009-11-03','Varicella',2,'2022-09-10','DoctorLee','LN456','2024-06-30','RightThigh','MildRash',1,'NurseTom','2022-09-11','Observe rash for 48h','Pending','2022-09-11'),
('IMM003','CDS003','STU003','Carter','Davis','2011-02-20','Tdap',1,'2020-03-05','HealthCenter','LN789','2022-08-15','LeftDeltoid','None',0,'NurseSara','2020-03-06','','Completed','2020-03-06');-- District greenhouse gas emissions inventory
CREATE TABLE district_emissions_inventory
(
    RecordID               INTEGER PRIMARY KEY,
    DistrictCode           TEXT,
    EmissionYear           INTEGER,
    CO2_Tons               REAL,
    CH4_Tons               REAL,
    N2O_Tons               REAL,
    Scope1_Emissions       REAL,
    Scope2_Emissions       REAL,
    Scope3_Emissions       REAL,
    EnergyConsumption_MWh  REAL,
    TransportationMiles    REAL,
    WasteGenerated_Tons    REAL,
    RecycledWaste_Tons     REAL,
    SolarGeneration_MWh    REAL,
    WindGeneration_MWh     REAL,
    ReportingDate          INTEGER,
    SubmittedBy            TEXT,
    VerificationStatus     TEXT,
    Comments               TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    SourceDocument         TEXT
);
INSERT INTO district_emissions_inventory VALUES (1,'D001',2022,12500.5,210.3,15.7,8000.0,3000.0,1500.0,50000.0,120000.0,2500.0,1800.0,5000.0,2000.0,20230315,'EnvDept','Verified','Annual report','20230301','20230315','emissions2022.pdf');
INSERT INTO district_emissions_inventory VALUES (2,'D002',2022,9800.2,180.0,12.5,6200.0,2500.0,1100.0,42000.0,95000.0,2100.0,1500.0,3200.0,1500.0,20230316,'EnvDept','Pending','Preliminary data','20230302','20230316','emissions2022_d002.xlsx');
INSERT INTO district_emissions_inventory VALUES (3,'D001',2021,11980.0,205.0,14.8,7700.0,2900.0,1400.0,49000.0,118000.0,2400.0,1700.0,4700.0,1900.0,20220315,'EnvDept','Verified','Previous year','20220301','20220315','emissions2021.pdf');

-- School artistic performance log
CREATE TABLE school_artistic_performance_log
(
    PerformanceID          INTEGER PRIMARY KEY,
    SchoolCDSCode          TEXT,
    PerformanceDate        INTEGER,
    PerformanceType        TEXT,
    Title                  TEXT,
    Director               TEXT,
    Composer               TEXT,
    DurationMinutes        INTEGER,
    StudentCount           INTEGER,
    FacultyCount           INTEGER,
    AudienceCount          INTEGER,
    Venue                  TEXT,
    EquipmentNeeded        TEXT,
    FundingSource          TEXT,
    TicketRevenue          REAL,
    Expenses               REAL,
    NetProfit              REAL,
    SponsorName            TEXT,
    CommunityPartner       TEXT,
    ReviewScore            INTEGER,
    Comments               TEXT,
    RecordedMediaLink      TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER
);
INSERT INTO school_artistic_performance_log VALUES (101,'S1234',20230220,'Play','The Willow Tree','Ms Lee','N/A',90,45,5,150,'Auditorium','Lights,Sound','ArtsGrant',1200.0,800.0,400.0,'LocalBank','CommunityTheatre',85,'Well received','willowtree2023.mp4',20230201,20230220);
INSERT INTO school_artistic_performance_log VALUES (102,'S5678',20230310,'Concert','Spring Symphony','Mr Patel','Various',75,30,4,200,'Gymnasium','Instruments,Microphones','MusicFund',2500.0,1300.0,1200.0,'MusicCo','YouthOrchestra',92,'Excellent','springsymph2023.mp4',20230215,20230310);
INSERT INTO school_artistic_performance_log VALUES (103,'S1234',20230405,'Dance','Fusion Steps','Ms Gomez','N/A',60,25,3,120,'DanceStudio','SoundSystem','DanceGrant',900.0,600.0,300.0,'DanceStudioInc','CulturalCenter',78,'Positive feedback','fusionsteps2023.mp4',20230301,20230405);

-- Technology vendor contracts
CREATE TABLE technology_vendor_contracts
(
    ContractID             INTEGER PRIMARY KEY,
    VendorName             TEXT,
    VendorContact          TEXT,
    VendorPhone            TEXT,
    ContractStartDate      INTEGER,
    ContractEndDate        INTEGER,
    ServiceCategory        TEXT,
    ScopeOfWork            TEXT,
    AnnualFeeUSD           REAL,
    PaymentTermDays        INTEGER,
    RenewalOption          TEXT,
    TerminationClause      TEXT,
    SLA_ResponseHours      INTEGER,
    SLA_UptimePercent      REAL,
    SupportLevel           TEXT,
    HardwareIncluded       TEXT,
    SoftwareIncluded       TEXT,
    LicensesCount          INTEGER,
    ManagedServices        TEXT,
    DataSecurityStandard   TEXT,
    ComplianceCertifications TEXT,
    ConfidentialityLevel   TEXT,
    CreatedBy              TEXT,
    ApprovedBy             TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER
);
INSERT INTO technology_vendor_contracts VALUES (5001,'TechNova','Alice Smith','5551234567',20230101,20251231,'Network Infrastructure','Full network design and maintenance',150000.0,30,'AutoRenew','30dayNotice',4,99.9,'Premium','Routers,Switches','NetworkOS',250,'Yes','ISO27001','SOC2','High','ITDirector','CFO','20221215','20230101');
INSERT INTO technology_vendor_contracts VALUES (5002,'EduSoft','Bob Jones','5559876543',20220615,20250614,'Learning Management','LMS platform and support',85000.0,45,'OptionToRenew','60dayNotice',8,99.5,'Standard','N/A','LMSPlatform',1200,'No','GDPR','None','Medium','ITManager','CEO','20220520','20220615');
INSERT INTO technology_vendor_contracts VALUES (5003,'SecureGuard','Carol Lee','5555551212',20230401,20260331,'Cybersecurity','Managed threat detection & response',120000.0,30,'Renewable','90dayNotice',2,99.7,'Enterprise','Firewalls','SecuritySuite',300,'Yes','ISO27001,PCI-DSS','ISO27001,PCI-DSS','High','CISO','BoardChair','20230301','20230401');

-- Student field trip log
CREATE TABLE student_field_trip_log
(
    TripID                 INTEGER PRIMARY KEY,
    SchoolCDSCode          TEXT,
    TripDate               INTEGER,
    DestinationName        TEXT,
    DestinationType        TEXT,
    Purpose                TEXT,
    NumberOfStudents       INTEGER,
    NumberOfStaffChaperones INTEGER,
    TransportationMode     TEXT,
    EstimatedCostUSD       REAL,
    ActualCostUSD          REAL,
    FundingSource          TEXT,
    PreTripRiskAssessment  TEXT,
    PostTripEvaluationScore INTEGER,
    MealsProvided          TEXT,
    PermissionSlipCollected INTEGER,
    MedicalFormsOnFile     INTEGER,
    WeatherConditions      TEXT,
    SupervisorName         TEXT,
    ContactPhone           TEXT,
    EmergencyContactName   TEXT,
    EmergencyContactPhone  TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER
);
INSERT INTO student_field_trip_log VALUES (2001,'S1234',20230312,'National Museum','Museum','History curriculum',45,5,'Bus',1800.0,1750.0,'SchoolFund','Completed',88,'Yes',45,45,'Clear','Ms Lee','5551112222','John Doe','5553334444','20230220','20230313');
INSERT INTO student_field_trip_log VALUES (2002,'S5678',20230405,'Science Center','Science Center','STEM enrichment',30,4,'Van',1400.0,1380.0,'Grant','Completed',92,'Yes',30,30,'Cloudy','Mr Patel','5552223333','Jane Smith','5554445555','20230320','20230406');
INSERT INTO student_field_trip_log VALUES (2003,'S1234',20230510,'Local Farm','Agriculture','Farm-to-table program',25,3,'SchoolBus',950.0,970.0,'ParentFees','Completed',81,'Yes',25,25,'Sunny','Ms Gomez','5553334444','Emily Clark','5555556666','20230415','20230511');

-- Community parking permits
CREATE TABLE community_parking_permits
(
    PermitID               INTEGER PRIMARY KEY,
    PermitNumber           TEXT,
    IssueDate              INTEGER,
    ExpirationDate         INTEGER,
    PermitHolderName       TEXT,
    PermitHolderAddress    TEXT,
    PermitHolderPhone      TEXT,
    PermitType             TEXT,
    VehicleMakeModel       TEXT,
    LicensePlate           TEXT,
    ParkingZone            TEXT,
    AllowedDays            TEXT,
    AllowedHours           TEXT,
    IsRenewable            INTEGER,
    RenewalDate            INTEGER,
    FeeAmountUSD           REAL,
    PaymentStatus          TEXT,
    IssuedBy               TEXT,
    Notes                  TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    VerificationCode       TEXT,
    GPSLatitude            REAL,
    GPSLongitude           REAL,
    IsActive               INTEGER,
    OverrideReason         TEXT
);
INSERT INTO community_parking_permits VALUES (3001,'PC-1001',20230101,20231231,'Alice Green','123 Maple St','5557778888','Resident','Toyota Camry','ABC123','ZoneA','Mon-Fri','08:00-18:00',1,20231201,120.0,'Paid','ParkingDept','N/A',20221215,20230101,'VRFY1001',34.0522,-118.2437,1,'');
INSERT INTO community_parking_permits VALUES (3002,'PC-1002',20230215,20240214,'Bob White','456 Oak Ave','5558889999','Visitor','Ford Escape','XYZ789','ZoneB','Sat-Sun','09:00-17:00',0,0,80.0,'Unpaid','ParkingDept','Awaiting payment',20230120,20230215,'VRFY1002',40.7128,-74.0060,0,'Late fee');
INSERT INTO community_parking_permits VALUES (3003,'PC-1003',20230310,20240309,'Carol Black','789 Pine Rd','5559990000','Commercial','Chevy Silverado','LMN456','ZoneC','Mon-Sun','00:00-23:59',1,20240301,200.0,'Paid','ParkingDept','Extended permit',20230201,20230310,'VRFY1003',37.7749,-122.4194,1,'');

-- District IT asset depreciation schedule
CREATE TABLE district_it_asset_depreciation
(
    AssetID                INTEGER PRIMARY KEY,
    AssetTag               TEXT,
    AssetType              TEXT,
    Manufacturer           TEXT,
    Model                  TEXT,
    SerialNumber           TEXT,
    PurchaseDate           INTEGER,
    PurchaseCostUSD        REAL,
    UsefulLifeYears        INTEGER,
    DepreciationMethod     TEXT,
    AnnualDepreciationUSD  REAL,
    AccumulatedDepreciationUSD REAL,
    BookValueUSD           REAL,
    Location               TEXT,
    AssignedToDepartment   TEXT,
    WarrantyExpiryDate     INTEGER,
    MaintenanceContract    TEXT,
    ServiceProvider        TEXT,
    LastServiceDate        INTEGER,
    NextServiceDueDate     INTEGER,
    AssetStatus            TEXT,
    DispositionDate        INTEGER,
    DispositionMethod      TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    Notes                  TEXT,
    ComplianceStandard     TEXT,
    RegulatoryFlag         INTEGER
);
INSERT INTO district_it_asset_depreciation VALUES (4001,'IT-001','Server','Dell','PowerEdge R740','SN12345',20200115,25000.0,5,'SLN',5000.0,15000.0,10000.0,'DataCenter','ITDept','20240101','Yes','TechSupportCo','20221201','20231201','Active',0,'','20221215','20230101','Main server for district services','ISO27001',0);
INSERT INTO district_it_asset_depreciation VALUES (4002,'IT-002','Laptop','Apple','MacBook Pro','SN67890',20210620,2100.0,3,'SLN',700.0,1400.0,700.0,'AdminOffice','AdminDept','20240620','No','N/A','20220715','20230715','InUse',0,'','20220701','20210620','Teacher laptop','None',0);
INSERT INTO district_it_asset_depreciation VALUES (4003,'IT-003','Projector','Epson','PowerLite X39','SN24680',20190505,1200.0,4,'SLN',300.0,900.0,300.0,'Auditorium','Facilities','20230505','Yes','AVServices','20220310','20230310','Active',0,'','20220228','20190505','Auditorium presentation device','None',0);

-- School water quality tests
CREATE TABLE school_water_quality_tests
(
    TestID                 INTEGER PRIMARY KEY,
    SchoolCDSCode          TEXT,
    SampleDate             INTEGER,
    SamplingLocation       TEXT,
    LeadPPB                REAL,
    CopperPPB              REAL,
    ChlorineMGPL           REAL,
    pHLevel                REAL,
    HardnessMGPL           REAL,
    TemperatureC           REAL,
    BacteriaCFUPer100ml    INTEGER,
    TestMethod             TEXT,
    LabName                TEXT,
    AnalystName            TEXT,
    ResultStatus           TEXT,
    CorrectiveActionNeeded INTEGER,
    ActionPlanDescription  TEXT,
    FollowUpDate           INTEGER,
    VerifiedBy             TEXT,
    VerificationDate       INTEGER,
    Notes                  TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    DocumentReference      TEXT,
    SamplingTeamLead       TEXT,
    ComplianceThresholds  TEXT
);
INSERT INTO school_water_quality_tests VALUES (6001,'S1234',20230210,'Fountain','0.5','0.8','1.2','7.5','120','22','0','EPA','LabOne','John Doe','Pass',0,'','0','SupervisorA','20230215','All parameters within limits','20230201','20230220','labreport6001.pdf','Mike Smith','EPA standards');
INSERT INTO school_water_quality_tests VALUES (6002,'S5678',20230312,'ClassroomSink','5.2','1.1','0.9','6.8','150','21','15','EPA','LabTwo','Anna Lee','Fail',1,'Replace faucet','20230401','SupervisorB','20230320','Lead exceeds threshold','20230301','20230315','labreport6002.pdf','Laura Jones','EPA lead limit 15 ppb');
INSERT INTO school_water_quality_tests VALUES (6003,'S1234',20230408,'OutdoorPump','0.3','0.5','0.7','7.2','110','20','0','EPA','LabOne','John Doe','Pass',0,'','0','SupervisorA','20230412','No action required','20230401','20230415','labreport6003.pdf','Mike Smith','EPA standards');

-- Teacher mentorship pairs
CREATE TABLE teacher_mentorship_pairs
(
    PairID                 INTEGER PRIMARY KEY,
    MentorTeacherID        TEXT,
    MentorName             TEXT,
    MenteeTeacherID        TEXT,
    MenteeName             TEXT,
    SchoolCDSCode          TEXT,
    Department             TEXT,
    StartDate              INTEGER,
    EndDate                INTEGER,
    MeetingFrequencyWeeks INTEGER,
    LastMeetingDate        INTEGER,
    Goals                  TEXT,
    ProgressNotes          TEXT,
    EvaluationScore        INTEGER,
    MentorTrainingCompleted INTEGER,
    MenteeTrainingCompleted INTEGER,
    FeedbackFromMentee     TEXT,
    FeedbackFromMentor     TEXT,
    AdministrativeApproval TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    Comments               TEXT,
    MentorContactPhone     TEXT,
    MenteeContactPhone     TEXT,
    MentorEmail            TEXT,
    MenteeEmail            TEXT
);
INSERT INTO teacher_mentorship_pairs VALUES (7001,'T001','Laura Green','T101','Mike Brown','S1234','Math','20230101','20231231',2,20230320,'Improve instructional strategies','Mentee implementing new labs','88',1,0,'Very helpful','Appreciate guidance','Approved','20221215','20230320','','5551112222','5553334444','lgreen@school.org','mbrown@school.org');
INSERT INTO teacher_mentorship_pairs VALUES (7002,'T002','James White','T102','Sara Lee','S5678','Science','20230215','20240214',1,20230405,'Develop inquiry-based curriculum','Mentee created unit plans','92',1,1,'Excellent support','Mentee shows growth','Approved','20230120','20230405','','5552223333','5554445555','jwhite@school.org','slee@school.org');
INSERT INTO teacher_mentorship_pairs VALUES (7003,'T003','Emily Black','T103','David Kim','S1234','English','20230310','20240309',3,20230420,'Integrate technology in writing','Mentee using LMS','85',0,0,'Needs more focus','Will be more proactive','Pending','20230201','20230420','','5553334444','5555556666','eblack@school.org','dkim@school.org');

-- District grant compliance audits
CREATE TABLE district_grant_compliance_audits
(
    AuditID                INTEGER PRIMARY KEY,
    GrantName              TEXT,
    GrantID                TEXT,
    AuditDate              INTEGER,
    AuditorName            TEXT,
    AuditorFirm            TEXT,
    ComplianceScore        INTEGER,
    FindingsCount          INTEGER,
    MajorFindings          TEXT,
    MinorFindings          TEXT,
    Recommendations        TEXT,
    FollowUpRequired       INTEGER,
    FollowUpDueDate        INTEGER,
    Status                 TEXT,
    FundingAgencyContact   TEXT,
    ContactPhone           TEXT,
    DocumentationLink      TEXT,
    Remarks                TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    AuditReportFile        TEXT,
    FundingAmountUSD       REAL,
    ExpenditureVerifiedUSD REAL,
    Notes                  TEXT,
    RiskLevel              TEXT,
    CorrectiveActionPlan   TEXT
);
INSERT INTO district_grant_compliance_audits VALUES (8001,'Technology Upgrade Grant','G-001','20230315','Karen Hill','AuditExperts LLC',92,2,'Late reporting of expenses','Missing signatures','Implement timeline tracking','0','0','Closed','agency@example.com','5557778888','audit8001.pdf','All good','20230220','20230316','audit8001.pdf',200000.0,190500.0,'','Low','');
INSERT INTO district_grant_compliance_audits VALUES (8002,'STEM Innovation Grant','G-002','20230410','Mark Reed','CompliancePro','78',5,'Unreconciled travel costs','Incomplete documentation','Revise expense policy','1','20230515','Open','stempreport@example.com','5558889999','audit8002.pdf','Pending corrective actions','20230325','20230411','audit8002.pdf',150000.0,130000.0,'','Medium','Update travel procedures and train staff');
INSERT INTO district_grant_compliance_audits VALUES (8003,'Arts Access Grant','G-003','20230505','Linda Park','AuditMasters','85',3,'Insufficient performance metrics','Late submission of final report','Add metric tracking system','1','20230601','Open','artsgrant@example.com','5559990000','audit8003.pdf','Awaiting final report','20230415','20230506','audit8003.pdf',100000.0,95000.0,'','Low','Develop reporting template');

-- School energy efficiency upgrades
CREATE TABLE school_energy_efficiency_upgrades
(
    UpgradeID              INTEGER PRIMARY KEY,
    SchoolCDSCode          TEXT,
    ProjectName            TEXT,
    UpgradeType            TEXT,
    VendorName             TEXT,
    ContractNumber         TEXT,
    StartDate              INTEGER,
    CompletionDate         INTEGER,
    EstimatedSavingsKWh    REAL,
    EstimatedSavingsUSD    REAL,
    ActualSavingsKWh       REAL,
    ActualSavingsUSD       REAL,
    ProjectCostUSD         REAL,
    FundingSource          TEXT,
    GrantNumber            TEXT,
    Status                 TEXT,
    ProjectManager         TEXT,
    ContactPhone           TEXT,
    EnergyAuditReference   TEXT,
    ExpectedROIYears       REAL,
    Notes                  TEXT,
    CreatedAt              INTEGER,
    UpdatedAt              INTEGER,
    DocumentationLink      TEXT,
    CertificationLevel     TEXT,
    WarrantyExpiresDate    INTEGER,
    ComplianceVerified    TEXT
);
INSERT INTO school_energy_efficiency_upgrades VALUES (9001,'S1234','LED Lighting Retrofit','Lighting','BrightLights Inc','C-1001',20230110,20230220,25000.0,3000.0,26000.0,3120.0,50000.0,'DistrictBudget','', 'Completed','Laura Green','5551112222','audit2023_01','3.5','Replaced all hallway fixtures','20221201','20230225','led_retrofit_report.pdf','ENERGY STAR','20250301','Yes');
INSERT INTO school_energy_efficiency_upgrades VALUES (9002,'S5678','HVAC Modernization','HVAC','CoolAir Solutions','C-2002',20230401,20230815,40000.0,4800.0,38000.0,4560.0,150000.0,'Grant','HVAC-2023','InProgress','Mike Brown','5553334444','audit2023_02','4.2','Installing high-efficiency units','20230301','20230410','hvac_modernization.pdf','EPA ENERGY STAR','20270415','Pending');
INSERT INTO school_energy_efficiency_upgrades VALUES (9003,'S1234','Solar Panel Installation','Renewable','SunPower Corp','C-3003',20230520,20231201,120000.0,14400.0,0.0,0.0,350000.0,'SolarGrant','SOL-2023','Planned','Sara Lee','5554445555','audit2023_03','5.0','Phase 1 of 2','20230415','20230525','solar_install_plan.pdf','LEED','20280501','Pending');