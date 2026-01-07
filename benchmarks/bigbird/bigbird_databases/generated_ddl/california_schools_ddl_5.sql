-- School Funding Grants Extended
CREATE TABLE school_funding_grants_extended (
    GrantID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    GrantYear INTEGER,
    GrantType TEXT,
    FundingAgency TEXT,
    AmountRequested REAL,
    AmountAwarded REAL,
    AwardDate DATE,
    ExpirationDate DATE,
    Purpose TEXT,
    MatchingFundsRequired INTEGER,
    MatchingFundsProvided REAL,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    Status TEXT,
    ReviewScore REAL,
    ProgramArea TEXT,
    CategoryCode TEXT,
    ReportingFrequency TEXT,
    ContactPerson TEXT
);

INSERT INTO school_funding_grants_extended VALUES
('G001','12345',2022,'Capital','StateEducationDept',50000,45000,'2022-03-01','2025-02-28','TechnologyUpgrade',1,20000,'2022-04-15','2025-04-15','Awarded',85.5,'STEM','CAT01','Annual','JohnDoe');

INSERT INTO school_funding_grants_extended VALUES
('G002','67890',2023,'Operational','FederalGrantOffice',30000,30000,'2023-01-20','2024-12-31','AfterSchoolPrograms',0,0,'2023-02-01','2024-02-01','Pending',0,NULL,'CAT02','Quarterly','JaneSmith');

INSERT INTO school_funding_grants_extended VALUES
('G003','54321',2021,'Research','PrivateFoundation',15000,12000,'2021-06-10','2023-06-09','CurriculumDevelopment',1,12000,'2021-07-01','2023-07-01','Completed',92.0,'Humanities','CAT03','Biannual','MikeBrown');

-- District Infrastructure Assets
CREATE TABLE district_infrastructure_assets (
    AssetID TEXT PRIMARY KEY,
    DistrictCode TEXT,
    AssetType TEXT,
    AssetDescription TEXT,
    PurchaseDate DATE,
    Cost REAL,
    WarrantyExpDate DATE,
    Location TEXT,
    SerialNumber TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    ConditionRating INTEGER,
    LastMaintenanceDate DATE,
    NextMaintenanceDue DATE,
    DepreciationYears INTEGER,
    CurrentValue REAL,
    AssignedSchoolCDS TEXT,
    AssetStatus TEXT,
    ResponsibleDept TEXT,
    AssetTag TEXT
);

INSERT INTO district_infrastructure_assets VALUES
('A001','D001','HVAC','MainBuildingHVAC','2019-04-12',120000,2024-04-12,'CentralCampus','SN12345','CoolTech','CTX500',8,'2023-01-15','2023-07-15',10,90000,'12345','Active','Facilities','TAG001');

INSERT INTO district_infrastructure_assets VALUES
('A002','D001','SolarPanel','RooftopSolarArray','2020-09-05',75000,2025-09-05,'EastWing','SN67890','SunPower','SPX200',9,'2023-03-20','2023-09-20',15,65000,'67890','Active','Energy','TAG002');

INSERT INTO district_infrastructure_assets VALUES
('A003','D002','Vehicle','DistrictBus12','2018-06-30',85000,2023-06-30,'Garage5','SN11223','TransitCo','BUS12',7,'2022-12-01','2023-12-01',12,50000,'54321','Retired','Transportation','TAG003');

-- Teacher Research Collaborations
CREATE TABLE teacher_research_collaborations (
    CollaborationID TEXT PRIMARY KEY,
    TeacherID TEXT,
    PartnerInstitution TEXT,
    ProjectTitle TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingSource TEXT,
    GrantNumber TEXT,
    FundingAmount REAL,
    Role TEXT,
    PublicationCount INTEGER,
    ConferencePresentations INTEGER,
    ResearchArea TEXT,
    Status TEXT,
    DataSharingAgreement TEXT,
    EthicsApprovalDate DATE,
    PIName TEXT,
    CoPIName TEXT,
    ContactEmail TEXT,
    Notes TEXT
);

