-- Facility Energy Audit Logs
CREATE TABLE facility_energy_audit_logs (
    AuditID               INTEGER PRIMARY KEY,
    FacilityID            TEXT    NOT NULL,
    AuditDate             DATE    NOT NULL,
    AuditorName           TEXT,
    AuditScope            TEXT,
    EnergySource          TEXT,
    PeakDemandKW          REAL,
    AvgDemandKW           REAL,
    TotalConsumptionKWh   REAL,
    RenewablePct          REAL,
    CO2EmissionsTon       REAL,
    Recommendations       TEXT,
    FollowUpDate          DATE,
    Status                TEXT,
    Comments              TEXT,
    BuildingAreaSqFt      REAL,
    HVACSystemType        TEXT,
    LightingType          TEXT,
    InsulationRating      TEXT,
    WeatherAdjustmentFactor REAL,
    UtilityProvider       TEXT,
    ContractNumber        TEXT,
    MeterReadingStart     REAL,
    MeterReadingEnd       REAL,
    EnergyCostUSD         REAL,
    SavingsPotentialUSD   REAL,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    Notes                 TEXT,
    DataSource            TEXT
);

INSERT INTO facility_energy_audit_logs VALUES (1, 'F001', '2023-03-15', 'John Doe', 'Full', 'Electric', 1200.5, 800.3, 35000.0, 15.2, 45.0, 'Upgrade HVAC', '2023-06-01', 'Open', 'N/A', 25000.0, 'VRF', 'LED', 'R-13', 0.95, 'UtilityCo', 'C12345', 15000.0, 15500.0, 42000.0, 5000.0, '2023-03-15', '2023-03-15', 'Initial audit', 'Internal');
INSERT INTO facility_energy_audit_logs VALUES (2, 'F002', '2023-04-20', 'Maria Smith', 'Partial', 'Gas', 950.0, 600.0, 22000.0, 10.0, 30.5, 'Seal ducts', '2023-07-15', 'Closed', 'Completed successfully', 18000.0, 'Boiler', 'Fluorescent', 'R-19', 0.90, 'EnergyPartner', 'C67890', 12000.0, 12250.0, 31000.0, 3000.0, '2023-04-20', '2023-04-21', 'Follow up required', 'External');
INSERT INTO facility_energy_audit_logs VALUES (3, 'F003', '2023-05-10', 'Alex Lee', 'Full', 'Solar', 500.0, 350.0, 15000.0, 40.0, 12.0, 'Install battery storage', '2023-08-01', 'Open', 'Pending budget approval', 12000.0, 'Heat Pump', 'LED', 'R-21', 1.00, 'SolarGrid', 'C24680', 8000.0, 8500.0, 18000.0, 2500.0, '2023-05-10', '2023-05-10', 'Awaiting funding', 'Internal');

-- Teacher Research Collaboration Network
CREATE TABLE teacher_research_collaboration_network (
    CollaborationID          INTEGER PRIMARY KEY,
    TeacherID                TEXT NOT NULL,
    PartnerInstitution       TEXT,
    ProjectTitle             TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    FundingSource            TEXT,
    GrantAmountUSD           REAL,
    RoleInProject            TEXT,
    PublicationCount         INTEGER,
    ConferencePresentations  INTEGER,
    ResearchArea             TEXT,
    Discipline               TEXT,
    CollaborationType        TEXT,
    DataSharingAgreement     TEXT,
    EthicalApprovalID        TEXT,
    Status                   TEXT,
    Outcomes                 TEXT,
    LastUpdated              DATE,
    CreatedAt                DATE,
    ContactEmail             TEXT,
    ContactPhone             TEXT,
    Biography                TEXT,
    ResearchMetricsScore     REAL,
    AdditionalNotes          TEXT,
    FundingPeriodMonths      INTEGER,
    PrimaryInvestigator      TEXT,
    SecondaryInvestigator    TEXT,
    CollaborationLevel       TEXT,
    ProjectAbstract          TEXT,
    DataRepositoryURL        TEXT,
    IsActive                 INTEGER
);

