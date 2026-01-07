-- Academic Departments table
CREATE TABLE academic_departments
(
    DepartmentId            INTEGER NOT NULL PRIMARY KEY,
    DeptName                TEXT,
    FacultyCount            INTEGER,
    StudentCount            INTEGER,
    EstablishedYear         INTEGER,
    DeanName                TEXT,
    BuildingName            TEXT,
    Campus                  TEXT,
    Email                   TEXT,
    Phone                   TEXT,
    BudgetMillions          INTEGER,
    ResearchFundingMillions INTEGER,
    InternationalCollaborations INTEGER,
    AccreditationStatus     TEXT,
    NumPrograms             INTEGER,
    AvgClassSize            INTEGER,
    OnlineProgramFlag      INTEGER,
    WebsiteURL              TEXT,
    MissionStatement        TEXT,
    StrategicPlanVersion    TEXT
);

INSERT INTO academic_departments VALUES (1, 'ComputerScience', 40, 800, 1990, 'Alice Smith', 'Tech Hall', 'NorthCampus', 'cs@university.edu', '5551234', 12, 5, 3, 'Accredited', 12, 30, 1, 'http://cs.university.edu', 'Innovation and Excellence', 'v2023');
INSERT INTO academic_departments VALUES (2, 'MechanicalEngineering', 55, 1200, 1985, 'Bob Johnson', 'Engineers Building', 'SouthCampus', 'me@university.edu', '5555678', 15, 4, 2, 'Accredited', 15, 35, 0, 'http://me.university.edu', 'Building Sustainable Solutions', 'v2022');
INSERT INTO academic_departments VALUES (3, 'History', 25, 500, 1970, 'Carol Lee', 'Legacy Hall', 'EastCampus', 'history@university.edu', '5559012', 8, 2, 1, 'Accredited', 8, 25, 0, 'http://history.university.edu', 'Preserving the Past', 'v2021');

-- Scholarship Awards table
CREATE TABLE scholarship_awards
(
    AwardId               INTEGER NOT NULL PRIMARY KEY,
    AwardName             TEXT,
    ScholarshipType       TEXT,
    AmountUSD             INTEGER,
    Currency              TEXT,
    EligibilityCriteria   TEXT,
    MinimumGPA            REAL,
    ApplicationDeadline   DATETIME,
    AwardYear             INTEGER,
    NumberOfRecipients    INTEGER,
    ProviderOrganization  TEXT,
    ContactEmail          TEXT,
    ContactPhone          TEXT,
    AwardDescription      TEXT,
    RenewabilityFlag      INTEGER,
    DurationMonths        INTEGER,
    ApplicableMajors      TEXT,
    IsNeedBasedFlag       INTEGER,
    IsMeritBasedFlag      INTEGER,
    PublicationDate       DATETIME
);

INSERT INTO scholarship_awards VALUES (101, 'TechFuture', 'Merit', 5000, 'USD', 'STEM majors', 3.5, '2024-04-01 00:00:00', 2024, 10, 'TechCorp', 'scholar@techcorp.com', '5551111', 'Support for innovative students', 0, 12, 'CS,EE,ME', 0, 1, '2024-01-15 00:00:00');
INSERT INTO scholarship_awards VALUES (102, 'Global Leaders', 'Need', 3000, 'USD', 'International students', 3.0, '2024-05-15 00:00:00', 2024, 5, 'WorldAid', 'info@worldaid.org', '5552222', 'Empower future leaders worldwide', 1, 24, 'All', 1, 0, '2024-02-10 00:00:00');
INSERT INTO scholarship_awards VALUES (103, 'Arts Excellence', 'Merit', 2000, 'USD', 'Arts majors', 3.2, '2024-03-20 00:00:00', 2024, 8, 'CultureFund', 'contact@culturefund.org', '5553333', 'Recognize artistic achievement', 0, 12, 'Music,Theatre,VisualArts', 0, 1, '2024-01-20 00:00:00');

