-- District holiday schedule (non‑overlapping with school data)
CREATE TABLE district_holiday_schedule (
    HolidayID          INTEGER PRIMARY KEY,
    DistrictCode       TEXT NOT NULL,
    Year               INTEGER NOT NULL,
    HolidayCode        TEXT NOT NULL,
    HolidayName        TEXT NOT NULL,
    HolidayDate        TEXT NOT NULL,          -- stored as YYYY‑MM‑DD
    ObservedDate       TEXT NULL,
    IsStateHoliday     INTEGER NOT NULL,       -- 0 = no, 1 = yes
    IsMandatory        INTEGER NOT NULL,
    CalendarType       TEXT NOT NULL,
    Region             TEXT NULL,
    Description        TEXT NULL,
    CreatedBy          TEXT NOT NULL,
    CreatedDate        TEXT NOT NULL,
    UpdatedBy          TEXT NULL,
    UpdatedDate        TEXT NULL,
    IsActive           INTEGER NOT NULL,
    Notes              TEXT NULL,
    FundingSource      TEXT NULL,
    ApprovalStatus     TEXT NOT NULL,
    ApprovalDate       TEXT NULL
);

INSERT INTO district_holiday_schedule VALUES (1, 'D001', 2024, 'HOL01', 'NewYear', '2024-01-01', '2024-01-02', 1, 1, 'Official', 'North', 'First day of year', 'admin', '2023-12-01', 'admin', '2023-12-15', 1, NULL, 'StateFund', 'Approved', '2023-12-01');
INSERT INTO district_holiday_schedule VALUES (2, 'D002', 2024, 'HOL02', 'IndependenceDay', '2024-07-04', NULL, 1, 1, 'Federal', 'South', 'National holiday', 'admin', '2023-12-01', NULL, NULL, 1, NULL, 'FederalGrant', 'Pending', NULL);
INSERT INTO district_holiday_schedule VALUES (3, 'D001', 2024, 'HOL03', 'LaborDay', '2024-09-02', '2024-09-02', 1, 0, 'Regional', 'North', 'Observed labor day', 'admin', '2023-12-01', 'admin', '2024-01-10', 1, NULL, 'LocalBudget', 'Approved', '2024-01-08');

-- State grant allocation summary (adjacent to FRPM financial data)
CREATE TABLE state_grant_allocation_summary (
    AllocationID          INTEGER PRIMARY KEY,
    GrantProgramCode      TEXT NOT NULL,
    FiscalYear            INTEGER NOT NULL,
    TotalAwardAmount      REAL NOT NULL,
    DisbursedAmount       REAL NOT NULL,
    RemainingBalance      REAL NOT NULL,
    NumberOfRecipients    INTEGER NOT NULL,
    AverageAwardPerRecip  REAL NOT NULL,
    StateAgency           TEXT NOT NULL,
    GrantCategory         TEXT NOT NULL,
    EligibilityCriteria  TEXT NULL,
    ApplicationDeadline   TEXT NOT NULL,      -- YYYY-MM-DD
    AwardDate             TEXT NOT NULL,
    ExpirationDate        TEXT NOT NULL,
    ReportingFrequency    TEXT NOT NULL,
    MonitoringAgency      TEXT NOT NULL,
    AuditRequired         INTEGER NOT NULL,   -- 0/1
    CostSharingRequired   INTEGER NOT NULL,
    MatchingFundsPct      REAL NOT NULL,
    CreatedDate           TEXT NOT NULL,
    CreatedBy             TEXT NOT NULL,
    UpdatedDate           TEXT NULL,
    UpdatedBy             TEXT NULL,
    IsActive              INTEGER NOT NULL
);

INSERT INTO state_grant_allocation_summary VALUES (1001, 'GRP01', 2023, 12500000.00, 8000000.00, 4500000.00, 45, 277777.78, 'DeptEducation', 'Infrastructure', 'K12Public', '2023-05-01', '2023-07-15', '2025-07-15', 'Annual', 'OfficeAudit', 1, 1, 0.20, '2023-01-10', 'state_admin', NULL, NULL, 1);
INSERT INTO state_grant_allocation_summary VALUES (1002, 'GRP02', 2024, 5000000.00, 2500000.00, 2500000.00, 20, 250000.00, 'DeptHealth', 'Wellness', NULL, '2024-03-15', '2024-06-01', '2026-06-01', 'BiAnnual', 'HealthOffice', 0, 0, 0.00, '2024-01-05', 'state_admin', NULL, NULL, 1);
INSERT INTO state_grant_allocation_summary VALUES (1003, 'GRP03', 2023, 2000000.00, 1500000.00, 500000.00, 10, 200000.00, 'DeptTransportation', 'GreenFleet', 'PublicTrans', '2023-04-20', '2023-08-01', '2025-08-01', 'Quarterly', 'TransportAudit', 1, 1, 0.15, '2023-02-20', 'state_admin', NULL, NULL, 1);

