-- District Emergency Resources
CREATE TABLE district_emergency_resources (
    ResourceID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    ResourceType TEXT,
    Quantity INTEGER,
    Supplier TEXT,
    ExpirationDate DATE,
    LastInspectionDate DATE,
    Cost REAL,
    ContactName TEXT,
    ContactPhone TEXT,
    StorageLocation TEXT,
    IsHazardous INTEGER,
    SafetyProtocol TEXT,
    AcquisitionMethod TEXT,
    WarrantyEndDate DATE,
    MaintenanceFrequencyDays INTEGER,
    LastMaintenanceDate DATE,
    Status TEXT,
    Notes TEXT,
    RegulationCompliance TEXT
);

INSERT INTO district_emergency_resources VALUES
('RES001','DC01','Generator',2,'PowerCo','2025-12-31','2023-06-15',15000.00,'John Doe','5551234','WarehouseA',0,'StandardProtocol','Purchase','2026-12-31',180,'2023-05-01','Active','Primary backup generator','OSHA');

INSERT INTO district_emergency_resources VALUES
('RES002','DC02','WaterTank',5,'AquaSupply','2024-09-30','2023-04-20',5000.00,'Jane Smith','5555678','WarehouseB',0,'WaterSafety','Lease','2025-09-30',365,'2023-03-15','Active','Portable water storage','EPA');

INSERT INTO district_emergency_resources VALUES
('RES003','DC03','FireExtinguisher',30,'SafeFire','2028-01-01','2023-07-10',1200.00,'Mike Brown','5559012','MainBuilding','0','FireSafety','Purchase','2030-01-01',730,'2023-06-01','Active','Class A extinguishers','NFPA');

-- School Volunteer Programs
CREATE TABLE school_volunteer_programs (
    ProgramID TEXT PRIMARY KEY,
    CDSCode TEXT,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    CoordinatorFirstName TEXT,
    CoordinatorLastName TEXT,
    CoordinatorEmail TEXT,
    MaxVolunteers INTEGER,
    CurrentVolunteers INTEGER,
    VolunteerHoursTarget INTEGER,
    VolunteerHoursCompleted INTEGER,
    Description TEXT,
    EligibilityCriteria TEXT,
    RequiredTraining TEXT,
    TrainingCompletionDate DATE,
    FundingSource TEXT,
    AnnualBudget REAL,
    PartnerOrganization TEXT,
    Location TEXT,
    IsActive INTEGER,
    Notes TEXT
);

INSERT INTO school_volunteer_programs VALUES
('PROG001','001','LibraryHelp','2023-09-01','2024-06-30','Anna','Lee','anna.lee@school.org',50,20,800,320,'Assist library staff','All grades','Orientation','2023-08-15','DistrictGrant',2000.00,'CityLibrary','LibraryRoom','1','Initial rollout');

INSERT INTO school_volunteer_programs VALUES
('PROG002','002','GardenClub','2023-04-01','2023-12-31','Ben','Kim','ben.kim@school.org',30,15,400,180,'School garden maintenance','Grades 5-8','SafetyBriefing','2023-03-20','CommunityFund',1500.00,'GreenThumbs','OutdoorGarden','1','Midterm review');

INSERT INTO school_volunteer_programs VALUES
('PROG003','003','TechMentor','2023-01-15','2023-12-31','Clara','Ng','clara.ng@school.org',40,25,600,450,'Mentor students in coding','Grades 9-12','OnlineTraining','2022-12-20','CorporateSponsor',2500.00,'CodeWorks','ComputerLab','1','Year-end report');

-- Teacher Research Grant Applications
CREATE TABLE teacher_research_grant_applications (
    GrantAppID TEXT PRIMARY KEY,
    TeacherID TEXT,
    TeacherFirstName TEXT,
    TeacherLastName TEXT,
    GrantAgency TEXT,
    GrantTitle TEXT,
    SubmittedDate DATE,
    ReviewDate DATE,
    Status TEXT,
    AmountRequested REAL,
    AmountAwarded REAL,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    ResearchArea TEXT,
    Keywords TEXT,
    Abstract TEXT,
    Collaborators TEXT,
    Institution TEXT,
    IsInternational INTEGER,
    FundingCycle TEXT,
    IsRenewal INTEGER,
    Notes TEXT
);

INSERT INTO teacher_research_grant_applications VALUES
('APP001','T001','David','Smith','NSF','STEMInquiry','2023-02-10','2023-04-01','Awarded',12000.00,10000.00,'2023-06-01','2025-05-31','ScienceEducation','STEM,Inquiry','Study of inquiry-based learning','Maria Lopez;John Patel','StateUniversity',0,'2023','0','First time applicant');