INSERT INTO teacher_research_collaborations VALUES
('C001','T1001','StateUniversity','STEM Integration Study','2021-01-15','2023-12-31','Federal','GR12345',200000,'PrincipalInvestigator',5,3,'STEM','Active','Yes','2020-12-01','DrAlice','DrBob','alice@example.com','Phase1Complete');

INSERT INTO teacher_research_collaborations VALUES
('C002','T2002','TechCorp','AI in Education Pilot','2022-05-01','2024-04-30','Corporate','GR98765',150000,'CoInvestigator',2,1,'AI','Pending','No',NULL,'DrCarol','DrDave','carol@example.com','AwaitingFunding');

INSERT INTO teacher_research_collaborations VALUES
('C003','T3003','NationalLab','Environmental Impact Assessment','2020-09-10','2022-09-09','Grant','GR55555',120000,'Investigator',3,2,'EnvironmentalScience','Completed','Yes','2020-08-15','DrEve','DrFrank','eve@example.com','PublishedInJournal');

-- Student Technology Device Logs
CREATE TABLE student_technology_device_logs (
    LogID TEXT PRIMARY KEY,
    StudentID TEXT,
    DeviceID TEXT,
    DeviceType TEXT,
    IssueDate DATE,
    ResolutionDate DATE,
    IssueCategory TEXT,
    Description TEXT,
    ResolutionAction TEXT,
    TechnicianID TEXT,
    DowntimeHours REAL,
    WarrantyStatus TEXT,
    OSVersion TEXT,
    SerialNumber TEXT,
    AssetTag TEXT,
    Location TEXT,
    Status TEXT,
    UpdateVersion TEXT,
    LastSyncDate DATE,
    Comments TEXT
);

INSERT INTO student_technology_device_logs VALUES
('L001','S123','D001','Laptop','2023-02-10','2023-02-12','Hardware','Screen flicker','Replaced display','Tech01',4.5,'InWarranty','Win10','SN001','TAG001','Library','Resolved','Patch2023','2023-02-12','No further issues');

INSERT INTO student_technology_device_logs VALUES
('L002','S456','D002','Tablet','2023-03-05','2023-03-06','Software','App crash','Updated OS','Tech02',2.0,'OutOfWarranty','iOS14','SN002','TAG002','ClassroomA','Resolved','iOS15','2023-03-06','App stability improved');

INSERT INTO student_technology_device_logs VALUES
('L003','S789','D003','Chromebook','2023-01-20','2023-01-25','Network','WiFi not connecting','Reconfigured network','Tech03',12.0,'InWarranty','ChromeOS','SN003','TAG003','Lab','Resolved','Chrome88','2023-01-25','User trained on wifi settings');

-- Community Outreach Partners
CREATE TABLE community_outreach_partners (
    PartnerID TEXT PRIMARY KEY,
    OrganizationName TEXT,
    ContactName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    Zip TEXT,
    PartnershipStartDate DATE,
    PartnershipEndDate DATE,
    ServiceArea TEXT,
    AgreementType TEXT,
    FundingProvided REAL,
    VolunteerHours INTEGER,
    ProgramsSupported TEXT,
    EvaluationScore REAL,
    LastReviewDate DATE,
    Notes TEXT,
    ActiveFlag INTEGER
);

INSERT INTO community_outreach_partners VALUES
('P001','HealthFirst','AnnaLee','5551234567','anna@healthfirst.org','100MainSt','Springfield','IL','62704','2020-01-01','2025-12-31','Health','Memorandum',50000,1200,'WellnessPrograms',4.5,'2023-06-15','Strong collaboration',1);

INSERT INTO community_outreach_partners VALUES
('P002','EcoKids','BenMiller','5559876543','ben@ecokids.org','200RiverRd','Riverdale','CA','90210','2019-05-15','2024-05-14','Environment','Contract',30000,800,'RecyclingInitiative',4.2,'2023-04-20','Needs more student involvement',1);

INSERT INTO community_outreach_partners VALUES
('P003','ArtConnect','CaraSmith','5555551212','cara@artconnect.org','50ArtLane','Portland','OR','97035','2021-09-01','2026-08-31','Arts','Agreement',20000,500,'AfterSchoolArt',4.8,'2023-08-01','Excellent participation',1);