-- School transportation sustainability metrics
CREATE TABLE school_transport_sustainability (
    RecordID               INTEGER PRIMARY KEY,
    SchoolCode             TEXT NOT NULL,
    CalendarYear           INTEGER NOT NULL,
    TotalMilesDriven       REAL NOT NULL,
    FuelGallonsConsumed    REAL NOT NULL,
    CO2EmissionsKg        REAL NOT NULL,
    ElectricMiles          REAL NOT NULL,
    DieselMiles            REAL NOT NULL,
    HybridVehicleCount     INTEGER NOT NULL,
    ElectricVehicleCount   INTEGER NOT NULL,
    AvgFuelEfficiencyMpg   REAL NOT NULL,
    RenewableFuelPct       REAL NOT NULL,
    MaintenanceHours       REAL NOT NULL,
    IncidentsReported      INTEGER NOT NULL,
    SafetyScore            REAL NOT NULL,
    RouteOptimizationPct  REAL NOT NULL,
    StudentRidershipCount  INTEGER NOT NULL,
    BusCapacityUtilization REAL NOT NULL,
    FundingSource          TEXT NOT NULL,
    SubmissionDate         TEXT NOT NULL,
    ApprovedBy             TEXT NOT NULL,
    ApprovalDate           TEXT NOT NULL,
    Remarks                TEXT NULL,
    IsVerified             INTEGER NOT NULL
);

INSERT INTO school_transport_sustainability VALUES (501, 'SC001', 2023, 150000.0, 12000.0, 31500.0, 20000.0, 130000.0, 5, 2, 12.5, 10.0, 350.0, 3, 92.5, 25.0, 1200, 78.0, 'StateGrant', '2023-12-10', 'admin', '2023-12-15', NULL, 1);
INSERT INTO school_transport_sustainability VALUES (502, 'SC002', 2023, 175000.0, 14000.0, 36750.0, 30000.0, 145000.0, 8, 3, 12.5, 12.5, 400.0, 1, 95.0, 30.0, 1500, 82.5, 'LocalBudget', '2023-12-12', 'admin', '2023-12-18', NULL, 1);
INSERT INTO school_transport_sustainability VALUES (503, 'SC003', 2023, 130000.0, 10500.0, 27675.0, 15000.0, 115000.0, 4, 1, 13.0, 8.0, 320.0, 2, 90.0, 20.0, 1100, 75.0, 'FederalAid', '2023-12-11', 'admin', '2023-12-16', NULL, 1);

-- Community arts funding applications
CREATE TABLE community_arts_funding_app (
    ApplicationID          INTEGER PRIMARY KEY,
    ApplicantOrgName       TEXT NOT NULL,
    ContactPerson          TEXT NOT NULL,
    ContactPhone           TEXT NOT NULL,
    ContactEmail           TEXT NOT NULL,
    ProjectTitle           TEXT NOT NULL,
    ProjectDescription     TEXT NULL,
    RequestedAmount        REAL NOT NULL,
    FundingPeriodStart     TEXT NOT NULL,
    FundingPeriodEnd       TEXT NOT NULL,
    SubmissionDate         TEXT NOT NULL,
    ReviewStatus           TEXT NOT NULL,
    ReviewerAssigned       TEXT NULL,
    ReviewDate             TEXT NULL,
    Decision               TEXT NULL,
    DecisionDate           TEXT NULL,
    GrantProgramCode       TEXT NOT NULL,
    MatchingFundsProvided  REAL NULL,
    CommunityImpactScore   REAL NULL,
    EligibilityCriteria    TEXT NULL,
    ZoneCode               TEXT NOT NULL,
    Latitude               REAL NULL,
    Longitude              REAL NULL,
    CreatedBy              TEXT NOT NULL,
    CreatedDate            TEXT NOT NULL,
    UpdatedBy              TEXT NULL,
    UpdatedDate            TEXT NULL,
    IsActive               INTEGER NOT NULL
);