INSERT INTO teacher_research_grant_applications VALUES
('APP002','T002','Eva','Martinez','DOE','EnergyClassroom','2023-03-15','2023-05-20','Pending',8000.00,NULL,'2024-01-01','2026-12-31','EnergyStudies','Renewable,Classroom','Integrating renewable energy concepts','Liu Chen','TechInstitute',1,'2023','0','Co-funded proposal');

INSERT INTO teacher_research_grant_applications VALUES
('APP003','T003','Frank','Johnson','NEA','LiteracyBoost','2023-01-05','2023-03-10','Rejected',5000.00,NULL,'2023-09-01','2024-08-31','Literacy','Reading,Comprehension','Improving reading fluency','Sonia Patel','CommunityCollege',0,'2023','0','Feedback incorporated');

-- Student Community Service Projects
CREATE TABLE student_community_service_projects (
    ProjectID TEXT PRIMARY KEY,
    CDSCode TEXT,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    StudentCount INTEGER,
    TotalHours INTEGER,
    PartnerOrg TEXT,
    SupervisorFirstName TEXT,
    SupervisorLastName TEXT,
    SupervisorEmail TEXT,
    ProjectDescription TEXT,
    ImpactMetric TEXT,
    FundingAmount REAL,
    MaterialsProvided TEXT,
    SafetyPlan TEXT,
    DocumentationLink TEXT,
    Status TEXT,
    AwardsReceived TEXT,
    FeedbackScore INTEGER,
    Notes TEXT,
    IsRecurring INTEGER
);

INSERT INTO student_community_service_projects VALUES
('PRJ001','001','FoodBankSupport','2023-10-01','2023-12-15',45,360,'LocalFoodBank','Grace','Lee','grace.lee@school.org','Packaging and distribution','MealsServed','2000.00','Boxes,Labels','StandardSafety','http://docs.prj001','Completed','CommunityAward','9','Positive impact','1');

INSERT INTO student_community_service_projects VALUES
('PRJ002','002','ParkCleanup','2023-04-10','2023-04-12',30,90,'CityParksDept','Henry','Kim','henry.kim@school.org','Park litter removal','PoundsCollected','500.00','Gloves,Bags','SafetyBrief','http://docs.prj002','Completed','GreenAward','8','Well organized','0');

INSERT INTO student_community_service_projects VALUES
('PRJ003','003','SeniorTechHelp','2023-09-05','2023-11-30',25,250,'SeniorCenter','Ivy','Ng','ivy.ng@school.org','Teaching seniors basic computer skills','SessionsCompleted','1500.00','Laptops,Manuals','HealthSafety','http://docs.prj003','InProgress','','7','Ongoing','1');

-- Facility Renewable Energy Assets
CREATE TABLE facility_renewable_energy_assets (
    AssetID TEXT PRIMARY KEY,
    SchoolID TEXT,
    AssetType TEXT,
    CapacityKW REAL,
    InstallationDate DATE,
    Contractor TEXT,
    PurchaseCost REAL,
    FundingSource TEXT,
    WarrantyEndDate DATE,
    MaintenanceContractID TEXT,
    ExpectedLifeYears INTEGER,
    CurrentProductionMWh REAL,
    AvgAnnualProductionMWh REAL,
    CO2eReductionTon REAL,
    LocationDescription TEXT,
    IsOperational INTEGER,
    LastInspectionDate DATE,
    InspectionScore INTEGER,
    Notes TEXT,
    SerialNumber TEXT,
    GridConnectionPoint TEXT
);

INSERT INTO facility_renewable_energy_assets VALUES
('ASSET001','001','SolarPanel','250.5','2022-05-20','EcoSolar','75000.00','DistrictGrant','2032-05-20','MC001',20,180.0,200.0,150.0,'Rooftop South','1','2023-06-10','95','Operating well','SN12345','GP01');

INSERT INTO facility_renewable_energy_assets VALUES
('ASSET002','002','WindTurbine','500.0','2021-09-15','WindWorks','200000.00','StateFund','2036-09-15','MC002',25,400.0,450.0,350.0,'Field East','1','2023-04-22','88','Minor blade wear','SN67890','GP02');

INSERT INTO facility_renewable_energy_assets VALUES
('ASSET003','003','Geothermal','150.0','2023-01-10','GeoHeat','120000.00','PrivateDonor','2043-01-10','MC003',30,100.0,110.0,80.0,'Basement','0','2023-02-05','70','Pending commissioning','SN54321','GP03');

