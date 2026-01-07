-- District technology innovation projects
CREATE TABLE district_tech_innovation_projects
(
    ProjectID TEXT PRIMARY KEY,
    DistrictCode INTEGER,
    ProjectName TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingSource TEXT,
    TotalBudget REAL,
    LeadOffice TEXT,
    Status TEXT,
    TechDomain TEXT,
    PartnerOrg TEXT,
    NumStaff INTEGER,
    ExpectedImpact TEXT,
    Phase TEXT,
    LastUpdate DATE,
    Description TEXT,
    RiskLevel TEXT,
    ComplianceFlag INTEGER,
    KPI_Score REAL,
    IsPilot INTEGER
);

INSERT INTO district_tech_innovation_projects VALUES
('DTIP001', 101, 'Smart Classroom Pilot', '2022-08-01', '2024-07-31', 'State Grant', 250000.00, 'Innovation Office', 'Active', 'EdTech', 'TechCo', 12, 'Improved student engagement', 'Implementation', '2023-06-15', 'Deploying interactive whiteboards', 'Medium', 1, 85.5, 0);
INSERT INTO district_tech_innovation_projects VALUES
('DTIP002', 102, 'AI Tutoring System', '2023-01-15', '2025-12-31', 'Federal Funding', 500000.00, 'Research Dept', 'Planning', 'Artificial Intelligence', 'EduAI', 20, 'Personalized learning', 'Design', '2023-07-01', 'Developing adaptive algorithms', 'High', 0, 0.0, 1);
INSERT INTO district_tech_innovation_projects VALUES
('DTIP003', 103, 'Virtual Reality Lab', '2021-09-01', '2023-09-30', 'Private Donation', 150000.00, 'STEM Office', 'Completed', 'Virtual Reality', 'VRWorld', 8, 'Enhanced science labs', 'Closure', '2023-09-30', 'VR stations installed', 'Low', 1, 92.0, 0);

-- School community engagement activities
CREATE TABLE school_community_engagement_activities
(
    ActivityID TEXT PRIMARY KEY,
    SchoolCode TEXT,
    ActivityDate DATE,
    ActivityType TEXT,
    OrganizerName TEXT,
    ParticipantCount INTEGER,
    CommunityPartner TEXT,
    Location TEXT,
    DurationHours REAL,
    Objectives TEXT,
    OutcomeSummary TEXT,
    FollowUpNeeded INTEGER,
    FundingAmount REAL,
    Notes TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    FeedbackScore REAL,
    AccessibilityRating INTEGER,
    SafetyProtocolFlag INTEGER,
    MediaLink TEXT
);

INSERT INTO school_community_engagement_activities VALUES
('SCEA001', 'S001', '2023-03-12', 'Health Fair', 'Nurse Jane', 150, 'Local Clinic', 'Gym', 5.0, 'Promote wellness', 'Increased screenings', 0, 2000.00, 'Successful', '2023-03-01', '2023-03-13', 4.5, 5, 1, 'http://example.com/fair');
INSERT INTO school_community_engagement_activities VALUES
('SCEA002', 'S002', '2023-04-22', 'Career Day', 'Counselor Tom', 200, 'Tech Corp', 'Auditorium', 6.5, 'Expose careers', 'Student internships offered', 1, 3500.00, 'Well received', '2023-04-01', '2023-04-23', 4.8, 4, 1, 'http://example.com/careers');
INSERT INTO school_community_engagement_activities VALUES
('SCEA003', 'S003', '2023-05-05', 'Cultural Festival', 'Teacher Mia', 300, 'Community Center', 'Field', 8.0, 'Celebrate diversity', 'High participation', 0, 5000.00, 'Positive feedback', '2023-04-20', '2023-05-06', 4.9, 5, 0, 'http://example.com/festival');

-- Student financial aid disbursement
CREATE TABLE student_financial_aid_disbursement
(
    DisbursementID TEXT PRIMARY KEY,
    StudentID TEXT,
    AcademicYear TEXT,
    DisbursementDate DATE,
    AidType TEXT,
    DisbursementAmount REAL,
    DisbursementMethod TEXT,
    BankAccount TEXT,
    TransactionID TEXT,
    SourceProgram TEXT,
    Status TEXT,
    ReasonCode TEXT,
    ProcessedBy TEXT,
    ApprovedBy TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    FiscalYear TEXT,
    IsReconciled INTEGER,
    ReconciliationDate DATE
);