INSERT INTO community_arts_funding_app VALUES (2001, 'RiverArtsCollective', 'Alice Smith', '5551234567', 'alice@riverarts.org', 'River Mural Project', 'Create a large mural along the downtown riverfront', 50000.00, '2024-06-01', '2024-12-31', '2024-02-15', 'Pending', 'john_doe', NULL, NULL, NULL, 'ART01', NULL, NULL, 'NonProfit', 'Z001', NULL, NULL, 'admin', '2024-02-10', NULL, NULL, 1);
INSERT INTO community_arts_funding_app VALUES (2002, 'CityKidsTheatre', 'Bob Jones', '5559876543', 'bob@citykids.org', 'Summer Theatre Workshops', 'Provide free workshops for youth', 30000.00, '2024-07-01', '2024-09-30', '2024-02-20', 'Approved', 'jane_smith', '2024-03-01', 'Approved', '2024-03-05', 'ART02', 15000.00, 85.0, 'NonProfit', 'Z002', 40.7128, -74.0060, 'admin', '2024-02-12', 'admin', '2024-03-02', 1);
INSERT INTO community_arts_funding_app VALUES (2003, 'HistoricPreserveOrg', 'Carol Lee', '5555551212', 'carol@preserve.org', 'Historic Building Restoration', 'Restore facade of historic school building', 75000.00, '2024-05-01', '2025-04-30', '2024-02-25', 'Rejected', 'mark_twain', '2024-03-10', 'Rejected', '2024-03-12', 'ART03', 0.00, 70.0, 'NonProfit', 'Z003', 34.0522, -118.2437, 'admin', '2024-02-15', 'admin', '2024-03-11', 1);

-- District technology innovation portfolio
CREATE TABLE district_tech_innovation_portfolio (
    PortfolioID            INTEGER PRIMARY KEY,
    InitiativeCode         TEXT NOT NULL,
    InitiativeName         TEXT NOT NULL,
    LaunchYear             INTEGER NOT NULL,
    LeadDepartment         TEXT NOT NULL,
    BudgetAllocated        REAL NOT NULL,
    ExpenditureToDate      REAL NOT NULL,
    Status                 TEXT NOT NULL,
    ExpectedCompletionYear INTEGER NOT NULL,
    PrimaryTechnology      TEXT NOT NULL,
    TechVendor             TEXT NOT NULL,
    VendorContractID       TEXT NOT NULL,
    ContractStartDate      TEXT NOT NULL,
    ContractEndDate        TEXT NOT NULL,
    NumberOfSchoolsImpacted INTEGER NOT NULL,
    StudentReachCount      INTEGER NOT NULL,
    TeacherTrainingHours   INTEGER NOT NULL,
    EvaluationScore        REAL NULL,
    RiskLevel              TEXT NOT NULL,
    SustainabilityPlan     TEXT NULL,
    CreatedBy              TEXT NOT NULL,
    CreatedDate            TEXT NOT NULL,
    UpdatedBy              TEXT NULL,
    UpdatedDate            TEXT NULL,
    IsPublic               INTEGER NOT NULL,
    Notes                  TEXT NULL,
    FundingSource          TEXT NOT NULL,
    GovernanceCommittee    TEXT NOT NULL,
    ReviewCycleMonths      INTEGER NOT NULL,
    LastReviewDate         TEXT NULL,
    IsActive               INTEGER NOT NULL
);

INSERT INTO district_tech_innovation_portfolio VALUES (3001, 'TI01', 'Smart Classroom Sensors', 2022, 'ICT', 1200000.00, 800000.00, 'InProgress', 2025, 'IoT', 'SensorCo', 'VC1001', '2022-01-15', '2025-12-31', 35, 12000, 250, 88.5, 'Medium', NULL, 'admin', '2022-01-01', NULL, NULL, 1, NULL, 'StateGrant', 'TechSteering', 12, NULL, 1);
INSERT INTO district_tech_innovation_portfolio VALUES (3002, 'TI02', 'Virtual Lab Platform', 2021, 'STEM', 900000.00, 900000.00, 'Completed', 2023, 'Cloud', 'EduCloud', 'VC2002', '2021-06-01', '2023-05-31', 50, 25000, 500, 92.0, 'Low', 'Ongoing support plan', 'admin', '2021-05-20', NULL, NULL, 1, NULL, 'FederalAid', 'STEMCommittee', 6, '2023-06-01', 1);
INSERT INTO district_tech_innovation_portfolio VALUES (3003, 'TI03', 'AI‑Assisted Tutoring', 2023, 'LearningSupport', 600000.00, 150000.00, 'Planning', 2026, 'AI', 'AIHelper', 'VC3003', '2023-09-01', '2026-08-31', 20, 8000, 100, NULL, 'High', NULL, 'admin', '2023-08-10', NULL, NULL, 1, NULL, 'PrivateDonor', 'AIAdvisory', 9, NULL, 1);

