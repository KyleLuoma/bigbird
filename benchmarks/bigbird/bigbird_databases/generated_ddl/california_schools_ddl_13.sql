-- Regional Education Partnerships
CREATE TABLE regional_education_partnerships (
    PartnershipID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    PartnerOrgName TEXT,
    PartnerOrgType TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAmount REAL,
    ContactName TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    FocusArea TEXT,
    Description TEXT,
    Status TEXT,
    EvaluationScore REAL,
    LastReviewDate DATE,
    AgreementFilePath TEXT,
    IsActive INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO regional_education_partnerships (PartnershipID, DistrictCode, PartnerOrgName, PartnerOrgType, StartDate, EndDate, FundingAmount, ContactName, ContactPhone, ContactEmail, FocusArea, Description, Status, EvaluationScore, LastReviewDate, AgreementFilePath, IsActive, Notes, CreatedAt, UpdatedAt) VALUES (1, 'D001', 'GreenFuture Initiative', 'NonProfit', '2021-09-01', '2024-08-31', 250000.00, 'Alice Smith', '5551234567', 'alice.smith@example.org', 'STEM', 'Collaboration on STEM curricula', 'Active', 88.5, '2023-06-15', '/agreements/partnership1.pdf', 1, 'Initial phase completed', '2021-09-01', '2023-06-15');
INSERT INTO regional_education_partnerships (PartnershipID, DistrictCode, PartnerOrgName, PartnerOrgType, StartDate, EndDate, FundingAmount, ContactName, ContactPhone, ContactEmail, FocusArea, Description, Status, EvaluationScore, LastReviewDate, AgreementFilePath, IsActive, Notes, CreatedAt, UpdatedAt) VALUES (2, 'D005', 'TechBridge Corp', 'Private', '2022-01-15', '2025-01-14', 480000.00, 'Bob Johnson', '5559876543', 'bob.johnson@techbridge.com', 'Digital Literacy', 'Providing tablets and training', 'Active', 92.0, '2024-02-10', '/agreements/partnership2.pdf', 1, 'Mid‑year review pending', '2022-01-15', '2024-02-10');
INSERT INTO regional_education_partnerships (PartnershipID, DistrictCode, PartnerOrgName, PartnerOrgType, StartDate, EndDate, FundingAmount, ContactName, ContactPhone, ContactEmail, FocusArea, Description, Status, EvaluationScore, LastReviewDate, AgreementFilePath, IsActive, Notes, CreatedAt, UpdatedAt) VALUES (3, 'D009', 'HealthFirst Alliance', 'Government', '2020-05-20', '2023-05-19', 150000.00, 'Carol Lee', '5555551212', 'carol.lee@healthfirst.gov', 'Wellness', 'School nutrition and health programs', 'Expired', 75.3, '2023-05-18', '/agreements/partnership3.pdf', 0, 'Agreement ended', '2020-05-20', '2023-05-18');

-- State Teacher Retention Statistics
CREATE TABLE state_teacher_retention_stats (
    Year INTEGER,
    StateCode TEXT,
    TotalTeachers INTEGER,
    RetainedTeachers INTEGER,
    RetentionRate REAL,
    AvgYearsExperience REAL,
    AvgSalary REAL,
    UrbanRetentionRate REAL,
    RuralRetentionRate REAL,
    HighNeedRetentionRate REAL,
    LowIncomeRetentionRate REAL,
    TurnoverCount INTEGER,
    NewHires INTEGER,
    AttritionReasons TEXT,
    DataSource TEXT,
    ReportDate DATE,
    IsPreliminary INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO state_teacher_retention_stats (Year, StateCode, TotalTeachers, RetainedTeachers, RetentionRate, AvgYearsExperience, AvgSalary, UrbanRetentionRate, RuralRetentionRate, HighNeedRetentionRate, LowIncomeRetentionRate, TurnoverCount, NewHires, AttritionReasons, DataSource, ReportDate, IsPreliminary, Notes, CreatedAt, UpdatedAt) VALUES (2022, 'CA', 200000, 168500, 84.25, 9.4, 72000.00, 86.0, 82.5, 78.0, 80.5, 31500, 25000, 'Retirement, Relocation, Salary', 'State Ed Dept', '2023-01-15', 0, 'All districts reported', '2022-12-31', '2023-01-15');
INSERT INTO state_teacher_retention_stats (Year, StateCode, TotalTeachers, RetainedTeachers, RetentionRate, AvgYearsExperience, AvgSalary, UrbanRetentionRate, RuralRetentionRate, HighNeedRetentionRate, LowIncomeRetentionRate, TurnoverCount, NewHires, AttritionReasons, DataSource, ReportDate, IsPreliminary, Notes, CreatedAt, UpdatedAt) VALUES (2022, 'TX', 180000, 152400, 84.67, 8.7, 61000.00, 85.5, 83.0, 79.2, 81.0, 27600, 22000, 'Retirement, Certification, Relocation', 'State Ed Dept', '2023-01-20', 0, 'Data includes charter schools', '2022-12-31', '2023-01-20');
INSERT INTO state_teacher_retention_stats (Year, StateCode, TotalTeachers, RetainedTeachers, RetentionRate, AvgYearsExperience, AvgSalary, UrbanRetentionRate, RuralRetentionRate, HighNeedRetentionRate, LowIncomeRetentionRate, TurnoverCount, NewHires, AttritionReasons, DataSource, ReportDate, IsPreliminary, Notes, CreatedAt, UpdatedAt) VALUES (2022, 'NY', 120000, 101400, 84.5, 10.1, 80000.00, 87.0, 81.0, 80.0, 82.0, 18600, 17000, 'Retirement, Career Change, Salary', 'State Ed Dept', '2023-01-18', 0, 'Includes private schools', '2022-12-31', '2023-01-18');

-- School Legal Compliance Log
CREATE TABLE school_legal_compliance_log (
    LogID INTEGER PRIMARY KEY,
    CDSCode TEXT,
    RegulationCode TEXT,
    IssueDescription TEXT,
    ViolationDate DATE,
    ResolutionDate DATE,
    PenaltyAmount REAL,
    PenaltyType TEXT,
    Status TEXT,
    InspectorName TEXT,
    InspectorContact TEXT,
    DocumentReference TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    ComplianceOfficer TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsCritical INTEGER,
    SourceSystem TEXT
);

INSERT INTO school_legal_compliance_log (LogID, CDSCode, RegulationCode, IssueDescription, ViolationDate, ResolutionDate, PenaltyAmount, PenaltyType, Status, InspectorName, InspectorContact, DocumentReference, FollowUpRequired, FollowUpDate, ComplianceOfficer, Notes, CreatedAt, UpdatedAt, IsCritical, SourceSystem) VALUES (1, '001001001', 'RC-2021-07', 'Unauthorized construction on gym roof', '2022-03-10', '2022-06-01', 15000.00, 'Fine', 'Resolved', 'Karen Miller', '5553210987', 'DOC-2022-001', 0, NULL, 'Michael Davis', 'Work completed with permit', '2022-03-11', '2022-06-02', 1, 'ComplianceTracker');
INSERT INTO school_legal_compliance_log (LogID, CDSCode, RegulationCode, IssueDescription, ViolationDate, ResolutionDate, PenaltyAmount, PenaltyType, Status, InspectorName, InspectorContact, DocumentReference, FollowUpRequired, FollowUpDate, ComplianceOfficer, Notes, CreatedAt, UpdatedAt, IsCritical, SourceSystem) VALUES (2, '001002003', 'RC-2020-15', 'Late filing of annual safety report', '2021-12-05', '2022-01-20', 5000.00, 'Fine', 'Resolved', 'Samuel Perez', '5558765432', 'DOC-2021-045', 0, NULL, 'Laura Chen', 'Report submitted with amendment', '2021-12-06', '2022-01-21', 0, 'ComplianceTracker');
INSERT INTO school_legal_compliance_log (LogID, CDSCode, RegulationCode, IssueDescription, ViolationDate, ResolutionDate, PenaltyAmount, PenaltyType, Status, InspectorName, InspectorContact, DocumentReference, FollowUpRequired, FollowUpDate, ComplianceOfficer, Notes, CreatedAt, UpdatedAt, IsCritical, SourceSystem) VALUES (3, '001005007', 'RC-2019-22', 'Improper disposal of hazardous waste', '2020-08-15', NULL, 25000.00, 'Fine', 'Open', 'Diane Scott', '5556543210', 'DOC-2020-112', 1, '2021-02-01', 'James Lee', 'Pending court ruling', '2020-08-16', '2021-01-15', 1, 'ComplianceTracker');

-- District Internet Bandwidth Usage
CREATE TABLE district_internet_bandwidth_usage (
    RecordID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    Year INTEGER,
    Month INTEGER,
    AvgBandwidthMbps REAL,
    PeakBandwidthMbps REAL,
    TotalDataGB REAL,
    DownloadGB REAL,
    UploadGB REAL,
    CostPerGB REAL,
    ProviderName TEXT,
    ServiceLevel TEXT,
    ContractStart DATE,
    ContractEnd DATE,
    SLACompliancePct REAL,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsForecast INTEGER,
    DataSource TEXT
);

INSERT INTO district_internet_bandwidth_usage (RecordID, DistrictCode, Year, Month, AvgBandwidthMbps, PeakBandwidthMbps, TotalDataGB, DownloadGB, UploadGB, CostPerGB, ProviderName, ServiceLevel, ContractStart, ContractEnd, SLACompliancePct, Notes, CreatedAt, UpdatedAt, IsForecast, DataSource) VALUES (1, 'D001', 2023, 1, 150.5, 250.0, 12000.75, 9000.50, 3000.25, 0.12, 'FiberNet', 'Gold', '2022-01-01', '2025-12-31', 99.2, 'No outages reported', '2023-01-01', '2023-01-31', 0, 'BandwidthMonitor');
INSERT INTO district_internet_bandwidth_usage (RecordID, DistrictCode, Year, Month, AvgBandwidthMbps, PeakBandwidthMbps, TotalDataGB, DownloadGB, UploadGB, CostPerGB, ProviderName, ServiceLevel, ContractStart, ContractEnd, SLACompliancePct, Notes, CreatedAt, UpdatedAt, IsForecast, DataSource) VALUES (2, 'D005', 2023, 1, 98.3, 180.0, 9500.20, 7200.10, 2300.10, 0.15, 'ConnectPlus', 'Silver', '2021-07-01', '2024-06-30', 97.8, 'Minor latency spikes', '2023-01-01', '2023-01-31', 0, 'BandwidthMonitor');
INSERT INTO district_internet_bandwidth_usage (RecordID, DistrictCode, Year, Month, AvgBandwidthMbps, PeakBandwidthMbps, TotalDataGB, DownloadGB, UploadGB, CostPerGB, ProviderName, ServiceLevel, ContractStart, ContractEnd, SLACompliancePct, Notes, CreatedAt, UpdatedAt, IsForecast, DataSource) VALUES (3, 'D009', 2023, 1, 112.0, 210.5, 10800.00, 8200.00, 2600.00, 0.13, 'NetLink', 'Platinum', '2020-03-15', '2026-03-14', 98.5, 'Scheduled upgrade pending', '2023-01-01', '2023-01-31', 0, 'BandwidthMonitor');

-- Student Financial Aid Applications
CREATE TABLE student_financial_aid_applications (
    ApplicationID INTEGER PRIMARY KEY,
    StudentID TEXT,
    Year INTEGER,
    AidType TEXT,
    RequestedAmount REAL,
    AwardedAmount REAL,
    ApplicationDate DATE,
    DecisionDate DATE,
    Status TEXT,
    ReviewerName TEXT,
    ReviewerDept TEXT,
    Comments TEXT,
    NeedScore REAL,
    GPA REAL,
    EnrollmentStatus TEXT,
    TuitionAmount REAL,
    HousingAmount REAL,
    BooksAmount REAL,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO student_financial_aid_applications (ApplicationID, StudentID, Year, AidType, RequestedAmount, AwardedAmount, ApplicationDate, DecisionDate, Status, ReviewerName, ReviewerDept, Comments, NeedScore, GPA, EnrollmentStatus, TuitionAmount, HousingAmount, BooksAmount, CreatedAt, UpdatedAt) VALUES (1, 'S123456', 2023, 'Grant', 12000.00, 9500.00, '2023-02-15', '2023-03-10', 'Approved', 'Linda Green', 'FinancialAid', 'Full-time undergraduate', 85.0, 3.45, 'FullTime', 15000.00, 5000.00, 800.00, '2023-02-15', '2023-03-10');
INSERT INTO student_financial_aid_applications (ApplicationID, StudentID, Year, AidType, RequestedAmount, AwardedAmount, ApplicationDate, DecisionDate, Status, ReviewerName, ReviewerDept, Comments, NeedScore, GPA, EnrollmentStatus, TuitionAmount, HousingAmount, BooksAmount, CreatedAt, UpdatedAt) VALUES (2, 'S789012', 2023, 'Loan', 8000.00, 8000.00, '2023-02-20', '2023-03-12', 'Approved', 'Mark Taylor', 'FinancialAid', 'Part-time graduate', 70.0, 3.80, 'PartTime', 10000.00, 3000.00, 500.00, '2023-02-20', '2023-03-12');
INSERT INTO student_financial_aid_applications (ApplicationID, StudentID, Year, AidType, RequestedAmount, AwardedAmount, ApplicationDate, DecisionDate, Status, ReviewerName, ReviewerDept, Comments, NeedScore, GPA, EnrollmentStatus, TuitionAmount, HousingAmount, BooksAmount, CreatedAt, UpdatedAt) VALUES (3, 'S345678', 2023, 'Scholarship', 5000.00, 5000.00, '2023-02-25', '2023-03-15', 'Approved', 'Emily Wong', 'Scholarships', 'Merit based for engineering', 60.0, 3.92, 'FullTime', 18000.00, 6000.00, 900.00, '2023-02-25', '2023-03-15');

-- School Environmental Cleanup Projects
CREATE TABLE school_environmental_cleanup_projects (
    ProjectID INTEGER PRIMARY KEY,
    CDSCode TEXT,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    Budget REAL,
    Expenditure REAL,
    ContractorName TEXT,
    ContractorContact TEXT,
    AreaCleanedSqFt REAL,
    WasteCollectedTons REAL,
    RecyclingRatePct REAL,
    CO2ReducedTons REAL,
    ProjectLead TEXT,
    LeadContact TEXT,
    Status TEXT,
    FundingSource TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO school_environmental_cleanup_projects (ProjectID, CDSCode, ProjectName, StartDate, EndDate, Budget, Expenditure, ContractorName, ContractorContact, AreaCleanedSqFt, WasteCollectedTons, RecyclingRatePct, CO2ReducedTons, ProjectLead, LeadContact, Status, FundingSource, Notes, CreatedAt, UpdatedAt) VALUES (1, '001001001', 'Playground Soil Remediation', '2022-04-01', '2022-08-15', 75000.00, 72000.00, 'EcoClean Services', '5551112222', 15000.0, 30.5, 85.0, 12.3, 'Rachel Adams', '5551112222', 'Completed', 'State Grant', 'No adverse findings', '2022-04-01', '2022-08-16');
INSERT INTO school_environmental_cleanup_projects (ProjectID, CDSCode, ProjectName, StartDate, EndDate, Budget, Expenditure, ContractorName, ContractorContact, AreaCleanedSqFt, WasteCollectedTons, RecyclingRatePct, CO2ReducedTons, ProjectLead, LeadContact, Status, FundingSource, Notes, CreatedAt, UpdatedAt) VALUES (2, '001002003', 'Roof Solar Panel Installation', '2023-01-10', '2023-06-30', 200000.00, 185000.00, 'SolarTech Installers', '5553334444', 2000.0, 5.0, 90.0, 20.0, 'Michael Brown', '5553334444', 'InProgress', 'District Budget', 'Phase 1 completed', '2023-01-10', '2023-06-01');
INSERT INTO school_environmental_cleanup_projects (ProjectID, CDSCode, ProjectName, StartDate, EndDate, Budget, Expenditure, ContractorName, ContractorContact, AreaCleanedSqFt, WasteCollectedTons, RecyclingRatePct, CO2ReducedTons, ProjectLead, LeadContact, Status, FundingSource, Notes, CreatedAt, UpdatedAt) VALUES (3, '001005007', 'Gymnasium Asbestos Abatement', '2021-09-15', '2022-02-28', 120000.00, 119500.00, 'SafeEnv Remediation', '5557778888', 5000.0, 10.0, 70.0, 8.5, 'Laura King', '5557778888', 'Completed', 'Federal Grant', 'All safety protocols observed', '2021-09-15', '2022-03-01');

-- Teacher Recruitment Pipeline
CREATE TABLE teacher_recruitment_pipeline (
    PipelineID INTEGER PRIMARY KEY,
    DistrictCode TEXT,
    PositionTitle TEXT,
    VacancyCount INTEGER,
    ApplicantsReceived INTEGER,
    InterviewsConducted INTEGER,
    OffersMade INTEGER,
    OffersAccepted INTEGER,
    AvgTimeToHireDays REAL,
    SourceRecruitingAgency TEXT,
    SourceJobBoard TEXT,
    SourceReferral TEXT,
    RequiredCertifications TEXT,
    SalaryRangeLow REAL,
    SalaryRangeHigh REAL,
    HiringManager TEXT,
    ManagerContact TEXT,
    Status TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Notes TEXT
);

INSERT INTO teacher_recruitment_pipeline (PipelineID, DistrictCode, PositionTitle, VacancyCount, ApplicantsReceived, InterviewsConducted, OffersMade, OffersAccepted, AvgTimeToHireDays, SourceRecruitingAgency, SourceJobBoard, SourceReferral, RequiredCertifications, SalaryRangeLow, SalaryRangeHigh, HiringManager, ManagerContact, Status, CreatedAt, UpdatedAt, Notes) VALUES (1, 'D001', 'Math Teacher', 5, 42, 12, 5, 4, 30.5, 'EduHire Agency', 'Indeed', 'Alumni', 'State Certification', 55000.00, 65000.00, 'Karen Lee', '5552223333', 'Active', '2023-01-05', '2023-03-10', 'High demand for STEM');
INSERT INTO teacher_recruitment_pipeline (PipelineID, DistrictCode, PositionTitle, VacancyCount, ApplicantsReceived, InterviewsConducted, OffersMade, OffersAccepted, AvgTimeToHireDays, SourceRecruitingAgency, SourceJobBoard, SourceReferral, RequiredCertifications, SalaryRangeLow, SalaryRangeHigh, HiringManager, ManagerContact, Status, CreatedAt, UpdatedAt, Notes) VALUES (2, 'D005', 'Special Education Teacher', 3, 28, 9, 3, 2, 45.0, 'TeachStaff Solutions', 'LinkedIn', 'Current Staff', 'Special Ed Certification', 58000.00, 70000.00, 'Samuel Ortiz', '5554445555', 'Active', '2023-02-01', '2023-04-15', 'Retention focus');
INSERT INTO teacher_recruitment_pipeline (PipelineID, DistrictCode, PositionTitle, VacancyCount, ApplicantsReceived, InterviewsConducted, OffersMade, OffersAccepted, AvgTimeToHireDays, SourceRecruitingAgency, SourceJobBoard, SourceReferral, RequiredCertifications, SalaryRangeLow, SalaryRangeHigh, HiringManager, ManagerContact, Status, CreatedAt, UpdatedAt, Notes) VALUES (3, 'D009', 'English Teacher', 4, 35, 11, 4, 3, 38.2, 'EduConnect', 'Glassdoor', 'University Career Fair', 'English Certification', 53000.00, 62000.00, 'Linda Parker', '5556667777', 'Active', '2023-01-20', '2023-04-01', 'Seeking bilingual candidates');

-- Community Cultural Events
CREATE TABLE community_cultural_events (
    EventID INTEGER PRIMARY KEY,
    CommunityName TEXT,
    EventName TEXT,
    EventDate DATE,
    Location TEXT,
    ExpectedAttendance INTEGER,
    ActualAttendance INTEGER,
    SponsorOrganization TEXT,
    SponsorContact TEXT,
    Budget REAL,
    Expenditure REAL,
    Revenue REAL,
    EventType TEXT,
    AgeGroupTarget TEXT,
    AccessibilityNotes TEXT,
    MarketingChannels TEXT,
    FeedbackScore REAL,
    OrganizerName TEXT,
    OrganizerContact TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO community_cultural_events (EventID, CommunityName, EventName, EventDate, Location, ExpectedAttendance, ActualAttendance, SponsorOrganization, SponsorContact, Budget, Expenditure, Revenue, EventType, AgeGroupTarget, AccessibilityNotes, MarketingChannels, FeedbackScore, OrganizerName, OrganizerContact, CreatedAt, UpdatedAt) VALUES (1, 'Northside', 'Spring Arts Festival', '2023-04-22', 'Central Park', 800, 750, 'City Arts Council', '5559990000', 25000.00, 24000.00, 5000.00, 'Festival', 'All', 'Wheelchair ramps provided', 'SocialMedia,Flyers', 4.5, 'Emily Hart', '5559991111', '2023-02-01', '2023-04-23');
INSERT INTO community_cultural_events (EventID, CommunityName, EventName, EventDate, Location, ExpectedAttendance, ActualAttendance, SponsorOrganization, SponsorContact, Budget, Expenditure, Revenue, EventType, AgeGroupTarget, AccessibilityNotes, MarketingChannels, FeedbackScore, OrganizerName, OrganizerContact, CreatedAt, UpdatedAt) VALUES (2, 'East Village', 'Jazz Night', '2023-06-15', 'Community Center Hall', 300, 280, 'Local Jazz Club', '5558887777', 12000.00, 11500.00, 2000.00, 'Concert', 'Adults', 'Sign language interpreter available', 'Email,LocalRadio', 4.8, 'Victor Ramos', '5558886666', '2023-04-10', '2023-06-16');
INSERT INTO community_cultural_events (EventID, CommunityName, EventName, EventDate, Location, ExpectedAttendance, ActualAttendance, SponsorOrganization, SponsorContact, Budget, Expenditure, Revenue, EventType, AgeGroupTarget, AccessibilityNotes, MarketingChannels, FeedbackScore, OrganizerName, OrganizerContact, CreatedAt, UpdatedAt) VALUES (3, 'Southtown', 'Cultural Heritage Parade', '2023-09-05', 'Main Street', 1500, 1520, 'Heritage Foundation', '5557776665', 40000.00, 39500.00, 8000.00, 'Parade', 'All', 'Audio description for visually impaired', 'TV,Posters', 4.6, 'Ana Lopez', '5557775555', '2023-07-01', '2023-09-06');

-- Facility Energy Efficiency Measures
CREATE TABLE facility_energy_efficiency_measures (
    MeasureID INTEGER PRIMARY KEY,
    FacilityID TEXT,
    MeasureType TEXT,
    InstallationDate DATE,
    ExpectedSavingsKWh REAL,
    ActualSavingsKWh REAL,
    Cost REAL,
    PaybackPeriodMonths REAL,
    VendorName TEXT,
    VendorContact TEXT,
    Certification TEXT,
    Status TEXT,
    LastInspectionDate DATE,
    InspectorName TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsOperational INTEGER,
    FundingSource TEXT,
    ProjectManager TEXT
);

INSERT INTO facility_energy_efficiency_measures (MeasureID, FacilityID, MeasureType, InstallationDate, ExpectedSavingsKWh, ActualSavingsKWh, Cost, PaybackPeriodMonths, VendorName, VendorContact, Certification, Status, LastInspectionDate, InspectorName, Notes, CreatedAt, UpdatedAt, IsOperational, FundingSource, ProjectManager) VALUES (1, 'F001', 'LED Lighting Retrofit', '2021-09-15', 150000.0, 142000.0, 80000.00, 24.0, 'BrightLights Co', '5551239999', 'EnergyStar', 'Active', '2023-03-10', 'Mark Daniels', 'All wings completed', '2021-09-16', '2023-03-11', 1, 'State Grant', 'Samantha Reed');
INSERT INTO facility_energy_efficiency_measures (MeasureID, FacilityID, MeasureType, InstallationDate, ExpectedSavingsKWh, ActualSavingsKWh, Cost, PaybackPeriodMonths, VendorName, VendorContact, Certification, Status, LastInspectionDate, InspectorName, Notes, CreatedAt, UpdatedAt, IsOperational, FundingSource, ProjectManager) VALUES (2, 'F005', 'HVAC Upgrade', '2022-06-01', 250000.0, 240500.0, 200000.00, 30.0, 'CoolAir Solutions', '5553218888', 'LEED', 'Active', '2023-05-20', 'Laura Mitchell', 'Phased implementation', '2022-06-02', '2023-05-21', 1, 'District Budget', 'Brian Clark');
INSERT INTO facility_energy_efficiency_measures (MeasureID, FacilityID, MeasureType, InstallationDate, ExpectedSavingsKWh, ActualSavingsKWh, Cost, PaybackPeriodMonths, VendorName, VendorContact, Certification, Status, LastInspectionDate, InspectorName, Notes, CreatedAt, UpdatedAt, IsOperational, FundingSource, ProjectManager) VALUES (3, 'F009', 'Solar Panel Array', '2020-04-10', 500000.0, 470000.0, 450000.00, 36.0, 'SunPower Inc', '5556547777', 'ISO9001', 'Active', '2023-01-15', 'Eric Gomez', 'Performance monitoring ongoing', '2020-04-11', '2023-01-16', 1, 'Federal Grant', 'Karen Liu');

-- School Transportation Policy Changes
CREATE TABLE school_transportation_policy_changes (
    ChangeID INTEGER PRIMARY KEY,
    CDSCode TEXT,
    PolicyNumber TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Description TEXT,
    Reason TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    ImpactedRoutes TEXT,
    EstimatedCost REAL,
    BudgetLineItem TEXT,
    StakeholderComments TEXT,
    Status TEXT,
    ImplementationStatus TEXT,
    MonitoringPlan TEXT,
    ReviewDate DATE,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER
);

INSERT INTO school_transportation_policy_changes (ChangeID, CDSCode, PolicyNumber, EffectiveDate, ExpirationDate, Description, Reason, ApprovedBy, ApprovalDate, ImpactedRoutes, EstimatedCost, BudgetLineItem, StakeholderComments, Status, ImplementationStatus, MonitoringPlan, ReviewDate, CreatedAt, UpdatedAt, IsActive) VALUES (1, '001001001', 'TP-2023-01', '2023-08-01', NULL, 'Addition of electric buses on Route 12', 'Emission reduction target', 'Board Chair', '2023-06-15', 'Route12,Route15', 1200000.00, 'TransportCapEx', 'Positive feedback from parents', 'Approved', 'InProgress', 'Quarterly mileage audit', '2024-08-01', '2023-06-16', '2023-07-01', 1);
INSERT INTO school_transportation_policy_changes (ChangeID, CDSCode, PolicyNumber, EffectiveDate, ExpirationDate, Description, Reason, ApprovedBy, ApprovalDate, ImpactedRoutes, EstimatedCost, BudgetLineItem, StakeholderComments, Status, ImplementationStatus, MonitoringPlan, ReviewDate, CreatedAt, UpdatedAt, IsActive) VALUES (2, '001002003', 'TP-2022-07', '2022-09-01', '2025-08-31', 'Extended bus service start times for early learners', 'Equity access', 'Superintendent', '2022-07-20', 'Route3,Route8', 300000.00, 'TransportOps', 'Requests from community groups', 'Approved', 'Completed', 'Annual ridership survey', '2025-09-01', '2022-07-21', '2022-09-02', 0);
INSERT INTO school_transportation_policy_changes (ChangeID, CDSCode, PolicyNumber, EffectiveDate, ExpirationDate, Description, Reason, ApprovedBy, ApprovalDate, ImpactedRoutes, EstimatedCost, BudgetLineItem, StakeholderComments, Status, ImplementationStatus, MonitoringPlan, ReviewDate, CreatedAt, UpdatedAt, IsActive) VALUES (3, '001005007', 'TP-2021-03', '2021-05-01', NULL, 'Implementation of GPS tracking for all buses', 'Safety enhancement', 'Board Secretary', '2021-03-15', 'AllRoutes', 450000.00, 'TechUpgrade', 'Support from parent-teacher association', 'Approved', 'Active', 'Monthly system health checks', '2024-05-01', '2021-03-16', '2021-05-02', 1);