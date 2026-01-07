```sql
/* school_homelessness_services */
CREATE TABLE school_homelessness_services
(
    ServiceID                TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS                TEXT    NOT NULL,
    ServiceDate              DATE    NULL,
    ServiceType              TEXT    NULL,
    ProviderName             TEXT    NULL,
    ContactPhone             TEXT    NULL,
    Email                    TEXT    NULL,
    NumberOfStudentsServed   INTEGER NULL,
    HoursProvided            REAL    NULL,
    ReferralSource           TEXT    NULL,
    EligibilityCriteria      TEXT    NULL,
    CostPerStudent           REAL    NULL,
    FundingSource            TEXT    NULL,
    Notes                    TEXT    NULL,
    CreatedAt                DATE    NULL,
    UpdatedAt                DATE    NULL,
    Latitude                 REAL    NULL,
    Longitude                REAL    NULL,
    Address                  TEXT    NULL,
    City                     TEXT    NULL,
    State                    TEXT    NULL,
    Zip                      TEXT    NULL
);

INSERT INTO school_homelessness_services
(ServiceID, SchoolCDS, ServiceDate, ServiceType, ProviderName, ContactPhone, Email,
 NumberOfStudentsServed, HoursProvided, ReferralSource, EligibilityCriteria,
 CostPerStudent, FundingSource, Notes, CreatedAt, UpdatedAt,
 Latitude, Longitude, Address, City, State, Zip)
VALUES
('SHS001','001001001','2023-09-15','Emergency Shelter','SafeNest','5551234567','info@safenest.org',
 12, 48,'Counselor Referral','Income below 150% FPL',45.00,'Community Grant','Provided temporary bedding', '2023-09-10','2023-09-16',
 38.8951,-77.0364,'123 Main St','Washington','DC','20001');

INSERT INTO school_homelessness_services
(ServiceID, SchoolCDS, ServiceDate, ServiceType, ProviderName, ContactPhone, Email,
 NumberOfStudentsServed, HoursProvided, ReferralSource, EligibilityCriteria,
 CostPerStudent, FundingSource, Notes, CreatedAt, UpdatedAt,
 Latitude, Longitude, Address, City, State, Zip)
VALUES
('SHS002','002002002','2023-10-05','Food Assistance','Community Kitchen','5559876543','contact@commkitchen.org',
 8, 24,'Social Services','Unhoused for >30 days',15.00,'Local Fund','Distributed food packages', '2023-09-30','2023-10-06',
 34.0522,-118.2437,'456 Oak Ave','Los Angeles','CA','90001');

INSERT INTO school_homelessness_services
(ServiceID, SchoolCDS, ServiceDate, ServiceType, ProviderName, ContactPhone, Email,
 NumberOfStudentsServed, HoursProvided, ReferralSource, EligibilityCriteria,
 CostPerStudent, FundingSource, Notes, CreatedAt, UpdatedAt,
 Latitude, Longitude, Address, City, State, Zip)
VALUES
('SHS003','003003003','2023-11-12','Legal Aid','JusticeHelp','5552223333','support@justicehelp.org',
 5, 10,'Teacher Referral','No stable housing',0.00,'State Grant','Provided legal counseling', '2023-11-01','2023-11-13',
 40.7128,-74.0060,'789 Pine Rd','New York','NY','10001');

/* district_technology_roadmap_updates */
CREATE TABLE district_technology_roadmap_updates
(
    UpdateID                TEXT    NOT NULL PRIMARY KEY,
    DistrictCode            TEXT    NOT NULL,
    UpdateDate              DATE    NULL,
    Phase                   TEXT    NULL,
    Description             TEXT    NULL,
    ResponsibleTeam         TEXT    NULL,
    BudgetAllocated         REAL    NULL,
    ExpectedCompletionDate  DATE    NULL,
    Status                  TEXT    NULL,
    StakeholderContact      TEXT    NULL,
    Platform                TEXT    NULL,
    Version                 TEXT    NULL,
    RiskLevel               TEXT    NULL,
    MitigationPlan          TEXT    NULL,
    CreatedBy               TEXT    NULL,
    CreatedAt               DATE    NULL,
    ReviewedBy              TEXT    NULL,
    ReviewedAt              DATE    NULL,
    Comments                TEXT    NULL,
    Priority                TEXT    NULL
);

INSERT INTO district_technology_roadmap_updates
(UpdateID, DistrictCode, UpdateDate, Phase, Description, ResponsibleTeam,
 BudgetAllocated, ExpectedCompletionDate, Status, StakeholderContact,
 Platform, Version, RiskLevel, MitigationPlan, CreatedBy, CreatedAt,
 ReviewedBy, ReviewedAt, Comments, Priority)
VALUES
('DTRU001','D001','2023-08-01','Planning','Introduce 1:1 device program','IT Services',
 250000.00,'2024-06-30','In Progress','john.doe@district.org',
 'Google Workspace','v2023','Medium','Secure device provisioning', 'alice.smith','2023-07-28',
 'bob.jones','2023-08-02','Awaiting vendor quotes','High');

INSERT INTO district_technology_roadmap_updates
(UpdateID, DistrictCode, UpdateDate, Phase, Description, ResponsibleTeam,
 BudgetAllocated, ExpectedCompletionDate, Status, StakeholderContact,
 Platform, Version, RiskLevel, MitigationPlan, CreatedBy, CreatedAt,
 ReviewedBy, ReviewedAt, Comments, Priority)
VALUES
('DTRU002','D001','2023-09-15','Implementation','Upgrade network backbone to fiber','Network Ops',
 500000.00,'2025-01-15','Pending','sarah.lee@district.org',
 'Cisco','v5.2','Low','Phased roll-out', 'mike.turner','2023-09-10',
 'lisa.wang','2023-09-16','Funding approved','Medium');

INSERT INTO district_technology_roadmap_updates
(UpdateID, DistrictCode, UpdateDate, Phase, Description, ResponsibleTeam,
 BudgetAllocated, ExpectedCompletionDate, Status, StakeholderContact,
 Platform, Version, RiskLevel, MitigationPlan, CreatedBy, CreatedAt,
 ReviewedBy, ReviewedAt, Comments, Priority)
VALUES
('DTRU003','D002','2023-10-05','Testing','Pilot AI tutoring platform','Learning Innovation',
 120000.00,'2024-03-31','Not Started','emma.brown@district.org',
 'ChatLearn','v1.0','High','Data privacy assessment', 'carol.davis','2023-10-01',
 'tom.harris','2023-10-06','Ethics review needed','High');

/* teacher_peer_observation_schedule */
CREATE TABLE teacher_peer_observation_schedule
(
    ScheduleID            TEXT    NOT NULL PRIMARY KEY,
    TeacherID             TEXT    NOT NULL,
    ObserverID            TEXT    NOT NULL,
    SchoolCDS             TEXT    NOT NULL,
    ObservationDate       DATE    NULL,
    StartTime             TEXT    NULL,
    EndTime               TEXT    NULL,
    FocusArea             TEXT    NULL,
    ObservationType       TEXT    NULL,
    Rating                INTEGER NULL,
    FeedbackSummary       TEXT    NULL,
    FollowUpDate          DATE    NULL,
    FollowUpAction        TEXT    NULL,
    CreatedAt             DATE    NULL,
    UpdatedAt             DATE    NULL,
    Subject               TEXT    NULL,
    GradeLevel            TEXT    NULL,
    ClassroomNumber       TEXT    NULL,
    DurationMinutes       INTEGER NULL,
    Mode                  TEXT    NULL,
    Notes                 TEXT    NULL
);

INSERT INTO teacher_peer_observation_schedule
(ScheduleID, TeacherID, ObserverID, SchoolCDS, ObservationDate, StartTime, EndTime,
 FocusArea, ObservationType, Rating, FeedbackSummary, FollowUpDate, FollowUpAction,
 CreatedAt, UpdatedAt, Subject, GradeLevel, ClassroomNumber, DurationMinutes, Mode, Notes)
VALUES
('TPOS001','T001','T010','001001001','2023-09-20','09:00','09:45','Classroom Management','Formal',4,'Strong engagement', '2023-10-05','Co‑teaching session', '2023-09-10','2023-09-21','Math','8','Room12',45,'InPerson','N/A');

INSERT INTO teacher_peer_observation_schedule
(ScheduleID, TeacherID, ObserverID, SchoolCDS, ObservationDate, StartTime, EndTime,
 FocusArea, ObservationType, Rating, FeedbackSummary, FollowUpDate, FollowUpAction,
 CreatedAt, UpdatedAt, Subject, GradeLevel, ClassroomNumber, DurationMinutes, Mode, Notes)
VALUES
('TPOS002','T002','T011','002002002','2023-10-03','13:30','14:15','Differentiated Instruction','Informal',3,'Needs clearer objectives', '2023-10-20','Plan revision', '2023-09-25','2023-10-04','Science','5','Room8',45,'Virtual','Recorded');

INSERT INTO teacher_peer_observation_schedule
(ScheduleID, TeacherID, ObserverID, SchoolCDS, ObservationDate, StartTime, EndTime,
 FocusArea, ObservationType, Rating, FeedbackSummary, FollowUpDate, FollowUpAction,
 CreatedAt, UpdatedAt, Subject, GradeLevel, ClassroomNumber, DurationMinutes, Mode, Notes)
VALUES
('TPOS003','T003','T012','003003003','2023-11-12','11:00','11:45','Assessment Practices','Formal',5,'Excellent formative checks', '2023-11-28','Share best practices', '2023-11-01','2023-11-13','English','10','Room5',45,'InPerson','N/A');

/* student_cybersecurity_training */
CREATE TABLE student_cybersecurity_training
(
    TrainingID            TEXT    NOT NULL PRIMARY KEY,
    StudentID             TEXT    NOT NULL,
    SchoolCDS             TEXT    NOT NULL,
    TrainingDate          DATE    NULL,
    ModuleName            TEXT    NULL,
    CompletionStatus      TEXT    NULL,
    Score                 REAL    NULL,
    HoursSpent            REAL    NULL,
    Instructor            TEXT    NULL,
    CertificationEarned   TEXT    NULL,
    CertificationDate     DATE    NULL,
    DeviceUsed            TEXT    NULL,
    IPAddress             TEXT    NULL,
    Location              TEXT    NULL,
    CreatedAt             DATE    NULL,
    UpdatedAt             DATE    NULL,
    TrainingProvider      TEXT    NULL,
    Version               TEXT    NULL,
    FeedbackScore         INTEGER NULL,
    Comments              TEXT    NULL,
    TrainingMode          TEXT    NULL
);

INSERT INTO student_cybersecurity_training
(TrainingID, StudentID, SchoolCDS, TrainingDate, ModuleName, CompletionStatus,
 Score, HoursSpent, Instructor, CertificationEarned, CertificationDate,
 DeviceUsed, IPAddress, Location, CreatedAt, UpdatedAt,
 TrainingProvider, Version, FeedbackScore, Comments, TrainingMode)
VALUES
('SCT001','S123','001001001','2023-09-18','Phishing Awareness','Completed',92.5,1.5,'Ms Lee','CyberSafe Cert','2023-09-20',
 'Laptop','192.168.1.15','Room12','2023-09-10','2023-09-19','SecureEd','v1.2',5,'Very useful','InPerson');

INSERT INTO student_cybersecurity_training
(TrainingID, StudentID, SchoolCDS, TrainingDate, ModuleName, CompletionStatus,
 Score, HoursSpent, Instructor, CertificationEarned, CertificationDate,
 DeviceUsed, IPAddress, Location, CreatedAt, UpdatedAt,
 TrainingProvider, Version, FeedbackScore, Comments, TrainingMode)
VALUES
('SCT002','S456','002002002','2023-10-04','Password Management','Completed',88.0,2.0,'Mr Patel','SecurePass Cert','2023-10-06',
 'Tablet','10.0.0.5','Room8','2023-09-28','2023-10-05','CyberLearn','v2.0',4,'Good examples','Virtual');

INSERT INTO student_cybersecurity_training
(TrainingID, StudentID, SchoolCDS, TrainingDate, ModuleName, CompletionStatus,
 Score, HoursSpent, Instructor, CertificationEarned, CertificationDate,
 DeviceUsed, IPAddress, Location, CreatedAt, UpdatedAt,
 TrainingProvider, Version, FeedbackScore, Comments, TrainingMode)
VALUES
('SCT003','S789','003003003','2023-11-15','Data Privacy','Completed',95.0,1.0,'Dr Kim','Privacy Shield','2023-11-17',
 'Desktop','172.16.3.22','Room5','2023-11-01','2023-11-16','InfoSecure','v1.0',5,'Excellent content','InPerson');

/* facility_energy_renewable_assets */
CREATE TABLE facility_energy_renewable_assets
(
    AssetID                TEXT    NOT NULL PRIMARY KEY,
    FacilityID             TEXT    NOT NULL,
    AssetType              TEXT    NULL,
    InstallationDate       DATE    NULL,
    CapacityKW             REAL    NULL,
    Manufacturer           TEXT    NULL,
    ModelNumber            TEXT    NULL,
    SerialNumber           TEXT    NULL,
    WarrantyEndDate        DATE    NULL,
    FundingSource          TEXT    NULL,
    Cost                   REAL    NULL,
    EstimatedAnnualSavings REAL    NULL,
    CurrentStatus          TEXT    NULL,
    LastMaintenanceDate    DATE    NULL,
    NextMaintenanceDue    DATE    NULL,
    Latitude               REAL    NULL,
    Longitude              REAL    NULL,
    OwnerDepartment        TEXT    NULL,
    DepreciationPeriodYears INTEGER NULL,
    CurrentValue           REAL    NULL,
    CreatedAt              DATE    NULL,
    UpdatedAt              DATE    NULL
);

INSERT INTO facility_energy_renewable_assets
(AssetID, FacilityID, AssetType, InstallationDate, CapacityKW, Manufacturer,
 ModelNumber, SerialNumber, WarrantyEndDate, FundingSource, Cost,
 EstimatedAnnualSavings, CurrentStatus, LastMaintenanceDate, NextMaintenanceDue,
 Latitude, Longitude, OwnerDepartment, DepreciationPeriodYears, CurrentValue,
 CreatedAt, UpdatedAt)
VALUES
('REA001','F001','Solar Panel','2022-06-15',150.0,'SunPower','SP-150','SN12345','2032-06-15','State Grant',250000.00,30000.00,'Operational','2023-06-01','2024-06-01',
38.8951,-77.0364,'Facilities',20,200000.00,'2022-06-10','2023-06-12');

INSERT INTO facility_energy_renewable_assets
(AssetID, FacilityID, AssetType, InstallationDate, CapacityKW, Manufacturer,
 ModelNumber, SerialNumber, WarrantyEndDate, FundingSource, Cost,
 EstimatedAnnualSavings, CurrentStatus, LastMaintenanceDate, NextMaintenanceDue,
 Latitude, Longitude, OwnerDepartment, DepreciationPeriodYears, CurrentValue,
 CreatedAt, UpdatedAt)
VALUES
('REA002','F002','Wind Turbine','2021-09-30',300.0,'Vestas','VT-300','SN67890','2031-09-30','Bond Issue',500000.00,60000.00,'Operational','2023-09-15','2024-09-15',
34.0522,-118.2437,'Facilities',20,450000.00,'2021-09-20','2023-09-16');

INSERT INTO facility_energy_renewable_assets
(AssetID, FacilityID, AssetType, InstallationDate, CapacityKW, Manufacturer,
 ModelNumber, SerialNumber, WarrantyEndDate, FundingSource, Cost,
 EstimatedAnnualSavings, CurrentStatus, LastMaintenanceDate, NextMaintenanceDue,
 Latitude, Longitude, OwnerDepartment, DepreciationPeriodYears, CurrentValue,
 CreatedAt, UpdatedAt)
VALUES
('REA003','F003','Geothermal','2020-03-12',120.0,'GeoTherm','GT-120','SN54321','2030-03-12','Federal Grant',350000.00,40000.00,'Operational','2023-03-01','2024-03-01',
40.7128,-74.0060,'Facilities',20,300000.00,'2020-02-28','2023-03-02');

/* community_arts_partnerships */
CREATE TABLE community_arts_partnerships
(
    PartnershipID          TEXT    NOT NULL PRIMARY KEY,
    CommunityOrgID         TEXT    NOT NULL,
    SchoolCDS              TEXT    NOT NULL,
    AgreementDate          DATE    NULL,
    ProgramName            TEXT    NULL,
    ArtForm                TEXT    NULL,
    FundingAmount          REAL    NULL,
    DurationMonths         INTEGER NULL,
    ContactPerson          TEXT    NULL,
    ContactPhone           TEXT    NULL,
    ContactEmail           TEXT    NULL,
    ExpectedStudents       INTEGER NULL,
    ActivitiesCount        INTEGER NULL,
    EvaluationMethod       TEXT    NULL,
    OutcomesSummary        TEXT    NULL,
    CreatedAt              DATE    NULL,
    UpdatedAt              DATE    NULL,
    Status                 TEXT    NULL,
    RenewalOption          TEXT    NULL,
    Notes                  TEXT    NULL,
    Location               TEXT    NULL
);

INSERT INTO community_arts_partnerships
(PartnershipID, CommunityOrgID, SchoolCDS, AgreementDate, ProgramName, ArtForm,
 FundingAmount, DurationMonths, ContactPerson, ContactPhone, ContactEmail,
 ExpectedStudents, ActivitiesCount, EvaluationMethod, OutcomesSummary,
 CreatedAt, UpdatedAt, Status, RenewalOption, Notes, Location)
VALUES
('CAP001','ORG001','001001001','2023-01-15','Mural Project','Visual Arts',20000.00,12,'Maria Gomez','5551112222','maria@gomexarts.org',
 150,4,'Pre/post surveys','Improved student confidence', '2023-01-10','2023-07-01','Active','Yes','Community mural on auditorium wall','Washington DC');

INSERT INTO community_arts_partnerships
(PartnershipID, CommunityOrgID, SchoolCDS, AgreementDate, ProgramName, ArtForm,
 FundingAmount, DurationMonths, ContactPerson, ContactPhone, ContactEmail,
 ExpectedStudents, ActivitiesCount, EvaluationMethod, OutcomesSummary,
 CreatedAt, UpdatedAt, Status, RenewalOption, Notes, Location)
VALUES
('CAP002','ORG002','002002002','2022-08-01','Jazz Ensemble','Music',15000.00,8,'Liam ONeil','5553334444','liam@jazznow.org',
 80,6,'Performance critiques','Enhanced musical skills', '2022-07-20','2023-03-15','Completed','No','School band performed at city festival','Los Angeles CA');

INSERT INTO community_arts_partnerships
(PartnershipID, CommunityOrgID, SchoolCDS, AgreementDate, ProgramName, ArtForm,
 FundingAmount, DurationMonths, ContactPerson, ContactPhone, ContactEmail,
 ExpectedStudents, ActivitiesCount, EvaluationMethod, OutcomesSummary,
 CreatedAt, UpdatedAt, Status, RenewalOption, Notes, Location)
VALUES
('CAP003','ORG003','003003003','2023-04-10','Drama Workshops','Performing Arts',12000.00,6,'Aisha Khan','5555556666','aisha@stagecraft.org',
 100,5,'Student reflections','Improved public speaking', '2023-04-01','2023-10-01','Active','Yes','Series of one‑act plays','New York NY');

/* district_legal_compliance_reviews */
CREATE TABLE district_legal_compliance_reviews
(
    ReviewID               TEXT    NOT NULL PRIMARY KEY,
    DistrictCode           TEXT    NOT NULL,
    ReviewDate             DATE    NULL,
    AreaOfCompliance       TEXT    NULL,
    FindingsSummary        TEXT    NULL,
    RiskLevel              TEXT    NULL,
    Recommendations        TEXT    NULL,
    FollowUpDate           DATE    NULL,
    ResponsibleOfficer     TEXT    NULL,
    Status                 TEXT    NULL,
    DocumentationLink      TEXT    NULL,
    CreatedAt              DATE    NULL,
    UpdatedAt              DATE    NULL,
    AuditorName            TEXT    NULL,
    AuditorContact         TEXT    NULL,
    ComplianceScore        REAL    NULL,
    PriorReviewID          TEXT    NULL,
    CorrectiveActionPlan   TEXT    NULL,
    BudgetImpact           REAL    NULL,
    Notes                  TEXT    NULL,
    ReviewType             TEXT    NULL
);

INSERT INTO district_legal_compliance_reviews
(ReviewID, DistrictCode, ReviewDate, AreaOfCompliance, FindingsSummary,
 RiskLevel, Recommendations, FollowUpDate, ResponsibleOfficer, Status,
 DocumentationLink, CreatedAt, UpdatedAt, AuditorName, AuditorContact,
 ComplianceScore, PriorReviewID, CorrectiveActionPlan, BudgetImpact, Notes, ReviewType)
VALUES
('LCR001','D001','2023-06-20','Special Education','Minor documentation gaps', 'Low','Update IEP templates', '2023-09-01','Carol White','Open','/docs/lcr001.pdf','2023-06-15','2023-06-21','John Doe','john.doe@audit.org',
 92.5,NULL,'Train staff on record keeping',5000.00,'Awaiting PI','Annual');

INSERT INTO district_legal_compliance_reviews
(ReviewID, DistrictCode, ReviewDate, AreaOfCompliance, FindingsSummary,
 RiskLevel, Recommendations, FollowUpDate, ResponsibleOfficer, Status,
 DocumentationLink, CreatedAt, UpdatedAt, AuditorName, AuditorContact,
 ComplianceScore, PriorReviewID, CorrectiveActionPlan, BudgetImpact, Notes, ReviewType)
VALUES
('LCR002','D001','2023-08-05','Title IX','No violations detected','Low','Maintain current policies','2023-11-01','Emily Green','Closed','/docs/lcr002.pdf','2023-07-30','2023-08-06','Sara Lee','sara.lee@audit.org',
 98.0,'LCR001','Quarterly review schedule',0.00,'All good','Routine');

INSERT INTO district_legal_compliance_reviews
(ReviewID, DistrictCode, ReviewDate, AreaOfCompliance, FindingsSummary,
 RiskLevel, Recommendations, FollowUpDate, ResponsibleOfficer, Status,
 DocumentationLink, CreatedAt, UpdatedAt, AuditorName, AuditorContact,
 ComplianceScore, PriorReviewID, CorrectiveActionPlan, BudgetImpact, Notes, ReviewType)
VALUES
('LCR003','D002','2023-09-12','Data Privacy','Potential breach in student portal','High','Implement multi‑factor authentication','2023-12-01','Michael Brown','Open','/docs/lcr003.pdf','2023-09-01','2023-09-13','Linda Clark','linda.clark@audit.org',
 75.0,NULL,'Upgrade security infrastructure',25000.00,'Immediate action required','Incident');

/* school_3d_printing_lab_usage */
CREATE TABLE school_3d_printing_lab_usage
(
    UsageID                TEXT    NOT NULL PRIMARY KEY,
    LabID                  TEXT    NOT NULL,
    SchoolCDS              TEXT    NOT NULL,
    UserID                 TEXT    NOT NULL,
    UsageDate              DATE    NULL,
    StartTime              TEXT    NULL,
    EndTime                TEXT    NULL,
    ProjectDescription     TEXT    NULL,
    MaterialUsed           TEXT    NULL,
    WeightGrams            REAL    NULL,
    PrintDurationMinutes   INTEGER NULL,
    Operator               TEXT    NULL,
    Supervisor             TEXT    NULL,
    CostCharged            REAL    NULL,
    CreatedAt              DATE    NULL,
    UpdatedAt              DATE    NULL,
    PrintResolutionMicrons INTEGER NULL,
    FilamentType           TEXT    NULL,
    FileName               TEXT    NULL,
    Notes                  TEXT    NULL,
    Status                 TEXT    NULL
);

INSERT INTO school_3d_printing_lab_usage
(UsageID, LabID, SchoolCDS, UserID, UsageDate, StartTime, EndTime,
 ProjectDescription, MaterialUsed, WeightGrams, PrintDurationMinutes,
 Operator, Supervisor, CostCharged, CreatedAt, UpdatedAt,
 PrintResolutionMicrons, FilamentType, FileName, Notes, Status)
VALUES
('LABU001','LAB01','001001001','S123','2023-09-14','10:00','11:30','Prototype of solar charger','PLA',45.2,90,'Ms Lee','Mr Patel',12.50,'2023-09-10','2023-09-15',100,'PLA','solar_charger.stl','First print','Completed');

INSERT INTO school_3d_printing_lab_usage
(UsageID, LabID, SchoolCDS, UserID, UsageDate, StartTime, EndTime,
 ProjectDescription, MaterialUsed, WeightGrams, PrintDurationMinutes,
 Operator, Supervisor, CostCharged, CreatedAt, UpdatedAt,
 PrintResolutionMicrons, FilamentType, FileName, Notes, Status)
VALUES
('LABU002','LAB02','002002002','S456','2023-10-02','13:15','14:45','Historical artifact replica','ABS',120.0,120,'Mr Patel','Ms Gomez',20.00,'2023-09-28','2023-10-03',200,'ABS','artifact.stl','Smooth finish','Completed');

INSERT INTO school_3d_printing_lab_usage
(UsageID, LabID, SchoolCDS, UserID, UsageDate, StartTime, EndTime,
 ProjectDescription, MaterialUsed, WeightGrams, PrintDurationMinutes,
 Operator, Supervisor, CostCharged, CreatedAt, UpdatedAt,
 PrintResolutionMicrons, FilamentType, FileName, Notes, Status)
VALUES
('LABU003','LAB01','003003003','S789','2023-11-20','09:00','10:20','Custom keychain','PETG',15.5,80,'Ms Gomez','Mr Lee',8.75,'2023-11-15','2023-11-21',150,'PETG','keychain.stl','Colorful design','Completed');

/* student_global_volunteer_projects */
CREATE TABLE student_global_volunteer_projects
(
    ProjectID                TEXT    NOT NULL PRIMARY KEY,
    StudentID                TEXT    NOT NULL,
    SchoolCDS                TEXT    NOT NULL,
    ProjectName              TEXT    NULL,
    HostOrganization         TEXT    NULL,
    StartDate                DATE    NULL,
    EndDate                  DATE    NULL,
    Country                  TEXT    NULL,
    HoursContributed         REAL    NULL,
    Role                     TEXT    NULL,
    SupervisorName           TEXT    NULL,
    SupervisorEmail          TEXT    NULL,
    ImpactSummary            TEXT    NULL,
    FundingSource            TEXT    NULL,
    CostCoveredByStudent     REAL    NULL,
    CreatedAt                DATE    NULL,
    UpdatedAt                DATE    NULL,
    ProjectStatus            TEXT    NULL,
    LessonsLearned           TEXT    NULL,
    DocumentationLink        TEXT    NULL,
    RecognitionAwarded       TEXT    NULL
);

INSERT INTO student_global_volunteer_projects
(ProjectID, StudentID, SchoolCDS, ProjectName, HostOrganization,
 StartDate, EndDate, Country, HoursContributed, Role,
 SupervisorName, SupervisorEmail, ImpactSummary,
 FundingSource, CostCoveredByStudent, CreatedAt, UpdatedAt,
 ProjectStatus, LessonsLearned, DocumentationLink, RecognitionAwarded)
VALUES
('GV001','S123','001001001','Clean Water Initiative','GlobalAid',
 '2023-06-01','2023-08-15','Kenya',120.0,'Field Volunteer','Anna Rivera','anna.rivera@globalaid.org',
 'Installed 15 filtration units','Fundraising',0.00,'2023-05-20','2023-08-20','Completed','Teamwork and cultural sensitivity','/docs/gv001.pdf','Certificate of Service');

INSERT INTO student_global_volunteer_projects
(ProjectID, StudentID, SchoolCDS, ProjectName, HostOrganization,
 StartDate, EndDate, Country, HoursContributed, Role,
 SupervisorName, SupervisorEmail, ImpactSummary,
 FundingSource, CostCoveredByStudent, CreatedAt, UpdatedAt,
 ProjectStatus, LessonsLearned, DocumentationLink, RecognitionAwarded)
VALUES
('GV002','S456','002002002','Literacy Camp','ReadWorld',
 '2023-07-10','2023-07-24','Mexico',80.0,'Teaching Assistant','Carlos Méndez','carlos.mendez@readworld.org',
 'Taught reading to 60 children','School Grant',150.00,'2023-06-30','2023-07-25','Completed','Adapted materials for diverse learners','/docs/gv002.pdf','Bronze Literacy Badge');

INSERT INTO student_global_volunteer_projects
(ProjectID, StudentID, SchoolCDS, ProjectName, HostOrganization,
 StartDate, EndDate, Country, HoursContributed, Role,
 SupervisorName, SupervisorEmail, ImpactSummary,
 FundingSource, CostCoveredByStudent, CreatedAt, UpdatedAt,
 ProjectStatus, LessonsLearned, DocumentationLink, RecognitionAwarded)
VALUES
('GV003','S789','003003003','Reforestation Drive','EcoRoots',
 '2023-09-05','2023-09-20','Brazil',60.0,'Tree Planter','Luiza Silva','luiza.silva@ecoroots.org',
 'Planted 300 native trees','Crowdfund',0.00,'2023-08-20','2023-09-21','Completed','Importance of ecosystem balance','/docs/gv003.pdf','Green Initiative Medal');

/* district_transportation_emission_factors */
CREATE TABLE district_transportation_emission_factors
(
    FactorID                TEXT    NOT NULL PRIMARY KEY,
    DistrictCode            TEXT    NOT NULL,
    Year                    INTEGER NULL,
    VehicleType             TEXT    NULL,
    FuelType                TEXT    NULL,
    EmissionFactorCO2       REAL    NULL,
    EmissionFactorCH4       REAL    NULL,
    EmissionFactorN2O       REAL    NULL,
    Unit                    TEXT    NULL,
    DataSource              TEXT    NULL,
    CreatedAt               DATE    NULL,
    UpdatedAt               DATE    NULL,
    VerifiedBy              TEXT    NULL,
    VerificationDate        DATE    NULL,
    Comments                TEXT    NULL,
    Status                  TEXT    NULL,
    Region                  TEXT    NULL,
    AverageMileage          REAL    NULL,
    TemperatureAdjustment   REAL    NULL,
    HumidityAdjustment      REAL    NULL
);

INSERT INTO district_transportation_emission_factors
(FactorID, DistrictCode, Year, VehicleType, FuelType,
 EmissionFactorCO2, EmissionFactorCH4, EmissionFactorN2O,
 Unit, DataSource, CreatedAt, UpdatedAt, VerifiedBy,
 VerificationDate, Comments, Status, Region, AverageMileage,
 TemperatureAdjustment, HumidityAdjustment)
VALUES
('EMF001','D001',2023,'School Bus','Diesel',10.21,0.02,0.01,'kg/mi','EPA', '2023-05-01','2023-05-02','Laura Kim','2023-05-03','Based on EPA MOVES model','Approved','Mid-Atlantic',6.5,0.00,0.00);

INSERT INTO district_transportation_emission_factors
(FactorID, DistrictCode, Year, VehicleType, FuelType,
 EmissionFactorCO2, EmissionFactorCH4, EmissionFactorN2O,
 Unit, DataSource, CreatedAt, UpdatedAt, VerifiedBy,
 VerificationDate, Comments, Status, Region, AverageMileage,
 TemperatureAdjustment, HumidityAdjustment)
VALUES
('EMF002','D001',2023,'Van','Gasoline',8.78,0.015,0.008,'kg/mi','State Dept', '2023-05-05','2023-05-06','Mark Liu','2023-05-07','Adjusted for local temperature','Approved','Mid-Atlantic',15.2,0.01,0.02);

INSERT INTO district_transportation_emission_factors
(FactorID, DistrictCode, Year, VehicleType, FuelType,
 EmissionFactorCO2, EmissionFactorCH4, EmissionFactorN2O,
 Unit, DataSource, CreatedAt, UpdatedAt, VerifiedBy,
 VerificationDate, Comments, Status, Region, AverageMileage,
 TemperatureAdjustment, HumidityAdjustment)
VALUES
('EMF003','D002',2023,'Electric Shuttle','Electric',0.00,0.00,0.00,'kg/mi','Manufacturer', '2023-06-01','2023-06-02','Sofia Patel','2023-06-03','Zero tailpipe emissions','Pending','West Coast',30.0,0.00,0.00);
```