-- Regional air quality incidents
CREATE TABLE regional_air_quality_incidents (
    IncidentID          INTEGER PRIMARY KEY,
    RegionCode          TEXT NOT NULL,
    IncidentDate        TEXT NOT NULL,
    IncidentType        TEXT NOT NULL,
    Primary pollutant   TEXT NOT NULL,
    AQI_Value           INTEGER NOT NULL,
    HealthAdvisoryLevel TEXT NOT NULL,
    schools_affected    INTEGER NOT NULL,
    PopulationImpact    INTEGER NOT NULL,
    DurationHours       REAL NOT NULL,
    SourceDescription   TEXT NULL,
    MitigationActions   TEXT NULL,
    ReportedBy          TEXT NOT NULL,
    ReportedDate        TEXT NOT NULL,
    Verified            INTEGER NOT NULL,
    Latitude            REAL NULL,
    Longitude           REAL NULL,
    CreatedBy           TEXT NOT NULL,
    CreatedDate         TEXT NOT NULL,
    UpdatedBy           TEXT NULL,
    UpdatedDate         TEXT NULL,
    IsActive            INTEGER NOT NULL,
    Notes               TEXT NULL,
    EmergencyDeclared   INTEGER NOT NULL,
    ContingencyPlanID   TEXT NULL,
    WeatherConditions   TEXT NULL,
    VisibilityKm        REAL NULL,
    SensorCount         INTEGER NOT NULL,
    PublicAlertIssued   INTEGER NOT NULL
);

INSERT INTO regional_air_quality_incidents VALUES (4001, 'R01', '2024-03-12', 'Smog', 'PM2.5', 180, 'Unhealthy', 12, 45000, 48.0, 'Industrial emission spike', 'Issued health advisory, closed parks', 'env_officer', '2024-03-12', 1, 38.8951, -77.0364, 'admin', '2024-03-10', NULL, NULL, 1, NULL, 0, NULL, 'Windy', 2.5, 8, 1);
INSERT INTO regional_air_quality_incidents VALUES (4002, 'R02', '2024-04-05', 'Wildfire Smoke', 'PM10', 150, 'Unhealthy for Sensitive Groups', 5, 18000, 72.0, 'Nearby wildfire', 'Evacuated vulnerable schools, provided masks', 'env_officer', '2024-04-05', 1, 34.0522, -118.2437, 'admin', '2024-04-03', NULL, NULL, 1, NULL, 1, 'CP001', 'Hot', 3.0, 12, 1);
INSERT INTO regional_air_quality_incidents VALUES (4003, 'R03', '2024-05-20', 'Ozone Alert', 'O3', 120, 'Moderate', 8, 26000, 24.0, 'Heat wave', 'Reduced outdoor activities', 'env_officer', '2024-05-20', 1, 40.7128, -74.0060, 'admin', '2024-05-18', NULL, NULL, 1, NULL, 0, NULL, 'Clear', 4.0, 10, 0);

-- School mental health staffing
CREATE TABLE school_mental_health_staffing (
    StaffingID            INTEGER PRIMARY KEY,
    SchoolCode            TEXT NOT NULL,
    FiscalYear            INTEGER NOT NULL,
    CounselorFTE          REAL NOT NULL,
    PsychologistFTE       REAL NOT NULL,
    SocialWorkerFTE       REAL NOT NULL,
    NurseFTE              REAL NOT NULL,
    TotalStaffFTE         REAL NOT NULL,
    StudentCounselorRatio REAL NOT NULL,
    FundingSource         TEXT NOT NULL,
    GrantAmount           REAL NULL,
    PositionVacancies     INTEGER NOT NULL,
    HiringPlanStatus      TEXT NOT NULL,
    TrainingHoursProvided INTEGER NOT NULL,
    CertificationsHeld    TEXT NULL,
    LicenseExpirationDate TEXT NULL,
    CreatedBy             TEXT NOT NULL,
    CreatedDate           TEXT NOT NULL,
    UpdatedBy             TEXT NULL,
    UpdatedDate           TEXT NULL,
    IsActive              INTEGER NOT NULL,
    Notes                 TEXT NULL,
    ComplianceScore       REAL NULL,
    ExternalPartner       TEXT NULL,
    ServiceHoursPerWeek   REAL NOT NULL,
    TargetStudentReach    INTEGER NOT NULL,
    MentalHealthProgram  TEXT NOT NULL,
    EvaluationDate        TEXT NULL,
    EvaluationScore       REAL NULL,
    IsCertified           INTEGER NOT NULL
);