-- Grant Funding table
CREATE TABLE grant_funding
(
    GrantId                INTEGER NOT NULL PRIMARY KEY,
    GrantTitle             TEXT,
    FundingAgency          TEXT,
    AmountUSD              INTEGER,
    Currency               TEXT,
    StartDate              DATETIME,
    EndDate                DATETIME,
    PrincipalInvestigatorId INTEGER,
    CoInvestigatorIds      TEXT,
    GrantPurpose           TEXT,
    GrantStatus            TEXT,
    ReviewScore            REAL,
    FundingCycle           TEXT,
    IsRenewableFlag        INTEGER,
    AdministrativeContact  TEXT,
    ContactEmail           TEXT,
    ContactPhone           TEXT,
    ReportDueDate          DATETIME,
    RequireOpenAccessFlag INTEGER,
    PublicationRequirement TEXT,
    AwardNumber            TEXT
);

INSERT INTO grant_funding VALUES (2001, 'AI for Healthcare', 'NationalScience', 1200000, 'USD', '2023-01-01 00:00:00', '2025-12-31 00:00:00', 45, '46,47', 'Develop AI diagnostics', 'Active', 4.8, 'Annual', 1, 'DrSmith', 'smith@university.edu', '5554444', '2024-06-30 00:00:00', 1, 'OpenAccessJournal', 'NS-2023-01');
INSERT INTO grant_funding VALUES (2002, 'Renewable Energy Storage', 'EnergyDept', 850000, 'USD', '2022-07-15 00:00:00', '2024-07-14 00:00:00', 52, '53', 'Battery technology research', 'Completed', 4.2, 'Biannual', 0, 'DrJones', 'jones@university.edu', '5555555', '2024-01-15 00:00:00', 0, 'ConferenceProceedings', 'ED-2022-07');
INSERT INTO grant_funding VALUES (2003, 'Social Media Impact Study', 'SocialScienceCouncil', 300000, 'USD', '2024-03-01 00:00:00', '2026-02-28 00:00:00', 60, '61,62', 'Analyze behavioral trends', 'Pending', 0.0, 'Quarterly', 0, 'DrLee', 'lee@university.edu', '5556666', '2025-12-31 00:00:00', 1, 'OpenAccessJournal', 'SSC-2024-03');

-- Lab Equipment Inventory table
CREATE TABLE lab_equipment_inventory
(
    EquipmentId               INTEGER NOT NULL PRIMARY KEY,
    EquipmentName             TEXT,
    SerialNumber              TEXT,
    PurchaseDate              DATETIME,
    WarrantyEndDate           DATETIME,
    VendorName                TEXT,
    CostUSD                   INTEGER,
    CurrentValueUSD           INTEGER,
    LocationRoom              TEXT,
    LabName                   TEXT,
    CalibrationDate           DATETIME,
    CalibrationDueDate        DATETIME,
    MaintenanceFrequencyDays INTEGER,
    LastMaintenanceDate       DATETIME,
    NextMaintenanceDate       DATETIME,
    IsOperationalFlag        INTEGER,
    AssignedToUserId          INTEGER,
    AssetTag                  TEXT,
    DepreciationMethod       TEXT,
    DepreciationPeriodYears  INTEGER
);

INSERT INTO lab_equipment_inventory VALUES (301, 'Spectrometer', 'SPX-1001', '2021-05-10 00:00:00', '2024-05-10 00:00:00', 'LabSuppliesInc', 25000, 18000, 'Room101', 'ChemLab', '2023-05-10 00:00:00', '2024-05-10 00:00:00', 180, '2023-11-10 00:00:00', '2024-05-10 00:00:00', 1, 23, 'TAG-301', 'StraightLine', 5);
INSERT INTO lab_equipment_inventory VALUES (302, '3D Printer', 'PRT-2020', '2020-02-20 00:00:00', '2023-02-20 00:00:00', 'PrintTech', 8000, 3000, 'Room202', 'DesignLab', '2022-02-20 00:00:00', '2023-02-20 00:00:00', 365, '2022-12-20 00:00:00', '2023-02-20 00:00:00', 0, 34, 'TAG-302', 'DecliningBalance', 4);
INSERT INTO lab_equipment_inventory VALUES (303, 'Centrifuge', 'CEN-5555', '2019-09-15 00:00:00', '2022-09-15 00:00:00', 'BioEquip', 12000, 5000, 'Room303', 'BioLab', '2021-09-15 00:00:00', '2022-09-15 00:00:00', 730, '2022-03-15 00:00:00', '2022-09-15 00:00:00', 1, 45, 'TAG-303', 'StraightLine', 6);