INSERT INTO student_financial_aid_disbursement VALUES
('DISB001', 'STU1001', '2023-2024', '2023-09-01', 'Grant', 1200.00, 'Direct Deposit', 'ACC12345', 'TXN10001', 'State Grant', 'Completed', 'N/A', 'AdminA', 'ChiefB', 'First disbursement', '2023-08-20', '2023-09-02', '2023', 1, '2023-09-05');
INSERT INTO student_financial_aid_disbursement VALUES
('DISB002', 'STU1002', '2023-2024', '2023-09-15', 'Scholarship', 800.00, 'Check', 'ACC67890', 'TXN10002', 'Private Scholarship', 'Pending', 'DOCREQ', 'AdminC', 'ChiefD', 'Awaiting documents', '2023-09-01', '2023-09-16', '2023', 0, NULL);
INSERT INTO student_financial_aid_disbursement VALUES
('DISB003', 'STU1003', '2023-2024', '2023-10-01', 'Loan', 1500.00, 'Direct Deposit', 'ACC54321', 'TXN10003', 'Federal Loan', 'Completed', 'N/A', 'AdminE', 'ChiefF', 'Loan disbursement', '2023-09-20', '2023-10-02', '2023', 1, '2023-10-03');

-- Facility HVAC service log
CREATE TABLE facility_hvac_service_log
(
    ServiceLogID TEXT PRIMARY KEY,
    FacilityID TEXT,
    ServiceDate DATE,
    TechnicianID TEXT,
    ServiceType TEXT,
    EquipmentID TEXT,
    MaintenanceHours REAL,
    PartsReplaced TEXT,
    Cost REAL,
    ServiceNotes TEXT,
    NextServiceDue DATE,
    ServiceStatus TEXT,
    WarrantyFlag INTEGER,
    TemperatureSetpoint REAL,
    HumiditySetpoint REAL,
    AirflowRate REAL,
    PressureDrop REAL,
    CreatedOn DATE,
    UpdatedOn DATE,
    SupervisorID TEXT
);

INSERT INTO facility_hvac_service_log VALUES
('HVAC001', 'F001', '2023-06-10', 'TECH01', 'Preventive', 'EQ1001', 3.5, 'Filter', 250.00, 'Routine filter change', '2023-12-10', 'Completed', 1, 72.0, 45.0, 350.0, 0.12, '2023-06-01', '2023-06-11', 'SUP01');
INSERT INTO facility_hvac_service_log VALUES
('HVAC002', 'F002', '2023-07-22', 'TECH02', 'Repair', 'EQ2002', 5.0, 'Compressor', 1200.00, 'Compressor failure replaced', '2024-01-22', 'Completed', 0, 70.0, 40.0, 300.0, 0.15, '2023-07-01', '2023-07-23', 'SUP02');
INSERT INTO facility_hvac_service_log VALUES
('HVAC003', 'F003', '2023-08-15', 'TECH03', 'Inspection', 'EQ3003', 2.0, 'N/A', 0.00, 'No issues found', '2024-02-15', 'Completed', 1, 68.0, 42.0, 320.0, 0.10, '2023-08-01', '2023-08-16', 'SUP03');

-- Teacher research collaboration awards
CREATE TABLE teacher_research_collab_awards
(
    AwardID TEXT PRIMARY KEY,
    TeacherID TEXT,
    AwardYear TEXT,
    AwardName TEXT,
    FundingAgency TEXT,
    Amount REAL,
    ProjectTitle TEXT,
    CollaborationPartner TEXT,
    DurationMonths INTEGER,
    Status TEXT,
    AwardDate DATE,
    RenewalFlag INTEGER,
    ReportDueDate DATE,
    OutcomeSummary TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    EvaluationScore REAL,
    IsActive INTEGER,
    PublicationCount INTEGER,
    Notes TEXT
);

INSERT INTO teacher_research_collab_awards VALUES
('AWRD001', 'TCH2001', '2022', 'STEM Innovation Grant', 'National Science Foundation', 75000.00, 'Robotics in K-12', 'UniTech', 24, 'Active', '2022-05-10', 0, '2024-05-10', 'Prototype developed', '2022-04-01', '2023-06-01', 88.5, 1, 2, 'Ongoing collaboration');
INSERT INTO teacher_research_collab_awards VALUES
('AWRD002', 'TCH2002', '2021', 'Education Research Fellowship', 'Department of Education', 50000.00, 'Literacy Assessment', 'ReadCo', 12, 'Completed', '2021-09-15', 0, '2022-09-15', 'Validated assessment tool', '2021-08-01', '2022-10-01', 91.0, 0, 3, 'Results published');
INSERT INTO teacher_research_collab_awards VALUES
('AWRD003', 'TCH2003', '2023', 'Community Partnership Grant', 'Local Foundation', 30000.00, 'Afterschool STEM Clubs', 'STEMOrg', 18, 'Active', '2023-02-20', 1, '2024-08-20', 'First cohort launched', '2023-02-01', '2023-07-01', 85.0, 1, 1, 'Renewal pending');