INSERT INTO school_mental_health_staffing VALUES (6001, 'SC001', 2023, 1.5, 0.5, 0.8, 0.7, 3.5, 250.0, 'StateGrant', 50000.00, 0, 'Completed', 120, 'LCSW, LPC', '2025-06-30', 'admin', '2023-01-15', NULL, NULL, 1, NULL, 88.0, 'CommunityHealthOrg', 10.0, 1500, 'WellnessSeries', '2023-12-01', 92.5, 1);
INSERT INTO school_mental_health_staffing VALUES (6002, 'SC002', 2023, 1.2, 0.3, 0.6, 0.5, 2.6, 300.0, 'LocalBudget', NULL, 1, 'InProgress', 80, 'LCSW', '2024-12-31', 'admin', '2023-02-10', NULL, NULL, 1, NULL, 75.0, NULL, 8.0, 1200, 'SupportProgram', '2023-11-15', 78.0, 1);
INSERT INTO school_mental_health_staffing VALUES (6003, 'SC003', 2023, 0.9, 0.2, 0.4, 0.3, 1.8, 200.0, 'FederalAid', 30000.00, 0, 'Completed', 60, 'LPC', '2025-03-31', 'admin', '2023-03-05', NULL, NULL, 1, NULL, 82.0, 'YouthServices', 6.0, 800, 'ResilienceProgram', '2023-10-20', 85.0, 1);

-- District equity initiative projects
CREATE TABLE district_equity_initiative_projects (
    ProjectID               INTEGER PRIMARY KEY,
    InitiativeCode          TEXT NOT NULL,
    ProjectName             TEXT NOT NULL,
    StartDate               TEXT NOT NULL,
    EndDate                 TEXT NULL,
    LeadOffice              TEXT NOT NULL,
    TotalBudget             REAL NOT NULL,
    AllocatedAmount         REAL NOT NULL,
    TargetPopulation        TEXT NOT NULL,
    BeneficiaryCount        INTEGER NOT NULL,
    PrimaryMetric           TEXT NOT NULL,
    MetricGoal              REAL NOT NULL,
    CurrentMetricValue      REAL NULL,
    Status                  TEXT NOT NULL,
    RiskLevel               TEXT NOT NULL,
    FundingSource           TEXT NOT NULL,
    PartnerOrganization     TEXT NULL,
    CommunityEngagementPlan TEXT NULL,
    CreatedBy               TEXT NOT NULL,
    CreatedDate             TEXT NOT NULL,
    UpdatedBy               TEXT NULL,
    UpdatedDate             TEXT NULL,
    IsActive                INTEGER NOT NULL,
    Notes                   TEXT NULL,
    EvaluationDate          TEXT NULL,
    EvaluationScore         REAL NULL,
    SustainabilityPlan      TEXT NULL,
    ReportingFrequency     TEXT NOT NULL,
    LastReportDate         TEXT NULL,
    ComplianceStatus       TEXT NOT NULL
);

INSERT INTO district_equity_initiative_projects VALUES (7001, 'EQ01', 'Early Literacy Boost', '2023-09-01', NULL, 'OfficeOfEducation', 2000000.00, 1500000.00, 'K12Students', 50000, 'ReadingScore', 85.0, NULL, 'Active', 'Medium', 'StateGrant', 'ReadingNonProfit', NULL, 'admin', '2023-08-15', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'Quarterly', NULL, 'Compliant');
INSERT INTO district_equity_initiative_projects VALUES (7002, 'EQ02', 'STEM Access Expansion', '2022-01-15', '2025-12-31', 'OfficeOfSTEM', 3500000.00, 3000000.00, 'HighSchoolStudents', 30000, 'APMathParticipation', 40.0, 35.0, 'OnTrack', 'Low', 'FederalAid', 'TechCorp', NULL, 'admin', '2021-12-01', NULL, NULL, 1, NULL, '2024-06-30', 88.0, 'LongTerm', 'Annual', '2024-06-30', 'Compliant');
INSERT INTO district_equity_initiative_projects VALUES (7003, 'EQ03', 'Cultural Inclusion Programs', '2024-03-01', NULL, 'OfficeOfDiversity', 1200000.00, 800000.00, 'AllStudents', 100000, 'InclusionIndex', 90.0, NULL, 'Planning', 'High', 'LocalBudget', 'CommunityArts', NULL, 'admin', '2024-02-20', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'BiAnnual', NULL, 'Pending');