INSERT INTO teacher_research_collaboration_network VALUES (101, 'T001', 'State University', 'STEM Literacy', '2022-01-15', '2024-12-31', 'Federal Grant', 150000.0, 'PI', 5, 8, 'Education', 'Science', 'Interdisciplinary', 'Yes', 'EA123', 'Ongoing', 'Improved test scores', '2023-07-01', '2022-01-10', 't001@school.org', '555-1234', 'Experienced physics teacher', 88.5, 'N/A', 36, 'John Doe', 'Jane Roe', 'District', 'Developing curriculum for labs', 'http://datarepo.edu/proj101', 1);
INSERT INTO teacher_research_collaboration_network VALUES (102, 'T002', 'Tech Institute', 'AI in Math', '2021-09-01', '2023-08-31', 'Private Sponsor', 90000.0, 'Co-PI', 2, 4, 'Artificial Intelligence', 'Mathematics', 'Industry', 'No', 'EA456', 'Completed', 'Published 2 papers', '2023-09-01', '2021-08-20', 't002@school.org', '555-5678', 'Math specialist with AI focus', 75.2, 'Final report submitted', 24, 'Alice Green', 'Bob Blue', 'National', 'Integrating AI tutoring tools', 'http://datarepo.edu/proj102', 0);
INSERT INTO teacher_research_collaboration_network VALUES (103, 'T003', 'Community College', 'Literacy Outreach', '2023-02-10', NULL, 'County Grant', 50000.0, 'Lead', 0, 1, 'Literacy', 'English', 'Community', 'Yes', 'EA789', 'Active', 'Pending evaluation', '2023-07-15', '2023-02-01', 't003@school.org', '555-9012', 'English teacher with outreach experience', 62.0, 'Mid-year review scheduled', 12, 'Carol White', NULL, 'Local', 'After-school reading program', 'http://datarepo.edu/proj103', 1);

-- Community Partner Projects
CREATE TABLE community_partner_projects (
    ProjectID               INTEGER PRIMARY KEY,
    PartnerName             TEXT NOT NULL,
    ProjectTitle            TEXT,
    Description             TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    FundingAmountUSD        REAL,
    FundingSource           TEXT,
    ProjectStatus           TEXT,
    ContactPerson           TEXT,
    ContactEmail            TEXT,
    ContactPhone            TEXT,
    TargetPopulation        TEXT,
    ExpectedReach           INTEGER,
    Location                TEXT,
    CommunityImpactScore    REAL,
    MetricsCollected        TEXT,
    EvaluationMethod        TEXT,
    SustainabilityPlan      TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Notes                   TEXT,
    Category                TEXT,
    AlignmentWithDistrict   TEXT,
    IsActive                INTEGER,
    ReportingFrequency      TEXT,
    DataSharingAgreement    TEXT,
    OutcomeSummary          TEXT,
    ProjectWebsite          TEXT,
    BudgetBreakdown         TEXT
);

