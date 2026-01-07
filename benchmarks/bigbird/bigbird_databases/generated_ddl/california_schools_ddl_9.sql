-- Teacher Training Records
CREATE TABLE teacher_training_records (
    RecordID INTEGER PRIMARY KEY,
    TeacherID TEXT,
    TrainingName TEXT,
    Provider TEXT,
    StartDate DATE,
    EndDate DATE,
    Hours REAL,
    Credits INTEGER,
    Mode TEXT,
    Cost REAL,
    Location TEXT,
    CertificationCode TEXT,
    EvaluationScore REAL,
    Feedback TEXT,
    SessionType TEXT,
    Attendance INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO teacher_training_records VALUES (1, 'T001', 'Differentiated Instruction', 'EduCo', '2023-02-01', '2023-02-03', 12.5, 2, 'InPerson', 350.00, 'Room 101', 'DI2023', 4.5, 'Very useful', 'Workshop', 25, 1, '2023-03-01', '2023-02-01', '2023-02-04');
INSERT INTO teacher_training_records VALUES (2, 'T045', 'Classroom Technology Integration', 'TechLearn', '2023-04-10', '2023-04-12', 9.0, 1, 'Online', 200.00, 'Virtual', 'CTI2023', 4.0, 'Good content', 'Webinar', 30, 0, NULL, '2023-04-10', '2023-04-13');
INSERT INTO teacher_training_records VALUES (3, 'T078', 'STEM Curriculum Design', 'STEMOrg', '2023-06-15', '2023-06-17', 15.0, 3, 'InPerson', 500.00, 'Science Hall', 'STEM2023', 4.8, 'Excellent', 'Seminar', 20, 1, '2023-07-15', '2023-06-15', '2023-06-18');

-- District Policy Updates
CREATE TABLE district_policy_updates (
    PolicyID INTEGER PRIMARY KEY,
    PolicyName TEXT,
    EffectiveDate DATE,
    RevisionNumber INTEGER,
    Category TEXT,
    Summary TEXT,
    Author TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    Status TEXT,
    DocumentURL TEXT,
    ImpactScore REAL,
    StakeholderComments TEXT,
    ReviewCycleMonths INTEGER,
    NextReviewDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    ArchiveFlag INTEGER,
    SourceSystem TEXT,
    Region TEXT
);

INSERT INTO district_policy_updates VALUES (101, 'Attendance Enforcement', '2023-01-01', 2, 'Student', 'Revised attendance thresholds', 'JSmith', 'LJohnson', '2022-12-15', 'Active', 'http://district.edu/policy/101', 3.7, 'Positive feedback', 12, '2024-01-01', '2022-12-01', '2023-01-02', 0, 'PolicyMgmt', 'North');
INSERT INTO district_policy_updates VALUES (102, 'Technology Usage', '2023-03-01', 1, 'Staff', 'Guidelines for device usage', 'MLee', 'KBrown', '2023-02-20', 'Pending', 'http://district.edu/policy/102', 4.0, 'Awaiting review', 12, '2024-03-01', '2023-02-20', '2023-03-02', 0, 'PolicyMgmt', 'South');
INSERT INTO district_policy_updates VALUES (103, 'Nutrition Standards', '2022-09-01', 3, 'FoodService', 'Updated meal nutrition criteria', 'AGarcia', 'RWilson', '2022-08-15', 'Active', 'http://district.edu/policy/103', 4.5, 'Well received', 12, '2023-09-01', '2022-08-10', '2022-09-02', 0, 'PolicyMgmt', 'East');

-- School Funding Projects
CREATE TABLE school_funding_projects (
    ProjectID INTEGER PRIMARY KEY,
    SchoolCDS TEXT,
    ProjectName TEXT,
    FundingSource TEXT,
    GrantNumber TEXT,
    StartDate DATE,
    EndDate DATE,
    TotalBudget REAL,
    AllocatedAmount REAL,
    ExpenditureToDate REAL,
    PrincipalInvestigator TEXT,
    CoInvestigator TEXT,
    ProjectStatus TEXT,
    RiskLevel TEXT,
    ExpectedOutcome TEXT,
    ReportingFrequency TEXT,
    LastReportDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT
);

INSERT INTO school_funding_projects VALUES (2001, '00123', 'STEM Lab Upgrade', 'StateGrant', 'SG-2022-015', '2023-01-15', '2024-12-31', 250000.00, 200000.00, 75000.00, 'DrAllen', 'MsBaker', 'Ongoing', 'Medium', 'Enhanced lab capabilities', 'Quarterly', '2023-06-30', '2023-01-10', '2023-07-01', 'Phase 1 completed');
INSERT INTO school_funding_projects VALUES (2002, '00456', 'Reading Intervention Program', 'FederalAid', 'FA-2021-099', '2022-09-01', '2025-08-31', 150000.00, 150000.00, 120000.00, 'MrClark', 'MsDavis', 'Active', 'Low', 'Improved reading scores', 'Annually', '2024-01-15', '2022-08-20', '2024-02-01', 'Second year underway');
INSERT INTO school_funding_projects VALUES (2003, '00789', 'Green Energy Initiative', 'PrivateDonor', 'PD-2023-021', '2023-05-01', '2026-04-30', 500000.00, 300000.00, 50000.00, 'DrEvans', NULL, 'Planning', 'High', 'Solar panel installation', 'Biannual', NULL, '2023-04-15', '2023-05-02', 'Awaiting permits');

-- Student Exchange Agreements
CREATE TABLE student_exchange_agreements (
    AgreementID INTEGER PRIMARY KEY,
    SendingSchoolCDS TEXT,
    ReceivingSchoolCDS TEXT,
    ProgramName TEXT,
    StartDate DATE,
    EndDate DATE,
    StudentCount INTEGER,
    CoordinatorName TEXT,
    CoordinatorEmail TEXT,
    FundingAgreement TEXT,
    VisaRequired INTEGER,
    ExchangeDurationMonths INTEGER,
    AcademicCreditTransfer INTEGER,
    EvaluationMethod TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT,
    Notes TEXT,
    Region TEXT,
    LanguageSupport TEXT
);

INSERT INTO student_exchange_agreements VALUES (3001, '00123', '01010', 'Global Scholars', '2023-09-01', '2024-06-30', 12, 'MsFoster', 'mfoster@school.org', 'Full', 1, 10, 'Survey', '2023-07-01', '2023-07-15', 'Active', 'First cohort', 'International', 'English');
INSERT INTO student_exchange_agreements VALUES (3002, '00456', '02020', 'Cultural Immersion', '2024-01-15', '2024-12-15', 8, 'MrGonzalez', 'mgonzalez@school.org', 'Partial', 0, 11, 'Portfolio', '2023-11-20', '2024-01-01', 'Pending', 'Awaiting approvals', 'Regional', 'Spanish');
INSERT INTO student_exchange_agreements VALUES (3003, '00789', '03030', 'STEM Exchange', '2023-05-01', '2023-10-31', 5, 'DrHarris', 'dharris@school.org', 'Full', 0, 6, 'ProjectReport', '2023-03-10', '2023-04-01', 'Completed', 'Successful outcomes', 'National', 'English');

-- Facility Renovation Plans
CREATE TABLE facility_renovation_plans (
    PlanID INTEGER PRIMARY KEY,
    FacilityID TEXT,
    FacilityName TEXT,
    RenovationType TEXT,
    PlannedStartDate DATE,
    PlannedEndDate DATE,
    EstimatedCost REAL,
    FundingSource TEXT,
    ProjectManager TEXT,
    Contractor TEXT,
    ComplianceStatus TEXT,
    PermitNumber TEXT,
    SafetyPlanURL TEXT,
    EnvironmentalImpact TEXT,
    DisruptionLevel TEXT,
    StakeholderContact TEXT,
    ApprovalDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT
);

INSERT INTO facility_renovation_plans VALUES (4001, 'F001', 'Gymnasium', 'Roof Replacement', '2023-08-01', '2024-02-28', 350000.00, 'District Budget', 'Laura King', 'BuildCo', 'Approved', 'PN-2023-045', 'http://district.edu/safety/4001', 'Low', 'Medium', 'coach@school.org', '2023-07-15', '2023-07-01', '2023-08-02', 'Phase 1 completed');
INSERT INTO facility_renovation_plans VALUES (4002, 'F023', 'Science Lab', 'Equipment Upgrade', '2023-09-15', '2024-06-30', 120000.00, 'State Grant', 'Mike Torres', 'LabEquip', 'Pending', 'PN-2023-078', 'http://district.edu/safety/4002', 'Medium', 'Low', 'depthead@school.org', '2023-08-20', '2023-08-01', '2023-09-16', 'Awaiting final review');
INSERT INTO facility_renovation_plans VALUES (4003, 'F045', 'Auditorium', 'Seating Renovation', '2024-01-10', '2024-04-30', 80000.00, 'Private Donation', 'Sara Patel', 'SeatCo', 'Approved', 'PN-2024-012', 'http://district.edu/safety/4003', 'Low', 'Low', 'principal@school.org', '2023-12-20', '2023-12-01', '2024-01-11', 'Materials ordered');

-- Community Partner Grants
CREATE TABLE community_partner_grants (
    GrantID INTEGER PRIMARY KEY,
    PartnerID TEXT,
    PartnerName TEXT,
    GrantTitle TEXT,
    FundingAgency TEXT,
    AwardAmount REAL,
    AwardDate DATE,
    ProjectStartDate DATE,
    ProjectEndDate DATE,
    PurposeDescription TEXT,
    ReportingRequirement TEXT,
    ContactPerson TEXT,
    ContactEmail TEXT,
    Status TEXT,
    RenewalEligibility INTEGER,
    RenewalDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    GrantNumber TEXT,
    Region TEXT
);

INSERT INTO community_partner_grants VALUES (5001, 'P001', 'Local Business Alliance', 'Youth Tech Initiative', 'City Grant', 75000.00, '2023-03-15', '2023-04-01', '2025-03-31', 'Provide tech workshops', 'SemiAnnual', 'Anna Lee', 'alee@lba.org', 'Active', 1, '2025-03-01', '2023-03-01', '2023-04-02', 'LBA-2023-07', 'West');
INSERT INTO community_partner_grants VALUES (5002, 'P014', 'Health Foundation', 'School Wellness Program', 'State Grant', 50000.00, '2022-11-20', '2023-01-01', '2024-12-31', 'Promote student health', 'Annual', 'Brian Cox', 'bcox@healthfound.org', 'Completed', 0, NULL, '2022-11-01', '2025-01-01', 'HF-2022-22', 'East');
INSERT INTO community_partner_grants VALUES (5003, 'P023', 'Arts Council', 'Creative Arts Expansion', 'Federal Grant', 120000.00, '2023-06-10', '2023-07-01', '2026-06-30', 'Enhance arts curriculum', 'Quarterly', 'Carla Ruiz', 'cruiz@artscouncil.gov', 'Active', 1, '2026-05-01', '2023-05-20', '2023-07-02', 'AC-2023-09', 'North');

-- School Environmental Audits
CREATE TABLE school_environmental_audits (
    AuditID INTEGER PRIMARY KEY,
    SchoolCDS TEXT,
    AuditDate DATE,
    AuditorName TEXT,
    AuditScope TEXT,
    EnergyScore REAL,
    WaterScore REAL,
    WasteScore REAL,
    OverallRating TEXT,
    RecommendationsCount INTEGER,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    ReportURL TEXT,
    CO2EmissionsTonnes REAL,
    RenewableEnergyPct REAL,
    GreenBuildingCert TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT
);

INSERT INTO school_environmental_audits VALUES (6001, '00123', '2023-05-20', 'EcoInspect Ltd', 'Full Campus', 78.5, 82.0, 70.0, 'B', 12, 1, '2023-11-01', 'http://district.edu/audit/6001', 120.5, 15.0, 'LEED Certified', 'Good overall', '2023-05-21', '2023-05-22', 'Open');
INSERT INTO school_environmental_audits VALUES (6002, '00456', '2023-08-12', 'GreenAudit Co', 'Energy Only', 85.0, NULL, NULL, 'A', 5, 0, NULL, 'http://district.edu/audit/6002', 95.0, 20.0, 'ENERGY STAR', 'Impressive energy savings', '2023-08-13', '2023-08-14', 'Closed');
INSERT INTO school_environmental_audits VALUES (6003, '00789', '2022-12-05', 'SustainCheck', 'Water & Waste', NULL, 76.0, 68.5, 'C', 9, 1, '2023-04-15', 'http://district.edu/audit/6003', 150.0, 10.0, 'None', 'Needs improvement', '2022-12-06', '2023-01-10', 'Open');

-- Technology Software Licenses
CREATE TABLE technology_software_licenses (
    LicenseID INTEGER PRIMARY KEY,
    AssetID TEXT,
    SoftwareName TEXT,
    Version TEXT,
    LicenseType TEXT,
    LicenseKey TEXT,
    PurchasedDate DATE,
    ExpirationDate DATE,
    Seats INTEGER,
    AssignedTo TEXT,
    Department TEXT,
    Cost REAL,
    Vendor TEXT,
    SupportContact TEXT,
    SupportExpiration DATE,
    MaintenanceAgreement TEXT,
    RenewalRequired INTEGER,
    RenewalDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO technology_software_licenses VALUES (7001, 'A001', 'Microsoft Office', '365', 'Subscription', 'ABC123-XYZ789', '2022-01-15', '2023-01-14', 150, 'John Doe', 'Administration', 3000.00, 'Microsoft', 'support@microsoft.com', '2023-01-14', 'Annual', 1, '2023-01-10', '2022-01-01', '2022-02-01');
INSERT INTO technology_software_licenses VALUES (7002, 'A045', 'Adobe Creative Cloud', '2023.1', 'Subscription', 'DEF456-UVW123', '2023-03-01', '2024-02-29', 50, 'Jane Smith', 'Arts', 2500.00, 'Adobe', 'help@adobe.com', '2024-02-28', 'Annual', 1, '2024-02-15', '2023-02-20', '2023-03-02');
INSERT INTO technology_software_licenses VALUES (7003, 'A078', 'AutoCAD', '2022', 'Perpetual', 'GHI789-RST456', '2020-07-20', NULL, 20, 'Mike Lee', 'Engineering', 12000.00, 'Autodesk', 'support@autodesk.com', NULL, 'None', 0, NULL, '2020-07-01', '2021-01-15');

-- Athletics Facility Usage
CREATE TABLE athletics_facility_usage (
    UsageID INTEGER PRIMARY KEY,
    FacilityID TEXT,
    FacilityName TEXT,
    Sport TEXT,
    Team TEXT,
    UsageDate DATE,
    StartTime TEXT,
    EndTime TEXT,
    ExpectedAttendance INTEGER,
    ActualAttendance INTEGER,
    CoachInCharge TEXT,
    EquipmentRequired TEXT,
    WeatherCondition TEXT,
    Outcome TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    UsageStatus TEXT
);

INSERT INTO athletics_facility_usage VALUES (8001, 'F001', 'Gymnasium', 'Basketball', 'Varsity Boys', '2023-11-05', '18:00', '20:00', 200, 185, 'Coach Carter', 'Basketballs, Nets', 'Clear', 'Win', 'Season opener', '2023-10-20', '2023-10-21', 'Athletics Director', '2023-10-15', 'Confirmed');
INSERT INTO athletics_facility_usage VALUES (8002, 'F023', 'Track & Field', 'Track', 'Girls Varsity', '2023-10-12', '09:00', '12:00', 150, 140, 'Coach Patel', 'Hurdles, Starting Blocks', 'Windy', 'Practice', 'Pre-competition prep', '2023-09-30', '2023-10-01', 'Athletics Director', '2023-09-25', 'Confirmed');
INSERT INTO athletics_facility_usage VALUES (8003, 'F045', 'Swimming Pool', 'Swimming', 'Coed Club', '2023-09-20', '15:30', '17:30', 80, 78, 'Coach Liu', 'Lanes, Ladders', 'Indoor', 'Training', 'Monthly meet', '2023-09-05', '2023-09-06', 'Athletics Director', '2023-09-01', 'Confirmed');

-- Library Event Series
CREATE TABLE library_event_series (
    SeriesID INTEGER PRIMARY KEY,
    LibraryID TEXT,
    SeriesName TEXT,
    Frequency TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetAudience TEXT,
    CoordinatorName TEXT,
    CoordinatorEmail TEXT,
    Description TEXT,
    Budget REAL,
    ExpectedAttendance INTEGER,
    ActualAttendance INTEGER,
    Sponsor TEXT,
    MaterialsProvided TEXT,
    EvaluationScore REAL,
    FeedbackSummary TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Status TEXT
);

INSERT INTO library_event_series VALUES (9001, 'L001', 'Summer Reading Challenge', 'Monthly', '2023-06-01', '2023-08-31', 'All Ages', 'Evelyn Green', 'egreen@library.org', 'Encourage reading over summer', 5000.00, 1200, 1150, 'City Council', 'Books, Posters', 4.6, 'Positive response', '2023-05-20', '2023-09-01', 'Completed');
INSERT INTO library_event_series VALUES (9002, 'L023', 'Tech Talk Series', 'BiWeekly', '2023-01-15', '2023-12-15', 'Adults', 'Frank Miller', 'fmiller@library.org', 'Latest tech trends', 3000.00, 800, 750, 'TechCorp', 'Slides, Handouts', 4.2, 'Good engagement', '2022-12-30', '2023-12-20', 'Ongoing');
INSERT INTO library_event_series VALUES (9003, 'L045', 'Kids Story Hour', 'Weekly', '2023-09-01', '2024-06-30', 'Children 3-7', 'Grace Lee', 'glee@library.org', 'Storytelling and crafts', 2000.00, 500, 480, 'Local Bookstore', 'Books, Craft Supplies', 4.8, 'Highly liked', '2023-08-20', '2023-09-02', 'Ongoing');