-- School energy battery inventory
CREATE TABLE school_energy_battery_inventory (
    BatteryID               INTEGER PRIMARY KEY,
    SchoolCode              TEXT NOT NULL,
    InstallationDate        TEXT NOT NULL,
    BatteryModel            TEXT NOT NULL,
    Manufacturer            TEXT NOT NULL,
    CapacityKWh             REAL NOT NULL,
    VoltageV                REAL NOT NULL,
    CurrentA                REAL NOT NULL,
    ExpectedLifeYears       INTEGER NOT NULL,
    WarrantyEndDate         TEXT NOT NULL,
    SerialNumber            TEXT NOT NULL,
    LocationDescription     TEXT NOT NULL,
    MaintenanceContractID   TEXT NULL,
    LastInspectionDate      TEXT NULL,
    InspectionStatus        TEXT NULL,
    ChargeCyclesCompleted   INTEGER NOT NULL,
    StateOfHealthPct        REAL NOT NULL,
    FundingSource           TEXT NOT NULL,
    GrantAwardNumber        TEXT NULL,
    CreatedBy               TEXT NOT NULL,
    CreatedDate             TEXT NOT NULL,
    UpdatedBy               TEXT NULL,
    UpdatedDate             TEXT NULL,
    IsActive                INTEGER NOT NULL,
    Notes                   TEXT NULL,
    ReplacementPlannedYear  INTEGER NULL,
    DecommissionDate        TEXT NULL,
    RecyclingPartner        TEXT NULL,
    DisposalMethod          TEXT NULL,
    ComplianceCertificate   TEXT NULL,
    MonitoringSystemID      TEXT NULL
);