-- Environmental Compliance Reports
CREATE TABLE environmental_compliance_reports (
    ReportID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    ReportYear INTEGER,
    ReportType TEXT,
    LeadInspector TEXT,
    InspectionDate DATE,
    FindingsCount INTEGER,
    ViolationsCount INTEGER,
    CorrectiveActions TEXT,
    FollowUpDate DATE,
    ComplianceStatus TEXT,
    PenaltyAmount REAL,
    Notes TEXT,
    SubmittedDate DATE,
    AuditorName TEXT,
    AuditScope TEXT,
    EmissionLevel REAL,
    WaterQualityIndex REAL,
    AirQualityIndex REAL,
    DocumentationLink TEXT
);

INSERT INTO environmental_compliance_reports VALUES
('R001','12345',2022,'Annual','InspectorA','2022-03-10',5,1,'Fix HVAC filters','2022-04-15','Compliant',0,'All major issues addressed','2022-03-20','AuditorX','Full','0.02','85','45','http://docs.example.com/r001');

INSERT INTO environmental_compliance_reports VALUES
('R002','67890',2023,'MidYear','InspectorB','2023-06-12',3,0,'N/A','2023-07-01','Compliant',0,'No violations','2023-06-20','AuditorY','Partial','0.01','90','40','http://docs.example.com/r002');

INSERT INTO environmental_compliance_reports VALUES
('R003','54321',2021,'Annual','InspectorC','2021-09-05',8,2,'Upgrade lighting','2021-11-01','Non-Compliant',1500,'Follow-up required','2021-09-15','AuditorZ','Full','0.03','70','55','http://docs.example.com/r003');

-- School Security Incidents
CREATE TABLE school_security_incidents (
    IncidentID TEXT PRIMARY KEY,
    SchoolCDS TEXT,
    IncidentDate DATE,
    IncidentType TEXT,
    Description TEXT,
    ReportedBy TEXT,
    ActionTaken TEXT,
    PersonInvolvedID TEXT,
    SeverityLevel INTEGER,
    ResolutionDate DATE,
    FollowUpRequired INTEGER,
    PoliceNotified INTEGER,
    WitnessCount INTEGER,
    AreaLocation TEXT,
    DurationMinutes INTEGER,
    Status TEXT,
    Notes TEXT,
    UpdatedBy TEXT,
    UpdateTimestamp DATE,
    IncidentCategory TEXT
);

INSERT INTO school_security_incidents VALUES
('I001','12345','2023-01-15','Bullying','Student A harassed student B','TeacherL','Counseling','S001',2,'2023-01-20',1,0,2,'Playground',30,'Closed','Case resolved','Admin1','2023-01-20','Behavior');

INSERT INTO school_security_incidents VALUES
('I002','67890','2023-02-28','UnauthorizedEntry','Unknown individual entered building after hours','SecurityGuard','Called police','N/A',4,'2023-03-01',1,1,0,'Main Entrance',45,'Closed','No further incidents','Admin2','2023-03-01','Safety');

INSERT INTO school_security_incidents VALUES
('I003','54321','2023-03-10','Vandalism','Graffiti on hallway walls','Custodian','Cleaned and reported','N/A',3,'2023-03-12',0,0,1,'Hallway 2B',15,'Closed','Restored','Admin3','2023-03-12','Property');

-- District Transportation Maintenance
CREATE TABLE district_transportation_maintenance (
    MaintenanceID TEXT PRIMARY KEY,
    VehicleID TEXT,
    MaintenanceDate DATE,
    ServiceType TEXT,
    Provider TEXT,
    Cost REAL,
    Odometer INTEGER,
    NextDueMileage INTEGER,
    NextDueDate DATE,
    Notes TEXT,
    TechnicianID TEXT,
    PartsReplaced TEXT,
    WarrantyClaim INTEGER,
    DowntimeDays INTEGER,
    Status TEXT,
    MileageAtService INTEGER,
    FuelEfficiency REAL,
    EmissionsTestResult TEXT,
    InspectionPassed INTEGER,
    DepartmentCode TEXT
);