INSERT INTO community_partner_projects VALUES (201, 'Green Horizons', 'Urban Garden Initiative', 'Create community gardens in vacant lots', '2022-05-01', '2024-04-30', 75000.0, 'Local Grant', 'Ongoing', 'Sarah Green', 'sarah@greenhorizons.org', '555-2222', 'Residents ages 12-65', 1500, 'Downtown District', 85.4, 'Yield, Participation', 'Surveys and yield measurement', 'Volunteer maintenance plan', '2022-04-20', '2023-06-15', 'Seasonal planting schedule', 'Environmental', 'Supports district sustainability goals', 1, 'Quarterly', 'Yes', 'Increased fresh produce availability', 'http://greenhorizons.org/urban-garden', 'Seeds:20000,Tools:15000,Staff:40000');
INSERT INTO community_partner_projects VALUES (202, 'TechFuture', 'Coding Club Expansion', 'Expand after‑school coding clubs to middle schools', '2023-01-15', NULL, 50000.0, 'Corporate Sponsorship', 'Active', 'Mike Tech', 'mike@techfuture.com', '555-3333', 'Students grades 6‑8', 800, 'Northside Schools', 78.9, 'Enrollment, Skill assessments', 'Pre/post tests', 'Train volunteer mentors', '2023-01-10', '2023-07-01', 'Need additional laptops', 'Education', 'Aligns with district STEM initiatives', 1, 'Monthly', 'No', 'Improved coding proficiency', 'http://techfuture.org/coding-club', 'Laptops:30000,Curriculum:20000');
INSERT INTO community_partner_projects VALUES (203, 'HealthFirst', 'Youth Mental Wellness Workshops', 'Conduct workshops on stress management', '2022-09-01', '2023-12-31', 30000.0, 'Health Agency Grant', 'Completed', 'Lena Care', 'lena@healthfirst.org', '555-4444', 'Students grades 9‑12', 1200, 'All district schools', 90.1, 'Attendance, Survey scores', 'Pre/post surveys', 'Integrate into counseling services', '2022-08-20', '2024-01-05', 'Positive feedback', 'Wellness', 'Supports district mental health objectives', 0, 'Bi‑annual', 'Yes', 'Reduced reported stress levels', 'http://healthfirst.org/young-wellness', 'Facilitators:15000,Materials:15000');

-- District Transportation Fleet Maintenance
CREATE TABLE district_transportation_fleet_maintenance (
    MaintenanceID          INTEGER PRIMARY KEY,
    VehicleID              TEXT NOT NULL,
    ServiceDate            DATE NOT NULL,
    OdometerMileage        INTEGER,
    ServiceType            TEXT,
    ServiceProvider        TEXT,
    CostUSD                REAL,
    PartsReplaced          TEXT,
    LaborHours             REAL,
    TechnicianName         TEXT,
    ServiceNotes           TEXT,
    NextServiceDueMileage  INTEGER,
    InspectionPassed       TEXT,
    EmissionsTestResult   TEXT,
    FuelEfficiencyAfter    REAL,
    WarrantyStatus         TEXT,
    MaintenanceCategory    TEXT,
    IssueReported          TEXT,
    DowntimeHours          REAL,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    ServiceLocation        TEXT,
    ServiceOrderNumber     TEXT,
    PaymentMethod          TEXT,
    ApprovedBy             TEXT,
    FollowUpAction         TEXT,
    FuelType               TEXT,
    VehicleModelYear       INTEGER,
    VIN                    TEXT,
    IsActive               INTEGER,
    MileageSinceLastService INTEGER,
    ServiceDurationDays    INTEGER
);

INSERT INTO district_transportation_fleet_maintenance VALUES (301, 'BUS001', '2023-02-10', 45200, 'Engine Tune‑up', 'AutoCare Inc', 1200.0, 'Spark plugs, Filters', 4.5, 'Tom Wilson', 'Routine maintenance', 50000, 'Yes', 'Pass', 6.2, 'In Warranty', 'Preventive', 'None', 2.0, '2023-02-09', '2023-02-10', 'Depot A', 'SO12345', 'Credit Card', 'District Manager', 'Schedule next check', 'Diesel', 2018, '1HGCM82633A004352', 1, 4800, 1);
INSERT INTO district_transportation_fleet_maintenance VALUES (302, 'BUS045', '2023-04-22', 78000, 'Brake Replacement', 'BrakeWorks', 850.0, 'Brake pads, Rotors', 3.0, 'Sara Lee', 'Replaced front brakes', 85000, 'Yes', 'Pass', 5.8, 'Out of Warranty', 'Corrective', 'Squeaking noise', 5.5, '2023-04-21', '2023-04-22', 'Depot B', 'SO54321', 'Check', 'District Manager', 'Monitor brake wear', 'Diesel', 2015, '2HGCM82633A004353', 1, 78000, 0);
INSERT INTO district_transportation_fleet_maintenance VALUES (303, 'VAN012', '2023-06-15', 23000, 'Transmission Service', 'TransTech', 2100.0, 'Fluid, Gasket', 6.0, 'Mike Rivera', 'Fluid change and gasket replacement', 30000, 'No', 'Fail', 7.0, 'Extended Warranty', 'Corrective', 'Shifting delay', 12.0, '2023-06-14', '2023-06-15', 'Depot C', 'SO67890', 'Invoice', 'Transport Supervisor', 'Repair transmission', 'Gasoline', 2020, '3HGCM82633A004354', 1, 23000, 0);