-- Conference Attendance table
CREATE TABLE conference_attendance
(
    AttendanceId          INTEGER NOT NULL PRIMARY KEY,
    ConferenceName        TEXT,
    Year                  INTEGER,
    StartDate             DATETIME,
    EndDate               DATETIME,
    LocationCity          TEXT,
    LocationCountry       TEXT,
    AttendeeUserId        INTEGER,
    RegistrationType      TEXT,
    RegistrationFeeUSD    INTEGER,
    TravelExpenseUSD      INTEGER,
    HotelExpenseUSD       INTEGER,
    IsSpeakerFlag         INTEGER,
    TalkTitle             TEXT,
    TalkSession           TEXT,
    InviteeFlag           INTEGER,
    DietaryRestrictions   TEXT,
    Notes                 TEXT,
    BadgeNumber           TEXT,
    AttendanceStatus      TEXT
);

INSERT INTO conference_attendance VALUES (401, 'AI Summit', 2024, '2024-09-10 00:00:00', '2024-09-12 00:00:00', 'SanFrancisco', 'USA', 12, 'Full', 1200, 400, 600, 1, 'Future of AI', 'SessionA', 0, 'Vegetarian', 'Keynote speaker', 'BADGE-401', 'Confirmed');
INSERT INTO conference_attendance VALUES (402, 'Renewable Energy Expo', 2023, '2023-05-05 00:00:00', '2023-05-07 00:00:00', 'Berlin', 'Germany', 27, 'Student', 300, 200, 350, 0, NULL, NULL, 0, 'None', 'First-time attendee', 'BADGE-402', 'Attended');
INSERT INTO conference_attendance VALUES (403, 'Social Sciences Forum', 2024, '2024-11-20 00:00:00', '2024-11-22 00:00:00', 'Tokyo', 'Japan', 33, 'Speaker', 0, 500, 700, 1, 'Digital Communities', 'SessionB', 1, 'GlutenFree', 'Invited panelist', 'BADGE-403', 'Cancelled');

-- Publication Citations table
CREATE TABLE publication_citations
(
    CitationId            INTEGER NOT NULL PRIMARY KEY,
    PublicationId         INTEGER,
    CitingPublicationId   INTEGER,
    CitationDate          DATETIME,
    CitingAuthorId        INTEGER,
    CitationContext       TEXT,
    CitationType          TEXT,
    IsSelfCitationFlag   INTEGER,
    PageNumber            INTEGER,
    Section               TEXT,
    DOI                   TEXT,
    URL                   TEXT,
    AccessedDate          DATETIME,
    ImpactFactorAtCitation REAL,
    CitationScore         REAL,
    IsOpenAccessFlag     INTEGER,
    FundingAgency         TEXT,
    GrantId               INTEGER,
    Notes                 TEXT,
    CreatedAt             DATETIME
);

INSERT INTO publication_citations VALUES (501, 1001, 2002, '2024-03-15 00:00:00', 78, 'Methodology comparison', 'Reference', 0, 12, 'Results', '10.1234/abcde', 'http://example.com/paper', '2024-03-16 00:00:00', 5.2, 8.5, 1, 'NationalScience', 2001, 'Cited for algorithm', '2024-03-20 00:00:00');
INSERT INTO publication_citations VALUES (502, 1003, 2005, '2023-11-10 00:00:00', 85, 'Background discussion', 'Background', 1, 5, 'Intro', '10.5678/fghij', 'http://example.org/article', '2023-11-11 00:00:00', 4.8, 7.0, 0, 'EnergyDept', NULL, 'Self-citation of prior work', '2023-11-15 00:00:00');
INSERT INTO publication_citations VALUES (503, 1010, 2010, '2024-01-22 00:00:00', 90, 'Future work suggestion', 'FutureWork', 0, 22, 'Conclusion', '10.9012/klmno', 'http://example.net/study', '2024-01-23 00:00:00', 6.1, 9.2, 1, 'SocialScienceCouncil', 2003, 'Cited for impact assessment', '2024-01-28 00:00:00');