-- Technology Innovation Award Events
CREATE TABLE technology_innovation_award_events (
    EventID TEXT PRIMARY KEY,
    EventName TEXT,
    EventDate DATE,
    Organizer TEXT,
    SponsoringAgency TEXT,
    AwardCategory TEXT,
    NumberOfEntries INTEGER,
    WinnerFirstName TEXT,
    WinnerLastName TEXT,
    WinnerSchoolID TEXT,
    PrizeAmount REAL,
    EvaluationCriteria TEXT,
    SubmissionDeadline DATE,
    EventVenue TEXT,
    City TEXT,
    State TEXT,
    Country TEXT,
    IsVirtual INTEGER,
    LiveStreamLink TEXT,
    PressReleaseLink TEXT,
    Notes TEXT,
    ContactPhone TEXT
);

INSERT INTO technology_innovation_award_events VALUES
('EVT001','TechFuture2023','2023-11-20','DistrictTechDept','DOE','AIInnovation','45','Laura','Chen','001','5000.00','Impact,Feasibility','2023-09-30','AuditoriumA','Springfield','IL','USA','0','http://stream.evt001','http://press.evt001','First annual event','5551111');

INSERT INTO technology_innovation_award_events VALUES
('EVT002','GreenTechAward','2023-08-15','EcoClub','EPA','SustainableDesign','30','Mike','Brown','002','3000.00','Sustainability,Cost','2023-06-01','ConferenceHallB','Riverdale','CA','USA','1','http://stream.evt002','http://press.evt002','Hybrid format','5552222');

INSERT INTO technology_innovation_award_events VALUES
('EVT003','RoboticsChallenge','2023-05-10','STEMTeam','NSF','Robotics','60','Sara','Davis','003','4000.00','Innovation,Performance','2023-03-20','Gymnasium','Lakeside','TX','USA','0','http://stream.evt003','http://press.evt003','In-person with live demo','5553333');

-- Environmental Sensor Deployment Log
CREATE TABLE environmental_sensor_deployment_log (
    DeploymentID TEXT PRIMARY KEY,
    SensorID TEXT,
    SensorType TEXT,
    DeploymentDate DATE,
    Latitude REAL,
    Longitude REAL,
    SchoolID TEXT,
    Manufacturer TEXT,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    CalibrationCertificate TEXT,
    ExpectedLifetimeMonths INTEGER,
    CurrentStatus TEXT,
    DataRetentionPeriodDays INTEGER,
    PowerSource TEXT,
    InstallationMethod TEXT,
    MaintenanceScheduleDays INTEGER,
    LastMaintenanceDate DATE,
    Notes TEXT,
    IsActive INTEGER,
    NetworkID TEXT
);