INSERT INTO school_energy_battery_inventory VALUES (8001, 'SC001', '2023-06-15', 'PB1000', 'PowerGrid', 250.0, 48.0, 5.2, 10, '2033-06-15', 'SN100001', 'RoofNorth', 'MC001', '2024-06-01', 'Passed', 150, 95.0, 'StateGrant', 'GR001', 'admin', '2023-06-10', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO school_energy_battery_inventory VALUES (8002, 'SC002', '2022-09-20', 'PB2000', 'EnergyTech', 400.0, 48.0, 8.3, 12, '2034-09-20', 'SN200002', 'BasementEast', 'MC002', '2024-05-15', 'Passed', 200, 92.0, 'LocalBudget', NULL, 'admin', '2022-09-15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO school_energy_battery_inventory VALUES (8003, 'SC003', '2024-01-10', 'PB1500', 'GreenPower', 300.0, 48.0, 6.5, 11, '2035-01-10', 'SN300003', 'GymSouth', NULL, NULL, NULL, 0, 100.0, 'FederalAid', 'GR003', 'admin', '2023-12-30', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- District public safety resource inventory
CREATE TABLE district_public_safety_resources (
    ResourceID               INTEGER PRIMARY KEY,
    ResourceType            TEXT NOT NULL,
    AssetID                 TEXT NOT NULL,
    Description             TEXT NOT NULL,
    Quantity                INTEGER NOT NULL,
    Location                TEXT NOT NULL,
    AssignedDepartment      TEXT NOT NULL,
    AcquisitionDate         TEXT NOT NULL,
    ServiceLifeYears        INTEGER NOT NULL,
    MaintenanceCycleMonths  INTEGER NOT NULL,
    LastMaintenanceDate     TEXT NULL,
    NextMaintenanceDue      TEXT NULL,
    ConditionStatus         TEXT NOT NULL,
    FundingSource           TEXT NOT NULL,
    AnnualBudgetAllocated   REAL NOT NULL,
    CurrentUtilizationPct   REAL NOT NULL,
    ContactPerson           TEXT NOT NULL,
    ContactPhone            TEXT NOT NULL,
    CreatedBy               TEXT NOT NULL,
    CreatedDate             TEXT NOT NULL,
    UpdatedBy               TEXT NULL,
    UpdatedDate             TEXT NULL,
    IsActive                INTEGER NOT NULL,
    Notes                   TEXT NULL,
    WarrantyExpirationDate  TEXT NULL,
    Vendor                  TEXT NULL,
    ComplianceRequirement   TEXT NULL,
    InspectionFrequencyMonths INTEGER NOT NULL,
    LastInspectionDate      TEXT NULL,
    InspectionStatus        TEXT NOT NULL
);

INSERT INTO district_public_safety_resources VALUES (9001, 'PatrolVehicle', 'PV001', '4WD patrol car', 8, 'DepotNorth', 'PoliceDept', '2020-03-01', 10, 12, '2024-03-01', '2025-03-01', 'Good', 'StateGrant', 800000.00, 45.0, 'John Doe', '5551112222', 'admin', '2020-02-20', NULL, NULL, 1, NULL, '2025-03-01', 'AutoWorks', 'StateRegulation', 12, '2024-02-28', 'Passed');
INSERT INTO district_public_safety_resources VALUES (9002, 'AED', 'AED001', 'Automated External Defibrillator', 25, 'VariousSchools', 'HealthDept', '2021-05-15', 7, 6, '2024-05-01', '2024-11-01', 'Excellent', 'LocalBudget', 125000.00, 60.0, 'Jane Smith', '5553334444', 'admin', '2021-05-01', NULL, NULL, 1, NULL, '2024-11-01', 'MedicalSupplyCo', 'HealthSafetyStandard', 6, '2024-04-30', 'Passed');
INSERT INTO district_public_safety_resources VALUES (9003, 'SurveillanceCamera', 'SC001', 'HD security camera', 120, 'AllCampuses', 'SecurityDept', '2019-09-10', 8, 12, '2024-09-10', '2025-09-10', 'Fair', 'FederalAid', 300000.00, 70.0, 'Mike Lee', '5557778888', 'admin', '2019-09-01', NULL, NULL, 1, NULL, '2025-09-10', 'SecureTech', 'PrivacyRegulation', 12, '2024-09-01', 'Passed');

-- School arts exhibition catalog
CREATE TABLE school_arts_exhibition_catalog (
    ExhibitID               INTEGER PRIMARY KEY,
    SchoolCode              TEXT NOT NULL,
    ExhibitionTitle         TEXT NOT NULL,
    StartDate               TEXT NOT NULL,
    EndDate                 TEXT NOT NULL,
    CuratorName             TEXT NOT NULL,
    NumberOfWorks           INTEGER NOT NULL,
    TotalArtistCount        INTEGER NOT NULL,
    PrimaryMedium           TEXT NOT NULL,
    VenueLocation           TEXT NOT NULL,
    FundingSource           TEXT NOT NULL,
    GrantAmount             REAL NULL,
    TicketPrice             REAL NULL,
    ExpectedAttendance      INTEGER NOT NULL,
    ActualAttendance        INTEGER NULL,
    VisitorFeedbackScore    REAL NULL,
    MediaCoverageLinks      TEXT NULL,
    InstallationCost        REAL NOT NULL,
    MaintenanceCost         REAL NOT NULL,
    SafetyProtocolDoc       TEXT NULL,
    CreatedBy               TEXT NOT NULL,
    CreatedDate             TEXT NOT NULL,
    UpdatedBy               TEXT NULL,
    UpdatedDate             TEXT NULL,
    IsActive                INTEGER NOT NULL,
    Notes                   TEXT NULL,
    SponsorshipDetails      TEXT NULL,
    AccessibilityFeatures   TEXT NULL,
    InsurancePolicyNumber   TEXT NULL,
    LegalReleaseSigned      INTEGER NOT NULL,
    PostEventReportLink     TEXT NULL
);

INSERT INTO school_arts_exhibition_catalog VALUES (10001, 'SC001', 'Visions of Tomorrow', '2024-04-10', '2024-04-20', 'Laura Green', 45, 30, 'MixedMedia', 'Gymnasium', 'StateGrant', 20000.00, 5.00, 500, NULL, NULL, NULL, 8000.00, 1500.00, NULL, 'admin', '2024-03-01', NULL, NULL, 1, NULL, NULL, 'WheelchairRamp', 'POL12345', 1, NULL);
INSERT INTO school_arts_exhibition_catalog VALUES (10002, 'SC002', 'Nature in Focus', '2024-05-05', '2024-05-15', 'Mark Rivera', 30, 22, 'Photography', 'ArtRoom', 'LocalBudget', NULL, 3.00, 300, NULL, NULL, NULL, NULL, 5000.00, 800.00, NULL, 'admin', '2024-04-01', NULL, NULL, 1, NULL, NULL, 'AudioGuide', 'POL67890', 1, NULL);
INSERT INTO school_arts_exhibition_catalog VALUES (10003, 'SC003', 'Cultural Mosaic', '2024-06-01', '2024-06-10', 'Sonia Patel', 60, 40, 'Sculpture', 'OutdoorCourtyard', 'FederalAid', 35000.00, 0.00, 800, NULL, NULL, NULL, 12000.00, 2000.00, NULL, 'admin', '2024-05-10', NULL, NULL, 1, NULL, NULL, 'GuidedTours', 'POL54321', 1, NULL);

-- District technology asset audit
CREATE TABLE district_tech_asset_audit (
    AuditID                INTEGER PRIMARY KEY,
    AssetTag               TEXT NOT NULL,
    AssetType              TEXT NOT NULL,
    Manufacturer           TEXT NOT NULL,
    Model                  TEXT NOT NULL,
    SerialNumber           TEXT NOT NULL,
    PurchaseDate           TEXT NOT NULL,
    WarrantyEndDate        TEXT NOT NULL,
    AssignedLocation       TEXT NOT NULL,
    AssignedDepartment     TEXT NOT NULL,
    CurrentStatus          TEXT NOT NULL,
    CustodianName          TEXT NOT NULL,
    CustodianContact       TEXT NOT NULL,
    LastInventoryDate      TEXT NOT NULL,
    ConditionRating        INTEGER NOT NULL,
    DepreciationYear       INTEGER NOT NULL,
    NetBookValue           REAL NOT NULL,
    ReplacementPlan        TEXT NULL,
    DisposalMethod         TEXT NULL,
    DisposalDate           TEXT NULL,
    ComplianceRegulation   TEXT NOT NULL,
    AuditFindings          TEXT NULL,
    CorrectiveActionPlan   TEXT NULL,
    ActionDueDate          TEXT NULL,
    CreatedBy              TEXT NOT NULL,
    CreatedDate            TEXT NOT NULL,
    UpdatedBy              TEXT NULL,
    UpdatedDate            TEXT NULL,
    IsClosed               INTEGER NOT NULL,
    ClosureDate            TEXT NULL,
    Remarks                TEXT NULL,
    AssetLifecycleStage    TEXT NOT NULL,
    AssetCategory          TEXT NOT NULL,
    FundingSource          TEXT NOT NULL,
    ProjectCode            TEXT NULL,
    InspectionFrequencyMonths INTEGER NOT NULL,
    NextInspectionDue      TEXT NULL
);

INSERT INTO district_tech_asset_audit VALUES (11001, 'TAG001', 'Laptop', 'Dell', 'XPS13', 'SN10001', '2022-01-15', '2025-01-15', 'School001', 'ITDept', 'Active', 'Alice Johnson', '5552223333', '2024-03-01', 9, 2024, 1200.00, NULL, NULL, NULL, 'ISO27001', NULL, NULL, NULL, 'admin', '2024-02-20', NULL, NULL, 0, NULL, NULL, 'Operational', 'Computing', 'StateGrant', NULL, 12, '2024-12-01');
INSERT INTO district_tech_asset_audit VALUES (11002, 'TAG002', 'Projector', 'Epson', 'PowerLite', 'SN20002', '2021-07-10', '2024-07-10', 'School002', 'Facilities', 'Active', 'Bob Miller', '5554445555', '2024-02-28', 8, 2023, 800.00, 'Replace2025', 'Recycle', NULL, 'EPARegulation', NULL, NULL, NULL, 'admin', '2024-02-15', NULL, NULL, 0, NULL, NULL, 'MidLife', 'AVEquipment', 'LocalBudget', NULL, 12, '2024-11-15');
INSERT INTO district_tech_asset_audit VALUES (11003, 'TAG003', 'Server', 'HP', 'ProLiant', 'SN30003', '2020-03-20', '2026-03-20', 'DataCenter', 'ITDept', 'Active', 'Carol Lee', '5556667777', '2024-01-10', 7, 2022, 5000.00, 'Upgrade2025', NULL, NULL, 'PCICompliance', NULL, NULL, NULL, 'admin', '2024-01-05', NULL, NULL, 0, NULL, NULL, 'Operational', 'Infrastructure', 'FederalAid', NULL, 12, '2024-10-01');