-- Peer Review Assignments table
CREATE TABLE peer_review_assignments
(
    AssignmentId               INTEGER NOT NULL PRIMARY KEY,
    ManuscriptId               INTEGER,
    ReviewerUserId             INTEGER,
    AssignedDate               DATETIME,
    DueDate                    DATETIME,
    ReviewStatus               TEXT,
    ConfidentialityFlag       INTEGER,
    ConflictOfInterestFlag     INTEGER,
    Recommendation             TEXT,
    Comments                   TEXT,
    EditorDecision             TEXT,
    IsBlindReviewFlag          INTEGER,
    ReviewRound                INTEGER,
    ReviewScore                REAL,
    RevisionsRequested        INTEGER,
    RevisionDueDate            DATETIME,
    EditorNotes                TEXT,
    IsEscalatedFlag           INTEGER,
    AssignmentType             TEXT,
    CreatedAt                  DATETIME
);

INSERT INTO peer_review_assignments VALUES (601, 3001, 45, '2024-02-01 00:00:00', '2024-02-15 00:00:00', 'Pending', 1, 0, 'Accept', 'Well structured', 'Pending', 1, 1, 4.5, 0, '2024-03-01 00:00:00', 'First review round', 0, 'Standard', '2024-02-01 00:00:00');
INSERT INTO peer_review_assignments VALUES (602, 3002, 52, '2024-01-10 00:00:00', '2024-01-24 00:00:00', 'Completed', 1, 1, 'Reject', 'Methodology weak', 'Reject', 1, 1, 2.0, 1, '2024-02-10 00:00:00', 'Conflict noted, escalated', 1, 'Expedited', '2024-01-10 00:00:00');
INSERT INTO peer_review_assignments VALUES (603, 3003, 60, '2024-03-05 00:00:00', '2024-03-20 00:00:00', 'InProgress', 0, 0, 'MinorRevision', 'Data unclear', 'Pending', 0, 2, 3.8, 1, '2024-04-05 00:00:00', 'Second round pending', 0, 'Standard', '2024-03-05 00:00:00');

-- Data Governance Policies table
CREATE TABLE data_governance_policies
(
    PolicyId                 INTEGER NOT NULL PRIMARY KEY,
    PolicyName               TEXT,
    EffectiveDate            DATETIME,
    ReviewCycleMonths        INTEGER,
    OwnerDepartment          TEXT,
    PolicyOwnerId            INTEGER,
    RegulatoryFramework      TEXT,
    DataClassificationLevel  TEXT,
    RetentionPeriodDays      INTEGER,
    EncryptionRequirementFlag INTEGER,
    AccessControlModel       TEXT,
    ApprovalStatus           TEXT,
    ApprovedById             INTEGER,
    ApprovalDate             DATETIME,
    PolicyDocumentURL        TEXT,
    VersionNumber            TEXT,
    ChangeLog                TEXT,
    IsActiveFlag             INTEGER,
    AuditableFlag            INTEGER,
    EnforcementMechanism     TEXT,
    LastModifiedAt           DATETIME
);

INSERT INTO data_governance_policies VALUES (701, 'StudentDataPolicy', '2023-01-01 00:00:00', 12, 'StudentAffairs', 15, 'FERPA', 'Sensitive', 3650, 1, 'RBAC', 'Approved', 22, '2023-01-10 00:00:00', 'http://policies.university.edu/student', 'v1.2', 'Added encryption clause', 1, 1, 'AutomatedMonitoring', '2024-02-01 00:00:00');
INSERT INTO data_governance_policies VALUES (702, 'ResearchDataPolicy', '2022-06-15 00:00:00', 24, 'ResearchOffice', 18, 'GDPR', 'Confidential', 7300, 1, 'ABAC', 'Pending', NULL, NULL, 'http://policies.university.edu/research', 'v0.9', 'Initial draft', 0, 0, 'ManualReview', '2023-12-01 00:00:00');
INSERT INTO data_governance_policies VALUES (703, 'FinanceDataPolicy', '2021-09-01 00:00:00', 12, 'FinanceDept', 20, 'SOX', 'Restricted', 1825, 1, 'RBAC', 'Approved', 25, '2021-09-10 00:00:00', 'http://policies.university.edu/finance', 'v3.0', 'Updated retention periods', 1, 1, 'AutomatedEnforcement', '2024-01-20 00:00:00');