-- Parent education workshop sessions
CREATE TABLE parent_education_workshop_sessions
(
    SessionID TEXT PRIMARY KEY,
    SchoolCode TEXT,
    SessionDate DATE,
    Topic TEXT,
    PresenterName TEXT,
    DurationHours REAL,
    AttendeeCount INTEGER,
    MaterialsProvided TEXT,
    EvaluationScore REAL,
    FollowUpAction TEXT,
    Cost REAL,
    FundingSource TEXT,
    Location TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    SessionType TEXT,
    AttendanceList TEXT,
    FeedbackComments TEXT,
    IsRecurring INTEGER,
    NextSessionDate DATE
);

INSERT INTO parent_education_workshop_sessions VALUES
('PWKS001', 'S001', '2023-03-05', 'Supporting Homework', 'Ms. Laura', 2.0, 45, 'Handouts', 4.7, 'Send email recap', 150.00, 'District Budget', 'Library', '2023-02-20', '2023-03-06', 'In-Person', 'ListA', 'Positive', 1, '2023-09-05');
INSERT INTO parent_education_workshop_sessions VALUES
('PWKS002', 'S002', '2023-04-12', 'Understanding FERPA', 'Mr. James', 1.5, 30, 'Brochure', 4.5, 'Provide online resources', 100.00, 'Grant', 'Auditorium', '2023-03-28', '2023-04-13', 'Virtual', 'ListB', 'Useful information', 0, NULL);
INSERT INTO parent_education_workshop_sessions VALUES
('PWKS003', 'S003', '2023-05-20', 'College Prep Basics', 'Dr. Kim', 3.0, 60, 'Guidebook', 4.9, 'Schedule follow‑up Q&A', 200.00, 'Donations', 'Gym', '2023-05-01', '2023-05-21', 'In-Person', 'ListC', 'Very engaged', 1, '2024-01-20');

-- School art installation registry
CREATE TABLE school_art_installation_registry
(
    InstallationID TEXT PRIMARY KEY,
    SchoolCode TEXT,
    ArtworkTitle TEXT,
    ArtistName TEXT,
    InstallationDate DATE,
    Medium TEXT,
    Dimensions TEXT,
    LocationWithinSchool TEXT,
    ConservationStatus TEXT,
    EstimatedValue REAL,
    FundingSource TEXT,
    SponsorName TEXT,
    MaintenancePlan TEXT,
    LastInspection DATE,
    InspectorName TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    VisibilityRating INTEGER,
    PhotoReference TEXT,
    Notes TEXT
);

INSERT INTO school_art_installation_registry VALUES
('ART001', 'S001', 'Dreamscape', 'A. Rivera', '2022-09-15', 'Mural', '12x8 ft', 'Hallway A', 'Good', 12000.00, 'District Funds', 'Art Committee', 'Annual cleaning', '2023-06-01', 'InspecA', '2022-09-01', '2023-06-02', 5, 'photo1.jpg', 'Student involvement in painting');
INSERT INTO school_art_installation_registry VALUES
('ART002', 'S002', 'Harmony', 'L. Chen', '2021-05-20', 'Sculpture', '4x4x6 ft', 'Courtyard', 'Excellent', 8500.00, 'Community Grant', 'Beta Corp', 'Bi‑annual polishing', '2023-04-15', 'InspecB', '2021-05-01', '2023-04-16', 4, 'photo2.jpg', 'Dedicated to peace');
INSERT INTO school_art_installation_registry VALUES
('ART003', 'S003', 'Science Waves', 'M. Patel', '2023-01-10', 'Digital Display', '10x6 ft', 'Library', 'New', 5000.00, 'Science Fund', 'Gamma Labs', 'Software updates quarterly', '2023-07-01', 'InspecC', '2023-01-01', '2023-07-02', 5, 'photo3.jpg', 'Shows DNA helix');

-- District transport route demographics
CREATE TABLE district_transport_route_demographics
(
    RouteID TEXT PRIMARY KEY,
    DistrictCode INTEGER,
    RouteName TEXT,
    AvgDailyRidership INTEGER,
    MedianAge REAL,
    IncomeMedian REAL,
    PercentLowIncome REAL,
    PercentStudents INTEGER,
    PercentElderly INTEGER,
    EmploymentRate REAL,
    VehiclesPerHousehold REAL,
    AvgCommuteTime REAL,
    PublicTransitAccessScore REAL,
    BikeLaneAvailability INTEGER,
    WalkScore REAL,
    PopDensity REAL,
    AreaSqKm REAL,
    CreatedOn DATE,
    UpdatedOn DATE,
    DataSource TEXT
);