-- School Arts Exhibit Inventory
CREATE TABLE school_arts_exhibit_inventory (
    ExhibitID              INTEGER PRIMARY KEY,
    SchoolID               TEXT NOT NULL,
    ExhibitTitle           TEXT,
    ArtistName             TEXT,
    CreationDate           DATE,
    Medium                 TEXT,
    Dimensions             TEXT,
    AcquisitionMethod      TEXT,
    AcquisitionDate        DATE,
    EstimatedValueUSD      REAL,
    InsurancePolicyNumber  TEXT,
    DisplayLocation        TEXT,
    InstallationDate       DATE,
    RemovalDate            DATE,
    ConditionRating        INTEGER,
    ConservationNotes      TEXT,
    CuratorName            TEXT,
    FundingSource          TEXT,
    GrantAmountUSD         REAL,
    ExhibitStatus         TEXT,
    PublicAccessLevel      TEXT,
    VisitorCount           INTEGER,
    LastInventoryCheck    DATE,
    CatalogNumber          TEXT,
    ExhibitedInAnnualShow INTEGER,
    Category               TEXT,
    Theme                  TEXT,
    ArtistBirthYear        INTEGER,
    ArtistNationality      TEXT,
    Tags                   TEXT,
    IsActive               INTEGER,
    CreatedAt              DATE,
    UpdatedAt              DATE
);

INSERT INTO school_arts_exhibit_inventory VALUES (401, 'SCH001', 'Sunset Over River', 'Emily Hart', '2018-05-10', 'Oil on Canvas', '48x36in', 'Purchase', '2019-01-15', 12000.0, 'INS-1001', 'Main Lobby', '2020-01-20', NULL, 9, 'No restoration needed', 'Laura Miles', 'District Arts Fund', 5000.0, 'On Display', 'Public', 3500, '2023-06-01', 'CAT-001', 1, 'Painting', 'Nature', 1985, 'American', 'sunset,river,nature', 1, '2022-09-01', '2023-06-05');
INSERT INTO school_arts_exhibit_inventory VALUES (402, 'SCH002', 'Digital Dreams', 'Alex Chen', '2020-11-22', 'Digital Print', '24x36in', 'Donation', '2021-02-05', 8000.0, 'INS-2002', 'Tech Lab', '2021-03-01', NULL, 8, 'Color fading observed', 'Mark Lee', 'Tech Grant', 3000.0, 'On Display', 'Restricted', 1200, '2023-05-20', 'CAT-002', 0, 'Print', 'Technology', 1992, 'Canadian', 'digital,tech,print', 1, '2022-10-12', '2023-05-22');
INSERT INTO school_arts_exhibit_inventory VALUES (403, 'SCH003', 'Sculpture of Hope', 'Nina Patel', '2015-07-14', 'Bronze', '18x24x12in', 'Commission', '2016-04-10', 25000.0, 'INS-3003', 'Outdoor Plaza', '2016-05-01', NULL, 10, 'Excellent condition', 'Samuel Ortiz', 'Community Fund', 10000.0, 'On Display', 'Public', 5600, '2023-04-18', 'CAT-003', 1, 'Sculpture', 'Inspiration', 1978, 'British', 'bronze,sculpture,hope', 1, '2022-11-30', '2023-04-20');