INSERT INTO environmental_sensor_deployment_log VALUES
('DEP001','SEN001','AirQuality','2023-02-01',40.7128,-74.0060','001','AirSense','v1.2','2023-01-20','CERT001',36,'Operational',365,'Battery','WallMount',180,'2023-05-15','No issues','1','NET01');

INSERT INTO environmental_sensor_deployment_log VALUES
('DEP002','SEN002','NoiseLevel','2023-03-12',34.0522,-118.2437','002','SoundTech','v3.0','2023-03-01','CERT002',48,'Operational',730,'Mains','CeilingMount',365,'2023-06-01','Calibrated','1','NET02');

INSERT INTO environmental_sensor_deployment_log VALUES
('DEP003','SEN003','SoilMoisture','2023-01-20',41.8781,-87.6298','003','SoilMetrics','v2.5','2022-12-15','CERT003',24,'Inactive','180','Solar','GroundPole',90,'2023-04-10','Awaiting repair','0','NET03');

-- Parent Communication Preferences Detail
CREATE TABLE parent_communication_preferences_detail (
    PreferenceID TEXT PRIMARY KEY,
    CDSCode TEXT,
    ParentFirstName TEXT,
    ParentLastName TEXT,
    PreferredLanguage TEXT,
    ContactMethod TEXT,
    ContactTimeWindow TEXT,
    EmailAddress TEXT,
    PhoneNumber TEXT,
    MailingAddress TEXT,
    SMSOptIn INTEGER,
    EmailOptIn INTEGER,
    PhoneCallOptIn INTEGER,
    NewsletterSubscription INTEGER,
    EventInvitePreference TEXT,
    SurveyParticipation INTEGER,
    FeedbackChannel TEXT,
    PreferredContactPerson TEXT,
    Notes TEXT,
    LastUpdated DATE,
    IsActive INTEGER
);

INSERT INTO parent_communication_preferences_detail VALUES
('PREF001','001','Olivia','Garcia','English','Email','Morning','olivia.garcia@example.com','5554444','123 Main St','1','1','0','1','Email','1','OnlineForm','SchoolAdmin','Prefers email communication','2023-07-01','1');

INSERT INTO parent_communication_preferences_detail VALUES
('PREF002','002','Liam','Patel','Spanish','SMS','Afternoon','liam.patel@example.com','5555555','456 Oak Ave','1','0','1','0','SMS','0','PhoneCall','Counselor','Wants SMS alerts only','2023-06-20','1');

INSERT INTO parent_communication_preferences_detail VALUES
('PREF003','003','Emma','Nguyen','Chinese','Phone','Evening','emma.nguyen@example.com','5556666','789 Pine Rd','0','0','1','0','Phone','0','InPerson','Teacher','Prefers phone calls after school','2023-07-15','1');

-- School Board Financial Audits
CREATE TABLE school_board_financial_audits (
    AuditID TEXT PRIMARY KEY,
    SchoolBoardID TEXT,
    AuditYear INTEGER,
    AuditStartDate DATE,
    AuditEndDate DATE,
    AuditorFirm TEXT,
    LeadAuditorFirstName TEXT,
    LeadAuditorLastName TEXT,
    TotalFindings INTEGER,
    CriticalFindings INTEGER,
    RecommendationsCount INTEGER,
    FollowUpActionsCompleted INTEGER,
    ReportLink TEXT,
    ExecutiveSummary TEXT,
    IsPublic INTEGER,
    AuditStatus TEXT,
    BudgetReviewAmount REAL,
    ExpenditureReviewAmount REAL,
    ComplianceScore INTEGER,
    Notes TEXT,
    SignatureDate DATE,
    AuditorContact TEXT
);

INSERT INTO school_board_financial_audits VALUES
('AUD001','SB01',2023,'2023-03-01','2023-04-15','AuditPros','Natalie','Brown',12,2,8,5,'http://reports.audit001','Summary text','1','Completed',250000.00,240000.00,92,'No major issues','2023-04-20','5557777');

INSERT INTO school_board_financial_audits VALUES
('AUD002','SB02',2022,'2022-02-10','2022-03-20','CheckAudit','Victor','Lee',18,4,10,7,'http://reports.audit002','Summary text','0','Pending',300000.00,295000.00,88,'Pending follow‑up','2022-03-25','5558888');

INSERT INTO school_board_financial_audits VALUES
('AUD003','SB03',2021,'2021-05-05','2021-06-10','SecureAudit','Angela','Kim',9,1,5,5,'http://reports.audit003','Summary text','1','Completed',200000.00,198000.00,95,'All recommendations implemented','2021-06-15','5559999');

-- District Infrastructure Project Budget
CREATE TABLE district_infrastructure_project_budget (
    ProjectBudgetID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    ProjectID TEXT,
    FiscalYear INTEGER,
    TotalAllocated REAL,
    AmountSpent REAL,
    RemainingBalance REAL,
    FundingSource TEXT,
    CostCategory TEXT,
    ApprovalDate DATE,
    ProjectManagerFirstName TEXT,
    ProjectManagerLastName TEXT,
    Contractor TEXT,
    ContractAmount REAL,
    Milestone1Amount REAL,
    Milestone2Amount REAL,
    Milestone3Amount REAL,
    RiskAssessmentScore INTEGER,
    ContingencyFund REAL,
    Notes TEXT,
    IsApproved INTEGER,
    LastUpdated DATE
);

INSERT INTO district_infrastructure_project_budget VALUES
('BUD001','DC01','PRJ001',2023,500000.00,300000.00,200000.00,'StateGrant','Construction','2023-01-15','Samuel','Adams','BuildCo','500000.00','100000.00','100000.00','100000.00',85,25000.00,'On schedule','1','2023-07-01');

INSERT INTO district_infrastructure_project_budget VALUES
('BUD002','DC02','PRJ002',2023,750000.00,450000.00,300000.00,'BondIssue','Renovation','2023-02-20','Linda','Chen','RenovateInc','750000.00','150000.00','150000.00','150000.00',78,50000.00,'Phase 1 completed','1','2023-07-10');

INSERT INTO district_infrastructure_project_budget VALUES
('BUD003','DC03','PRJ003',2022,200000.00,180000.00,20000.00,'FederalAid','TechnologyUpgrade','2022-03-05','Robert','Garcia','TechUpgradesLLC','200000.00','60000.00','60000.00','60000.00',90,15000.00,'Final testing pending','1','2022-12-15');