INSERT INTO district_transport_route_demographics VALUES
('RT001', 101, 'North Loop', 1200, 34.5, 42000.00, 22.0, 15, 12, 0.92, 1.4, 28.5, 78.0, 1, 65.0, 1500.0, 12.5, '2023-01-15', '2023-07-01', 'Census2022');
INSERT INTO district_transport_route_demographics VALUES
('RT002', 102, 'East Connector', 850, 29.8, 38000.00, 18.5, 12, 8, 0.88, 1.2, 32.0, 72.5, 0, 70.0, 1100.0, 9.8, '2023-02-01', '2023-07-05', 'TransitSurvey2023');
INSERT INTO district_transport_route_demographics VALUES
('RT003', 103, 'West Express', 1500, 37.2, 50000.00, 25.0, 18, 15, 0.95, 1.6, 25.0, 82.0, 1, 60.0, 1800.0, 15.0, '2023-03-10', '2023-07-10', 'DeptData2023');

-- Student mental health screenings
CREATE TABLE student_mental_health_screenings
(
    ScreeningID TEXT PRIMARY KEY,
    StudentID TEXT,
    ScreeningDate DATE,
    ScreenedBy TEXT,
    AgeAtScreening INTEGER,
    Gender TEXT,
    AnxietyScore REAL,
    DepressionScore REAL,
    StressScore REAL,
    ReferralNeeded INTEGER,
    ReferralAgency TEXT,
    FollowUpDate DATE,
    Notes TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    ScreeningTool TEXT,
    ConsentGiven INTEGER,
    ConfidentialityFlag INTEGER,
    RiskLevel TEXT,
    ActionPlan TEXT
);

INSERT INTO student_mental_health_screenings VALUES
('MHS001', 'STU1001', '2023-04-05', 'Counselor Amy', 15, 'Female', 4.2, 3.8, 5.0, 0, NULL, NULL, 'All scores within normal range', '2023-04-01', '2023-04-06', 'PHQ-9', 1, 1, 'Low', 'No action required');
INSERT INTO student_mental_health_screenings VALUES
('MHS002', 'STU1002', '2023-04-12', 'Counselor Ben', 17, 'Male', 7.5, 8.2, 6.9, 1, 'Community Mental Health Center', '2023-04-20', 'Elevated anxiety and depression', '2023-04-10', '2023-04-13', 'GAD-7', 1, 1, 'High', 'Referral scheduled');
INSERT INTO student_mental_health_screenings VALUES
('MHS003', 'STU1003', '2023-04-20', 'Counselor Carla', 16, 'Nonbinary', 5.0, 4.5, 5.5, 0, NULL, NULL, 'Monitoring recommended', '2023-04-15', '2023-04-21', 'PHQ-9', 1, 1, 'Medium', 'Follow‑up in 3 months');

-- School energy storage inventory
CREATE TABLE school_energy_storage_inventory
(
    StorageUnitID TEXT PRIMARY KEY,
    SchoolCode TEXT,
    UnitType TEXT,
    CapacityKWh REAL,
    CurrentChargeKWh REAL,
    InstallationDate DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    WarrantyEndDate DATE,
    Status TEXT,
    LastMaintenance DATE,
    MaintenanceProvider TEXT,
    LocationWithinSchool TEXT,
    EstimatedLifetimeYears INTEGER,
    EfficiencyPercent REAL,
    GridConnectionFlag INTEGER,
    MonitoringSystem TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    Notes TEXT
);

INSERT INTO school_energy_storage_inventory VALUES
('ESU001', 'S001', 'Battery', 250.0, 180.0, '2022-06-15', 'EcoPower', 'BP-250', '2027-06-15', 'Operational', '2023-05-01', 'TechServices', 'Basement', 10, 92.5, 1, 'EnergyWatch', '2022-06-01', '2023-05-02', 'Used for backup power');
INSERT INTO school_energy_storage_inventory VALUES
('ESU002', 'S002', 'Flywheel', 150.0, 75.0, '2021-09-20', 'SpinTech', 'FW-150', '2026-09-20', 'Operational', '2023-04-10', 'MaintainCo', 'Roof', 12, 88.0, 1, 'PowerMonitor', '2021-09-01', '2023-04-11', 'Supports peak shaving');
INSERT INTO school_energy_storage_inventory VALUES
('ESU003', 'S003', 'Battery', 300.0, 250.0, '2023-01-05', 'GreenEnergy', 'GE-300', '2028-01-05', 'Operational', '2023-07-15', 'PowerCare', 'Utility Room', 10, 94.0, 1, 'SmartGrid', '2023-01-01', '2023-07-16', 'Integrated with solar PV');