-- Student Mental Health Intervention Sessions
CREATE TABLE student_mental_health_intervention_sessions (
    SessionID           INTEGER PRIMARY KEY,
    StudentID           TEXT NOT NULL,
    SessionDate         DATE NOT NULL,
    CounselorName       TEXT,
    SessionType         TEXT,
    DurationMinutes     INTEGER,
    IssueCategory       TEXT,
    AssessmentScore     REAL,
    InterventionPlan    TEXT,
    FollowUpDate        DATE,
    SessionNotes        TEXT,
    ReferralSource      TEXT,
    ConfidentialityLevel TEXT,
    OutcomeRating       INTEGER,
    ParentInvolved      INTEGER,
    ConsentObtained     INTEGER,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    ProgramName         TEXT,
    FundingSource       TEXT,
    IsActive            INTEGER,
    SessionLocation     TEXT,
    SessionMode         TEXT,
    RiskLevel           TEXT,
    NextScheduledDate   DATE,
    DiagnosisCode       TEXT,
    TreatmentStage      TEXT,
    EmergencyFlag       INTEGER,
    SessionIDExternal   TEXT,
    ReviewNotes         TEXT,
    ApprovedBy          TEXT,
    ReviewDate          DATE,
    IsClosed            INTEGER
);

INSERT INTO student_mental_health_intervention_sessions VALUES (501, 'STU001', '2023-03-10', 'Dr. Allen', 'Individual Counseling', 45, 'Anxiety', 3.2, 'CBT techniques', '2023-04-10', 'Student reported improvement', 'Teacher referral', 'High', 4, 1, 1, '2023-03-09', '2023-03-10', 'Wellness Program', 'District Funds', 1, 'Room 101', 'In‑person', 'Medium', '2023-04-10', 'F41.1', 'Stage 2', 0, 'EXT-501', 'Reviewed by admin', 'Principal Smith', '2023-03-12', 0);
INSERT INTO student_mental_health_intervention_sessions VALUES (502, 'STU045', '2023-05-22', 'Ms. Rivera', 'Group Therapy', 60, 'Social Skills', 2.8, 'Role‑play activities', '2023-06-22', 'Group engaged positively', 'Parent request', 'Medium', 3, 0, 1, '2023-05-20', '2023-05-22', 'Social Skills Initiative', 'Grant ABC', 1, 'Room 202', 'In‑person', 'Low', '2023-06-22', 'R41.2', 'Stage 1', 0, 'EXT-502', 'Group progress noted', 'Counselor Lee', '2023-05-23', 0);
INSERT INTO student_mental_health_intervention_sessions VALUES (503, 'STU078', '2023-07-15', 'Dr. Patel', 'Crisis Intervention', 30, 'Depression', 4.5, 'Safety planning', '2023-07-20', 'Immediate risk addressed', 'Self‑referral', 'Critical', 5, 1, 1, '2023-07-14', '2023-07-15', 'Crisis Response Team', 'Emergency Funds', 1, 'Nurse Office', 'In‑person', 'High', '2023-07-20', 'F33.1', 'Stage 3', 1, 'EXT-503', 'Follow‑up required', 'Director Clark', '2023-07-16', 0);

-- Technology Vendor Performance Metrics
CREATE TABLE technology_vendor_performance_metrics (
    RecordID            INTEGER PRIMARY KEY,
    VendorID            TEXT NOT NULL,
    VendorName          TEXT,
    EvaluationPeriodStart DATE,
    EvaluationPeriodEnd   DATE,
    ServiceCategory       TEXT,
    SLACompliancePct     REAL,
    AvgResponseTimeHours REAL,
    AvgResolutionTimeHours REAL,
    IncidentCount        INTEGER,
    CriticalIncidentCount INTEGER,
    DowntimeHours        REAL,
    SupportTicketVolume  INTEGER,
    CustomerSatisfactionScore REAL,
    ContractRenewalStatus TEXT,
    ContractExpirationDate DATE,
    PricingModel          TEXT,
    TotalSpendUSD         REAL,
    DiscountAppliedPct    REAL,
    EscalationRatePct     REAL,
    TrainingProvidedHours REAL,
    OnSiteSupportHours    REAL,
    RemoteSupportHours    REAL,
    ComplianceAuditScore  REAL,
    RiskAssessmentLevel   TEXT,
    Notes                 TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    LastAuditDate         DATE,
    PerformanceTier       TEXT,
    IsActive              INTEGER
);