INSERT INTO district_transportation_maintenance VALUES
('M001','V001','2023-01-05','EngineCheck','AutoServiceCo',1200,45200,55000,'2023-07-05','Routine service','TechA','OilFilter',0,2,'Completed',45200,15.2,'Pass',1,'TRANS');

INSERT INTO district_transportation_maintenance VALUES
('M002','V002','2023-02-18','BrakeRepair','BrakeMasters',800,37800,42000,'2023-08-18','Replaced brake pads','TechB','BrakePads',1,1,'Completed',37800,13.8,'Pass',1,'TRANS');

INSERT INTO district_transportation_maintenance VALUES
('M003','V003','2023-03-22','TireRotation','WheelWorks',150,21000,30000,'2023-09-22','Rotated all tires','TechC','N/A',0,0,'Completed',21000,14.5,'Pass',1,'TRANS');

-- Parent Communication Logs
CREATE TABLE parent_communication_logs (
    LogID TEXT PRIMARY KEY,
    ParentID TEXT,
    StudentID TEXT,
    SchoolCDS TEXT,
    CommunicationDate DATE,
    Channel TEXT,
    Subject TEXT,
    MessageSnippet TEXT,
    SentBy TEXT,
    ReceivedBy TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    Outcome TEXT,
    Notes TEXT,
    AttachmentFlag INTEGER,
    StaffID TEXT,
    PriorityLevel INTEGER,
    ResponseTimeHours REAL,
    CommunicationThreadID TEXT,
    ArchivedFlag INTEGER
);

INSERT INTO parent_communication_logs VALUES
('PC001','P1001','S123','12345','2023-01-10','Email','Attendance Concern','Student missed 3 days','TeacherA','ParentA',1,'2023-01-12','Resolved','Parent called back',0,'STAFF01',2,4.5,'THR001',0);

INSERT INTO parent_communication_logs VALUES
('PC002','P2002','S456','67890','2023-02-05','Phone','Volunteer Request','Parent wants to volunteer','CoordinatorB','ParentB',0,NULL','Scheduled','Parent scheduled meet','1','STAFF02',1,0,NULL,0);

INSERT INTO parent_communication_logs VALUES
('PC003','P3003','S789','54321','2023-03-20','SMS','Event Reminder','Reminder for PTA meeting','AdminC','ParentC',0,NULL','Sent','No response needed','0','STAFF03',3,0.2','THR003',0);

-- Student Extracurricular Financials
CREATE TABLE student_extracurricular_financials (
    RecordID TEXT PRIMARY KEY,
    StudentID TEXT,
    ActivityID TEXT,
    SchoolYear TEXT,
    FundingSource TEXT,
    AmountAllocated REAL,
    AmountSpent REAL,
    Balance REAL,
    ApprovalDate DATE,
    DisbursementDate DATE,
    ExpenseCategory TEXT,
    VendorName TEXT,
    ReceiptNumber TEXT,
    ApprovedBy TEXT,
    Status TEXT,
    Notes TEXT,
    AuditTrail TEXT,
    LastUpdated DATE,
    FinancialOfficerID TEXT,
    FiscalYear INTEGER
);

INSERT INTO student_extracurricular_financials VALUES
('EF001','S123','A001','2022-2023','SchoolBudget',200,150,50,'2022-09-01','2022-09-05','Equipment','SportSupplyCo','RCPT1001','AdminX','Open','Team uniforms','Trail001','2023-01-15','FIN01',2022);

INSERT INTO student_extracurricular_financials VALUES
('EF002','S456','A002','2022-2023','Grant',300,300,0,'2022-10-10','2022-10-12','Travel','TravelAgency','RCPT2002','AdminY','Closed','Regional competition travel','Trail002','2023-02-20','FIN02',2022);

INSERT INTO student_extracurricular_financials VALUES
('EF003','S789','A003','2023-2024','Sponsor',500,200,300,'2023-01-15','2023-01-20','Materials','ArtSupplyInc','RCPT3003','AdminZ','Open','Art project materials','Trail003','2023-03-01','FIN03',2023);