-- Risk Assessment Records table
CREATE TABLE risk_assessment_records
(
    AssessmentId               INTEGER NOT NULL PRIMARY KEY,
    AssetId                    INTEGER,
    AssetType                  TEXT,
    RiskRating                 TEXT,
    LikelihoodScore           INTEGER,
    ImpactScore               INTEGER,
    RiskScore                 INTEGER,
    MitigationPlan            TEXT,
    OwnerUserId               INTEGER,
    AssessmentDate            DATETIME,
    ReviewDate                DATETIME,
    Status                    TEXT,
    RegulatoryComplianceFlag  INTEGER,
    ThreatSource              TEXT,
    VulnerabilityId           INTEGER,
    ControlEffectivenessScore INTEGER,
    ResidualRiskScore         INTEGER,
    Comments                  TEXT,
    IsCriticalFlag            INTEGER,
    EscalationLevel           TEXT,
    UpdatedAt                 DATETIME
);

INSERT INTO risk_assessment_records VALUES (801, 301, 'Equipment', 'High', 8, 9, 72, 'Replace faulty component', 23, '2024-02-10 00:00:00', '2024-03-10 00:00:00', 'Open', 1, 'ExternalAttack', 12, 6, 36, 'Urgent replacement needed', 1, 'Level1', '2024-03-12 00:00:00');
INSERT INTO risk_assessment_records VALUES (802, 402, 'Software', 'Medium', 5, 6, 30, 'Apply security patch', 34, '2024-01-05 00:00:00', '2024-01-20 00:00:00', 'Mitigated', 1, 'InsiderThreat', 22, 7, 21, 'Patch applied successfully', 0, 'Level2', '2024-01-22 00:00:00');
INSERT INTO risk_assessment_records VALUES (803, 503, 'Data', 'Low', 3, 4, 12, 'Monitor access logs', 45, '2024-03-01 00:00:00', '2024-04-01 00:00:00', 'Closed', 0, 'NaturalDisaster', 33, 8, 8, 'No incidents observed', 0, 'Level3', '2024-04-03 00:00:00');

-- Privacy Incident Reports table
CREATE TABLE privacy_incident_reports
(
    IncidentId                INTEGER NOT NULL PRIMARY KEY,
    IncidentDate              DATETIME,
    DetectedByUserId          INTEGER,
    IncidentType              TEXT,
    DataCategory              TEXT,
    RecordsAffected           INTEGER,
    Description               TEXT,
    ContainmentActions        TEXT,
    NotificationSentFlag      INTEGER,
    NotificationDate          DATETIME,
    RegulatoryAuthorityNotifiedFlag INTEGER,
    AuthorityNotificationDate DATETIME,
    RootCauseAnalysis         TEXT,
    RemediationPlan           TEXT,
    IsResolvedFlag            INTEGER,
    ResolutionDate            DATETIME,
    ImpactAssessmentScore     INTEGER,
    LegalHoldFlag            INTEGER,
    FollowUpActions           TEXT,
    ReportedAt                DATETIME
);

INSERT INTO privacy_incident_reports VALUES (901, '2024-02-15 00:00:00', 12, 'DataLeak', 'PersonalInfo', 250, 'Unauthorized export of CSV', 'Revoked access token', 1, '2024-02-16 00:00:00', 1, '2024-02-17 00:00:00', 'Token misconfiguration', 'Update token management process', 1, '2024-03-01 00:00:00', 8, 1, 'Audit completed', '2024-02-10 00:00:00');
INSERT INTO privacy_incident_reports VALUES (902, '2024-03-20 00:00:00', 27, 'Phishing', 'Credentials', 0, 'Phishing email targeting staff', 'User education campaign', 0, NULL, 0, NULL, 'Lack of awareness', 'Implement MFA', 0, NULL, 5, 0, 'Schedule training', '2024-03-19 00:00:00');
INSERT INTO privacy_incident_reports VALUES (903, '2024-01-05 00:00:00', 33, 'ImproperDisposal', 'PhysicalRecords', 15, 'Paper records left in lobby', 'Shredded documents', 1, '2024-01-06 00:00:00', 0, NULL, 'Improper disposal procedure', 'Introduce secure shredder', 1, '2024-01-10 00:00:00', 3, 0, 'Policy update', '2024-01-04 00:00:00');