INSERT INTO technology_vendor_performance_metrics VALUES (601, 'V001', 'TechSolutions Ltd', '2023-01-01', '2023-12-31', 'Network Infrastructure', 96.5, 1.2, 4.5, 45, 5, 12.0, 180, 4.8, 'Pending', '2024-06-30', 'Subscription', 250000.0, 5.0, 2.0, 120.0, 200.0, 300.0, 88.0, 'Medium', 'Consistent performance', '2023-01-01', '2023-07-01', '2023-06-30', 'Gold', 1);
INSERT INTO technology_vendor_performance_metrics VALUES (602, 'V002', 'EduSoft Corp', '2023-01-01', '2023-12-31', 'Learning Management System', 89.0, 2.5, 8.0, 30, 2, 20.0, 95, 4.2, 'Renewed', '2025-01-15', 'License', 150000.0, 10.0, 3.5, 80.0, 150.0, 250.0, 82.5, 'High', 'Needs improvement in response time', '2023-01-01', '2023-07-01', '2023-06-28', 'Silver', 1);
INSERT INTO technology_vendor_performance_metrics VALUES (603, 'V003', 'SecureIT Services', '2023-01-01', '2023-12-31', 'Cybersecurity', 98.0, 0.8, 3.0, 15, 1, 5.0, 45, 4.9, 'Pending', '2024-09-30', 'Managed Service', 300000.0, 7.5, 1.0, 200.0, 250.0, 400.0, 92.0, 'Low', 'Exceeds expectations', '2023-01-01', '2023-07-01', '2023-06-29', 'Platinum', 1);

-- Environmental Sensor Deployment Log
CREATE TABLE environmental_sensor_deployment_log (
    DeploymentID          INTEGER PRIMARY KEY,
    SensorID              TEXT NOT NULL,
    SensorType            TEXT,
    Manufacturer          TEXT,
    ModelNumber           TEXT,
    InstallationDate      DATE,
    LocationDescription   TEXT,
    Latitude              REAL,
    Longitude             REAL,
    CalibrationDate       DATE,
    CalibrationMethod     TEXT,
    FirmwareVersion       TEXT,
    PowerSource           TEXT,
    BatteryLifeMonths     INTEGER,
    ConnectivityType      TEXT,
    NetworkSSID           TEXT,
    DataRetentionPeriodDays INTEGER,
    MaintenanceIntervalDays INTEGER,
    LastMaintenanceDate   DATE,
    Status                TEXT,
    DataQualityScore      REAL,
    AlertThresholdLow    REAL,
    AlertThresholdHigh   REAL,
    Units                 TEXT,
    IntegrationPlatform   TEXT,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    DecommissionDate      DATE,
    ReasonForDecommission TEXT,
    OwnerDepartment       TEXT,
    IsActive              INTEGER,
    DeploymentOrderNumber TEXT,
    GPSAltitudeMeters    REAL,
    SensorAccuracyPct    REAL,
    MaintenanceContact   TEXT,
    ServiceAgreementID   TEXT,
    WarrantyExpirationDate DATE
);

INSERT INTO environmental_sensor_deployment_log VALUES (701, 'SEN001', 'Air Quality', 'EnviroTech', 'AQ-100', '2023-02-15', 'Northwing Roof', 40.7128, -74.0060, '2023-02-14', 'Standard Lab', 'v1.2.3', 'Solar', 24, 'WiFi', 'SchoolNet', 365, 30, '2023-06-15', 'Active', 92.5, 0.0, 150.0, 'µg/m³', 'IoT Hub', '2023-02-10', '2023-06-20', NULL, NULL, 'Facilities', 1, 'DO-001', 15.3, 98.0, 'John Tech', 'SA-1001', '2026-02-15');
INSERT INTO environmental_sensor_deployment_log VALUES (702, 'SEN002', 'Temperature', 'ThermoSense', 'TMP-200', '2023-03-01', 'West Hall HVAC', 40.7130, -74.0062, '2023-02-28', 'On‑site Calibration', 'v2.0.0', 'Mains', NULL, 'Ethernet', 'SchoolNet', 730, 60, '2023-05-01', 'Active', 88.0, 18.0, 24.0, '°C', 'Building Management System', '2023-02-28', '2023-06-01', NULL, NULL, 'Operations', 1, 'DO-002', 10.5, 95.0, 'Emily Ops', 'SA-2002', '2025-03-01');
INSERT INTO environmental_sensor_deployment_log VALUES (703, 'SEN003', 'Noise Level', 'SoundMetrics', 'NL-300', '2022-11-20', 'Auditorium', 40.7125, -74.0059, '2022-11-19', 'Factory Calibration', 'v1.0.5', 'Battery', 12, 'Bluetooth', 'SchoolBLE', 180, 90, '2023-04-15', 'Inactive', 75.0, 30.0, 85.0, 'dB', 'Audio Analytics', '2022-11-15', '2023-04-20', '2023-09-01', 'Hardware failure', 'Facilities', 0, 'DO-003', 8.0, 90.0, 'Mike Audio', 'SA-3003', '2024-11-20');

-- Alumni Career Placement Stats
CREATE TABLE alumni_career_placement_stats (
    RecordID              INTEGER PRIMARY KEY,
    AlumniID              TEXT NOT NULL,
    GraduationYear        INTEGER,
    DegreeEarned          TEXT,
    Major                 TEXT,
    CurrentEmployer       TEXT,
    JobTitle              TEXT,
    EmploymentStartDate   DATE,
    SalaryUSD             REAL,
    IndustrySector        TEXT,
    EmploymentType        TEXT,
    LocationCity          TEXT,
    LocationState         TEXT,
    PromotionCount        INTEGER,
    YearsSinceGraduation  INTEGER,
    LinkedInProfileURL    TEXT,
    ProfessionalCertifications TEXT,
    SalaryGrowthPct       REAL,
    JobSatisfactionScore  REAL,
    RemoteWorkPercentage  REAL,
    MentorshipProgramParticipated INTEGER,
    AlumniEngagementLevel TEXT,
    LastContactDate       DATE,
    SurveyResponseRate    REAL,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    IsActive              INTEGER,
    Notes                 TEXT,
    DataSource            TEXT,
    VerificationStatus    TEXT,
    EmployerIndustryCode  TEXT,
    SalaryBand            TEXT,
    ContactPreference     TEXT,
    ReferralSource        TEXT,
    CareerProgressionStage TEXT
);

INSERT INTO alumni_career_placement_stats VALUES (801, 'ALU001', 2015, 'BSc', 'Computer Science', 'TechNova Inc', 'Software Engineer', '2015-09-01', 85000.0, 'Technology', 'Full‑time', 'San Francisco', 'CA', 2, 8, 'http://linkedin.com/in/alumni001', 'AWS Certified', 12.5, 4.2, 30.0, 1, 'High', '2023-06-10', 0.85, '2022-01-01', '2023-06-12', 1, 'Promoted twice', 'Alumni Survey', 'Verified', 'TEC-01', '70k-90k', 'Email', 'Campus Event', 'Mid‑Career');
INSERT INTO alumni_career_placement_stats VALUES (802, 'ALU045', 2018, 'BA', 'English Literature', 'WordWorks Publishing', 'Editor', '2018-07-15', 59000.0, 'Publishing', 'Full‑time', 'Portland', 'OR', 0, 5, 'http://linkedin.com/in/alumni045', 'Professional Editing Cert', 5.0, 3.8, 10.0, 0, 'Medium', '2023-05-20', 0.70, '2022-01-01', '2023-05-22', 1, 'No promotions yet', 'Alumni Survey', 'Verified', 'PUB-05', '55k-65k', 'Phone', 'Alumni Newsletter', 'Early‑Career');
INSERT INTO alumni_career_placement_stats VALUES (803, 'ALU078', 2020, 'MSc', 'Data Science', 'DataInsights LLC', 'Data Analyst', '2020-08-01', 72000.0, 'Analytics', 'Full‑time', 'Austin', 'TX', 1, 3, 'http://linkedin.com/in/alumni078', 'Tableau Desktop', 8.0, 4.5, 40.0, 1, 'High', '2023-07-01', 0.90, '2022-01-01', '2023-07-02', 1, 'Promoted to Analyst II', 'Alumni Survey', 'Verified', 'ANL-12', '70k-80k', 'Email', 'Career Fair', 'Mid‑Career');

-- School Parking Permit Transactions
CREATE TABLE school_parking_permit_transactions (
    TransactionID          INTEGER PRIMARY KEY,
    PermitID               TEXT NOT NULL,
    SchoolID               TEXT NOT NULL,
    PermitHolderName       TEXT,
    VehicleLicensePlate    TEXT,
    VehicleMakeModel       TEXT,
    PermitStartDate        DATE,
    PermitEndDate          DATE,
    PermitType             TEXT,
    PermitFeeUSD           REAL,
    PaymentMethod          TEXT,
    PaymentDate            DATE,
    IssuedByStaffID        TEXT,
    IssuedByStaffName      TEXT,
    IsRenewal              INTEGER,
    RenewalNoticeSentDate  DATE,
    ViolationCount         INTEGER,
    TotalViolationsFeeUSD  REAL,
    ParkingZone            TEXT,
    AccessLevel            TEXT,
    VehicleColor           TEXT,
    StickerNumber          TEXT,
    Notes                  TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    IsActive               INTEGER,
    ExpirationNoticeSent   INTEGER,
    LastInspectionDate     DATE,
    InspectionResult       TEXT,
    EnforcementAgency      TEXT,
    RegistrationState      TEXT,
    EmissionsTestPassed    TEXT,
    PermitCategory         TEXT,
    DiscountAppliedPct     REAL,
    BillingCycleMonth      INTEGER,
    BillingCycleYear       INTEGER,
    TransactionReference   TEXT,
    PaymentConfirmationID  TEXT,
    ApprovedByAdministrator TEXT
);

INSERT INTO school_parking_permit_transactions VALUES (901, 'P001', 'SCH001', 'Laura Kim', 'ABC1234', 'Toyota Camry', '2023-01-01', '2023-12-31', 'Annual', 120.00, 'Credit Card', '2022-12-20', 'STF001', 'Mark Johnson', 0, NULL, 0, 0.0, 'Zone A', 'Student', 'Blue', 'STK001', 'No issues', '2022-12-01', '2023-01-02', 1, 0, NULL, NULL, 'Campus Police', 'CA', 'Yes', 'Standard', 0.0, 1, 2023, 'TXN001', 'CONF001', 'Principal Lee');
INSERT INTO school_parking_permit_transactions VALUES (902, 'P045', 'SCH002', 'Samuel Ortiz', 'XYZ5678', 'Honda Civic', '2023-03-15', '2024-03-14', 'Annual', 130.00, 'Check', '2023-03-01', 'STF045', 'Nina Patel', 1, '2024-02-20', 1, 50.00, 'Zone B', 'Staff', 'Red', 'STK045', 'One parking violation March 2023', '2023-02-28', '2023-03-16', 1, 1, '2023-09-01', 'Pass', 'Campus Police', 'CA', 'Yes', 'Staff', 5.0, 3, 2023, 'TXN045', 'CONF045', 'Administrator Gomez');
INSERT INTO school_parking_permit_transactions VALUES (903, 'P078', 'SCH003', 'Emily Hart', 'LMN9012', 'Ford Escape', '2023-06-01', '2023-11-30', 'Semester', 70.00, 'Cash', '2023-05-25', 'STF078', 'Carlos Ruiz', 0, NULL, 0, 0.0, 'Zone C', 'Visitor', 'White', 'STK078', 'Temporary visitor permit', '2023-05-20', '2023-06-02', 1, 0, NULL, NULL, 'Campus Security', 'CA', 'N/A', 'Visitor', 0.0, 6, 2023, 'TXN078', 'CONF078', 'Campus Security Lead');