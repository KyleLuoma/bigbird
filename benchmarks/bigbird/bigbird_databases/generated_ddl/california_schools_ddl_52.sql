-- Campus security events log
CREATE TABLE campus_security_events
(
    EventID                     INTEGER PRIMARY KEY,
    CampusCode                  TEXT    NOT NULL,
    EventDate                   DATE    NOT NULL,
    EventTime                   TEXT    NOT NULL,
    EventType                   TEXT    NOT NULL,
    Category                    TEXT,
    Description                 TEXT,
    ReportedBy                  TEXT,
    OfficerOnSceneID            TEXT,
    ResponseTimeMinutes         INTEGER,
    ResolutionStatus            TEXT,
    FollowUpRequired            INTEGER,
    FollowUpDueDate             DATE,
    WitnessCount                INTEGER,
    EvidenceCollected           TEXT,
    SeverityLevel               TEXT,
    AreaClosed                  INTEGER,
    NotificationSent            TEXT,
    DispatchChannel             TEXT,
    WeatherCondition            TEXT,
    Latitude                    REAL,
    Longitude                   REAL,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE
);

INSERT INTO campus_security_events VALUES (1, 'CDS001', '2025-09-12', '08:15', 'Intrusion', 'Unauthorized Access', 'Student entered restricted lab after hours', 'John Doe', 'OFC123', 5, 'Resolved', 0, NULL, 2, 'CCTV footage', 'High', 1, 'Email', 'Radio', 'Clear', 40.7128, -74.0060, '2025-09-12', '2025-09-12');
INSERT INTO campus_security_events VALUES (2, 'CDS001', '2025-10-03', '14:42', 'Medical', 'Illness', 'Staff member reported dizziness', 'Jane Smith', 'OFC456', 2, 'Resolved', 0, NULL, 0, 'First aid report', 'Medium', 0, 'SMS', 'Phone', 'Sunny', 40.7130, -74.0055, '2025-10-03', '2025-10-03');
INSERT INTO campus_security_events VALUES (3, 'CDS001', '2025-11-21', '19:30', 'Vandalism', 'Property Damage', 'Graffiti found on west entrance', 'Mike Lee', 'OFC789', 10, 'Pending', 1, '2025-12-01', 1, 'Photos', 'Low', 0, 'Email', 'Radio', 'Rainy', 40.7125, -74.0065, '2025-11-21', '2025-11-21');

-- School district transportation incident reports
CREATE TABLE transportation_incident_reports
(
    IncidentID                  INTEGER PRIMARY KEY,
    VehicleID                   TEXT    NOT NULL,
    DriverID                    TEXT    NOT NULL,
    IncidentDate                DATE    NOT NULL,
    IncidentTime                TEXT    NOT NULL,
    IncidentType                TEXT    NOT NULL,
    LocationDescription         TEXT,
    Latitude                    REAL,
    Longitude                   REAL,
    WeatherCondition            TEXT,
    RoadCondition               TEXT,
    NumberOfPassengers          INTEGER,
    InjuriesReported            INTEGER,
    Fatalities                  INTEGER,
    DamageEstimateUSD           REAL,
    PoliceReportFiled           INTEGER,
    FollowUpAction              TEXT,
    FollowUpDueDate             DATE,
    ReportedBy                  TEXT,
    NotificationSent            TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Remarks                     TEXT,
    IsResolved                  INTEGER
);

INSERT INTO transportation_incident_reports VALUES (101, 'VH001', 'DR123', '2025-08-15', '07:45', 'Collision', 'Main St near 5th Ave', 40.7121, -74.0059, 'Clear', 'Dry', 30, 2, 0, 15000.00, 1, 'Vehicle repaired', '2025-08-20', 'Dispatcher1', 'Email', '2025-08-15', '2025-08-15', 'Minor rear-end', 1);
INSERT INTO transportation_incident_reports VALUES (102, 'VH002', 'DR456', '2025-09-22', '12:30', 'Breakdown', 'Highway 101 Mile 12', 36.7783, -119.4179, 'Sunny', 'Wet', 20, 0, 0, 0.00, 0, 'Towed to depot', '2025-09-23', 'Dispatcher2', 'SMS', '2025-09-22', '2025-09-22', 'Engine failure', 1);
INSERT INTO transportation_incident_reports VALUES (103, 'VH003', 'DR789', '2025-10-10', '16:05', 'Fire', 'Parking lot B', 34.0522, -118.2437, 'Hot', 'Concrete', 0, 0, 0, 5000.00, 1, 'Vehicle decommissioned', '2025-10-15', 'Dispatcher3', 'Phone', '2025-10-10', '2025-10-10', 'Electrical short circuit', 0);

-- Extracurricular club financials
CREATE TABLE extracurricular_club_finances
(
    ClubFinanceID               INTEGER PRIMARY KEY,
    ClubID                      TEXT    NOT NULL,
    FiscalYear                  TEXT    NOT NULL,
    BudgetApprovedUSD           REAL,
    TotalRevenueUSD             REAL,
    TotalExpensesUSD            REAL,
    GrantReceivedUSD            REAL,
    SponsorshipUSD              REAL,
    MembershipDuesUSD           REAL,
    FundraisingEventsCount      INTEGER,
    FundraisingRevenueUSD       REAL,
    ExpenseCategorySuppliesUSD  REAL,
    ExpenseCategoryTravelUSD    REAL,
    ExpenseCategoryEquipmentUSD REAL,
    ExpenseCategoryMarketingUSD REAL,
    NetBalanceUSD               REAL,
    TreasurerName               TEXT,
    ApprovalDate                DATE,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Notes                       TEXT,
    IsAudited                   INTEGER
);

INSERT INTO extracurricular_club_finances VALUES (5001, 'CLB001', '2024-2025', 10000.00, 12000.00, 8000.00, 2000.00, 1500.00, 500.00, 3, 2500.00, 1000.00, 800.00, 600.00, 300.00, 4000.00, 'Alice Brown', '2025-01-15', '2025-01-15', '2025-01-15', 'All receipts submitted', 1);
INSERT INTO extracurricular_club_finances VALUES (5002, 'CLB002', '2024-2025', 8000.00, 9500.00, 7000.00, 0.00, 1000.00, 300.00, 2, 1800.00, 500.00, 400.00, 200.00, 200.00, 2500.00, 'Bob Carter', '2025-02-10', '2025-02-10', '2025-02-10', 'Pending audit', 0);
INSERT INTO extracurricular_club_finances VALUES (5003, 'CLB003', '2024-2025', 5000.00, 6000.00, 5500.00, 500.00, 0.00, 200.00, 1, 1200.00, 300.00, 200.00, 150.00, 100.00, 1500.00, 'Carol Davis', '2025-03-05', '2025-03-05', '2025-03-05', 'No external funding', 1);

-- District technology asset inventory audit
CREATE TABLE district_technology_asset_audit
(
    AuditID                     INTEGER PRIMARY KEY,
    AssetTag                    TEXT    NOT NULL,
    AssetType                   TEXT    NOT NULL,
    Manufacturer                TEXT,
    Model                       TEXT,
    SerialNumber                TEXT,
    PurchaseDate                DATE,
    WarrantyEndDate             DATE,
    AssignedLocation            TEXT,
    AssignedToStaffID           TEXT,
    CurrentStatus               TEXT,
    LastMaintenanceDate         DATE,
    MaintenanceFrequencyMonths INTEGER,
    DepreciationPeriodYears     INTEGER,
    OriginalCostUSD             REAL,
    CurrentValueUSD             REAL,
    DisposalMethod              TEXT,
    DisposalDate                DATE,
    AuditDate                   DATE,
    AuditorName                 TEXT,
    Comments                    TEXT,
    IsActive                    INTEGER,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE
);

INSERT INTO district_technology_asset_audit VALUES (9001, 'TAG001', 'Laptop', 'Dell', 'Latitude 5420', 'SN12345', '2022-06-01', '2025-06-01', 'School A', 'STF001', 'In Service', '2025-01-10', 12, 5, 1200.00, 800.00, NULL, NULL, '2025-03-01', 'Laura Green', 'Battery replaced 2024', 1, '2025-03-01', '2025-03-01');
INSERT INTO district_technology_asset_audit VALUES (9002, 'TAG002', 'Projector', 'Epson', 'PowerLite X56', 'SN67890', '2020-09-15', '2023-09-15', 'Auditorium', 'STF002', 'Out of Service', '2025-02-20', 24, 7, 1500.00, 300.00, 'Recycled', '2025-02-25', '2025-03-01', 'Mark Taylor', 'Lamp replaced 2024', 0, '2025-03-01', '2025-03-01');
INSERT INTO district_technology_asset_audit VALUES (9003, 'TAG003', 'Tablet', 'Apple', 'iPad Pro', 'SN54321', '2023-01-10', '2026-01-10', 'Library', 'STF003', 'In Service', '2025-03-05', 6, 3, 900.00, 750.00, NULL, NULL, '2025-03-01', 'Nina Patel', 'Screen protector applied', 1, '2025-03-01', '2025-03-01');

-- School environmental monitoring stations
CREATE TABLE environmental_monitoring_stations
(
    StationID                   INTEGER PRIMARY KEY,
    StationCode                 TEXT    NOT NULL,
    LocationDescription         TEXT,
    Latitude                    REAL,
    Longitude                   REAL,
    InstallationDate            DATE,
    StationType                 TEXT,
    MeasuredParameter           TEXT,
    SensorModel                 TEXT,
    CalibrationDate             DATE,
    CalibrationDueDate          DATE,
    DataTransmissionMethod      TEXT,
    PowerSource                 TEXT,
    MaintenanceFrequencyMonths  INTEGER,
    LastMaintenanceDate         DATE,
    Status                      TEXT,
    DataRetentionPeriodYears    INTEGER,
    OwnerDepartment             TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Notes                       TEXT,
    IsActive                    INTEGER,
    DataUploadEndpoint          TEXT,
    FirmwareVersion             TEXT,
    WarrantyEndDate             DATE
);

INSERT INTO environmental_monitoring_stations VALUES (2001, 'EMS001', 'North Field', 40.7122, -74.0058, '2024-04-01', 'Air Quality', 'PM2.5', 'AQM-100', '2025-01-15', '2026-01-15', 'Cellular', 'Solar', 12, '2025-02-01', 'Operational', 5, 'Facilities Dept', '2025-03-01', '2025-03-01', 'No issues', 1, 'https://data.school.org/ems001', 'v1.2.3', '2027-04-01');
INSERT INTO environmental_monitoring_stations VALUES (2002, 'EMS002', 'East Playground', 40.7125, -74.0055, '2023-09-10', 'Noise', 'Decibel', 'ND-200', '2025-03-20', '2026-03-20', 'WiFi', 'Mains', 6, '2025-03-15', 'Operational', 3, 'Facilities Dept', '2025-03-01', '2025-03-01', 'Calibrated', 1, 'https://data.school.org/ems002', 'v2.0.0', '2025-09-10');
INSERT INTO environmental_monitoring_stations VALUES (2003, 'EMS003', 'South Roof', 40.7120, -74.0062, '2022-11-05', 'Temperature', 'Ambient', 'TMP-50', '2025-02-10', '2026-02-10', 'Ethernet', 'Mains', 12, '2025-01-30', 'Under Maintenance', 2, 'Facilities Dept', '2025-03-01', '2025-03-01', 'Battery replacement needed', 0, 'https://data.school.org/ems003', 'v1.0.1', '2025-11-05');

-- Community partnership project tracking
CREATE TABLE community_partner_projects
(
    ProjectID                   INTEGER PRIMARY KEY,
    PartnerID                   TEXT    NOT NULL,
    ProjectName                 TEXT    NOT NULL,
    StartDate                   DATE,
    EndDate                     DATE,
    ProjectType                 TEXT,
    FundingSource               TEXT,
    TotalFundingUSD             REAL,
    MatchingFundsUSD            REAL,
    StudentParticipantsCount    INTEGER,
    StaffParticipantsCount      INTEGER,
    CommunityVolunteersCount    INTEGER,
    Objectives                  TEXT,
    ExpectedOutcomes            TEXT,
    ActualOutcomes              TEXT,
    Status                      TEXT,
    LastProgressReportDate      DATE,
    ReportSubmittedBy           TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    EvaluationScore             REAL,
    IsActive                    INTEGER,
    Notes                       TEXT,
    ContactPersonName           TEXT,
    ContactPersonEmail          TEXT
);

INSERT INTO community_partner_projects VALUES (301, 'PRT001', 'STEM Mentorship', '2024-01-15', '2025-06-30', 'Mentorship', 'Grant', 50000.00, 25000.00, 120, 5, 30, 'Connect students with STEM professionals', 'Improved STEM interest', 'Increased enrollment in advanced STEM courses', 'Active', '2025-02-20', 'Emily Clark', '2025-03-01', '2025-03-01', 4.5, 1, 'Mid-year review positive', 'John Miller', 'john.miller@partner.org');
INSERT INTO community_partner_projects VALUES (302, 'PRT002', 'Art in the Parks', '2023-05-01', '2024-12-31', 'Cultural', 'Donations', 20000.00, 5000.00, 80, 3, 45, 'Public art installations', 'Enhanced community aesthetics', 'Installed 5 murals', 'Completed', '2024-12-15', 'Sarah Lee', '2025-01-01', '2025-01-01', 4.8, 0, 'Project concluded successfully', 'Mark Rivera', 'mark.rivera@partner.org');
INSERT INTO community_partner_projects VALUES (303, 'PRT003', 'Healthy Lunch Initiative', '2025-02-01', NULL, 'Nutrition', 'City Grant', 30000.00, 0.00, 200, 2, 20, 'Provide healthy meals', 'Improved student nutrition', NULL, 'Planning', '2025-03-01', 'Linda Gomez', '2025-03-01', '2025-03-01', NULL, 1, 'Awaiting final approvals', 'Tom Baker', 'tom.baker@partner.org');

-- School facility renovation budget
CREATE TABLE facility_renovation_budget
(
    RenovationID                INTEGER PRIMARY KEY,
    FacilityID                  TEXT    NOT NULL,
    ProjectName                 TEXT    NOT NULL,
    PlannedStartDate            DATE,
    PlannedEndDate              DATE,
    ActualStartDate             DATE,
    ActualEndDate               DATE,
    EstimatedCostUSD            REAL,
    ApprovedCostUSD             REAL,
    FundingSource               TEXT,
    CostBreakdownConstructionUSD REAL,
    CostBreakdownArchitectUSD   REAL,
    CostBreakdownPermitsUSD     REAL,
    CostBreakdownContingencyUSD REAL,
    CostBreakdownFurnitureUSD   REAL,
    CostBreakdownITUSD          REAL,
    ProjectManager              TEXT,
    Status                      TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Notes                       TEXT,
    IsApproved                  INTEGER,
    RiskLevel                   TEXT,
    ContractorName              TEXT,
    ContractNumber              TEXT
);

INSERT INTO facility_renovation_budget VALUES (401, 'FAC001', 'Science Lab Upgrade', '2025-04-01', '2025-10-15', NULL, NULL, 250000.00, 230000.00, 'District Capital', 150000.00, 30000.00, 10000.00, 20000.00, 15000.00, 15000.00, 'Laura Green', 'Planned', '2025-03-01', '2025-03-01', 'Awaiting contractor bids', 0, 'Medium', NULL, NULL);
INSERT INTO facility_renovation_budget VALUES (402, 'FAC002', 'Auditorium HVAC Replacement', '2024-09-01', '2025-02-28', '2024-09-10', '2025-02-20', 180000.00, 175000.00, 'State Grant', 120000.00, 20000.00, 8000.00, 15000.00, 10000.00, 15000.00, 'Mike Davis', 'Completed', '2025-03-01', '2025-03-01', 'Project completed on schedule', 1, 'Low', 'HVAC Solutions Inc', 'HVAC2024-01');
INSERT INTO facility_renovation_budget VALUES (403, 'FAC003', 'Library Expansion', '2025-05-01', '2026-01-31', NULL, NULL, 300000.00, 0.00, 'Bond Issue', 200000.00, 40000.00, 12000.00, 25000.00, 15000.00, 18000.00, 'Sara Kim', 'Pending Approval', '2025-03-01', '2025-03-01', 'Funding pending', 0, 'High', NULL, NULL);

-- School district health services inventory
CREATE TABLE health_services_inventory
(
    InventoryID                 INTEGER PRIMARY KEY,
    ServiceLocationID           TEXT    NOT NULL,
    ServiceType                 TEXT    NOT NULL,
    ProviderName                TEXT,
    LicenseNumber               TEXT,
    ServiceStartDate            DATE,
    ServiceEndDate              DATE,
    DailyCapacity               INTEGER,
    AvgDailyPatients            INTEGER,
    EquipmentList               TEXT,
    MedicationStockList         TEXT,
    FundingSource               TEXT,
    AnnualBudgetUSD             REAL,
    ContractRenewalDate         DATE,
    ContactPerson               TEXT,
    ContactPhone                TEXT,
    ContactEmail                TEXT,
    Status                      TEXT,
    LastInspectionDate          DATE,
    InspectionScore             REAL,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Notes                       TEXT,
    IsActive                    INTEGER,
    ServiceHours                TEXT,
    AccreditationBody           TEXT
);

INSERT INTO health_services_inventory VALUES (601, 'LOC001', 'Nurse Station', 'Cedar High School', 'LIC12345', '2020-08-01', NULL, 50, 45, 'Blood pressure cuff,Stethoscope,Defibrillator', 'Bandages,Antibiotic ointment,Ibuprofen', 'District Budget', 120000.00, '2025-08-01', 'Karen Lee', '555-1234', 'klee@district.org', 'Operational', '2025-02-10', 4.7, '2025-03-01', '2025-03-01', 'All supplies stocked', 1, '07:30-15:30', 'State Health Dept');
INSERT INTO health_services_inventory VALUES (602, 'LOC002', 'Dental Clinic', 'Riverdale Middle School', 'LIC67890', '2021-01-15', NULL, 30, 25, 'Dental chair, X-ray machine, Autoclave', 'Fluoride gel, Dental floss, Anesthetic', 'Grant', 80000.00, '2025-01-15', 'Tom Harris', '555-5678', 'tharris@district.org', 'Operational', '2024-11-20', 4.9, '2025-03-01', '2025-03-01', 'Scheduled for equipment upgrade', 1, '08:00-14:00', 'Dental Association');
INSERT INTO health_services_inventory VALUES (603, 'LOC003', 'Mental Health Counseling', 'Lincoln Elementary', 'LIC54321', '2022-03-01', NULL, 20, 18, 'Counseling chairs, Privacy partitions', 'Therapy worksheets, Stress balls', 'District Budget', 60000.00, '2025-03-01', 'Megan Patel', '555-9012', 'mpatel@district.org', 'Operational', '2025-01-05', 4.5, '2025-03-01', '2025-03-01', 'Increasing student demand', 1, '09:00-16:00', 'Psychology Board');

-- School district staff professional learning modules
CREATE TABLE staff_professional_learning_modules
(
    ModuleID                    INTEGER PRIMARY KEY,
    ModuleCode                  TEXT    NOT NULL,
    Title                       TEXT    NOT NULL,
    Description                 TEXT,
    Category                    TEXT,
    DeliveryMethod              TEXT,
    DurationHours               REAL,
    CreditsEarned               INTEGER,
    PrerequisiteModuleCode      TEXT,
    InstructorName              TEXT,
    InstructorEmail             TEXT,
    StartDate                   DATE,
    EndDate                     DATE,
    EnrollmentCapacity          INTEGER,
    EnrolledCount               INTEGER,
    CompletionRate              REAL,
    CostUSD                     REAL,
    FundingSource               TEXT,
    TargetAudience              TEXT,
    Status                      TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    EvaluationScore             REAL,
    IsMandatory                 INTEGER,
    LinkToMaterials             TEXT,
    Language                    TEXT
);

INSERT INTO staff_professional_learning_modules VALUES (701, 'PLM001', 'Differentiated Instruction Strategies', 'Techniques for tailoring instruction', 'Instructional', 'Online', 3.5, 2, NULL, 'Dr. Amy Chen', 'achen@district.org', '2025-02-10', '2025-02-12', 30, 28, 0.95, 0.00, 'District Funded', 'Teachers', 'Open', '2025-03-01', '2025-03-01', 4.6, 1, 'https://plm.district.org/plm001', 'English');
INSERT INTO staff_professional_learning_modules VALUES (702, 'PLM002', 'Data-Driven Decision Making', 'Using student data to inform instruction', 'Assessment', 'In-Person', 4.0, 3, 'PLM001', 'Mr. Brian Ortiz', 'bor@district.org', '2025-04-05', '2025-04-07', 25, 22, 0.90, 150.00, 'Grant', 'Administrators', 'Open', '2025-04-01', '2025-04-01', 4.3, 0, 'https://plm.district.org/plm002', 'English');
INSERT INTO staff_professional_learning_modules VALUES (703, 'PLM003', 'Cybersecurity Basics for Educators', 'Protecting digital assets', 'Technology', 'Hybrid', 2.5, 1, NULL, 'Ms. Linda Ng', 'lng@district.org', '2025-05-15', '2025-05-16', 40, 38, 0.98, 0.00, 'District Funded', 'All Staff', 'Open', '2025-05-01', '2025-05-01', 4.8, 0, 'https://plm.district.org/plm003', 'English');

-- District infrastructure asset condition logs
CREATE TABLE infrastructure_asset_conditions
(
    ConditionLogID              INTEGER PRIMARY KEY,
    AssetID                     TEXT    NOT NULL,
    AssetType                   TEXT    NOT NULL,
    InspectionDate              DATE    NOT NULL,
    InspectorName               TEXT,
    ConditionRating             TEXT,
    Comments                    TEXT,
    ImmediateActionRequired     INTEGER,
    FollowUpDate                DATE,
    EstimatedRepairCostUSD      REAL,
    CurrentUsageLevel           TEXT,
    LifeExpectancyYears         INTEGER,
    ReplacementPlan             TEXT,
    FundingSource               TEXT,
    Status                      TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    PriorConditionRating        TEXT,
    PriorInspectionDate         DATE,
    RiskCategory                TEXT,
    LocationDescription         TEXT,
    Latitude                    REAL,
    Longitude                   REAL,
    IsCriticalAsset             INTEGER,
    MaintenanceContractID       TEXT,
    NextScheduledMaintenance    DATE
);

INSERT INTO infrastructure_asset_conditions VALUES (801, 'AST001', 'Bridge', '2025-01-20', 'John Miller', 'Good', 'No visible cracks', 0, NULL, 0.00, 'High', 30, 'Monitor annually', 'District Budget', 'Active', '2025-03-01', '2025-03-01', 'Fair', '2023-12-15', 'Medium', 'North Campus River Bridge', 40.7130, -74.0065, 1, 'CTR001', '2025-07-01');
INSERT INTO infrastructure_asset_conditions VALUES (802, 'AST002', 'HVAC Unit', '2025-02-10', 'Emily Clark', 'Fair', 'Minor wear on belts', 1, '2025-03-15', 2500.00, 'Medium', 15, 'Replace in 5 years', 'Energy Grant', 'Active', '2025-03-01', '2025-03-01', 'Poor', '2024-10-05', 'High', 'South Wing Main Hall HVAC', 40.7125, -74.0050, 0, 'CTR002', '2025-08-15');
INSERT INTO infrastructure_asset_conditions VALUES (803, 'AST003', 'Roof', '2025-03-05', 'Michael Davis', 'Poor', 'Leaks detected in east wing', 1, '2025-04-20', 12000.00, 'Low', 5, 'Full replacement planned', 'Bond Issue', 'Pending', '2025-03-01', '2025-03-01', 'Fair', '2024-09-30', 'Critical', 'East Wing Roof', 40.7122, -74.0060, 1, 'CTR003', '2025-09-01');

-- School district renewable energy assets
CREATE TABLE renewable_energy_assets
(
    AssetID                     INTEGER PRIMARY KEY,
    AssetType                   TEXT    NOT NULL,
    InstallationDate            DATE,
    CapacityKW                  REAL,
    CurrentOutputKW             REAL,
    LocationDescription         TEXT,
    Latitude                    REAL,
    Longitude                   REAL,
    Manufacturer                TEXT,
    ModelNumber                 TEXT,
    WarrantyEndDate             DATE,
    MaintenanceContractID       TEXT,
    LastMaintenanceDate         DATE,
    NextMaintenanceDueDate      DATE,
    FundingSource               TEXT,
    CostUSD                     REAL,
    ExpectedLifetimeYears       INTEGER,
    DecommissionDate            DATE,
    Status                      TEXT,
    OwnerDepartment             TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Notes                       TEXT,
    IsOperational               INTEGER,
    GridConnectionPointID       TEXT,
    EnvironmentalImpactScore    REAL
);

INSERT INTO renewable_energy_assets VALUES (901, 'Solar Panel Array', '2022-06-15', 250.0, 210.5, 'North Parking Lot', 40.7129, -74.0061, 'SunPower', 'SPR-250', '2027-06-15', 'MNT001', '2025-02-10', '2025-08-10', 'Bond Issue', 300000.00, 25, NULL, 'Active', 'Facilities', '2025-03-01', '2025-03-01', 'Performance within expected range', 1, 'GRID001', 8.5);
INSERT INTO renewable_energy_assets VALUES (902, 'Wind Turbine', '2021-09-01', 500.0, 450.0, 'West Field', 40.7135, -74.0070, 'GE Renewable', 'WT-500', '2026-09-01', 'MNT002', '2025-01-20', '2025-07-20', 'Grant', 750000.00, 20, NULL, 'Active', 'Facilities', '2025-03-01', '2025-03-01', 'Slightly below forecasted output', 1, 'GRID002', 9.2);
INSERT INTO renewable_energy_assets VALUES (903, 'Geothermal Heat Pump', '2020-03-10', 150.0, 145.0, 'South Campus', 40.7115, -74.0055, 'ClimateMaster', 'GHP-150', '2025-03-10', 'MNT003', '2025-03-05', '2025-09-05', 'District Budget', 200000.00, 30, NULL, 'Active', 'Facilities', '2025-03-01', '2025-03-01', 'Stable performance', 1, 'GRID003', 7.8);

-- School district emergency resource stockpile
CREATE TABLE emergency_resource_stockpile
(
    StockpileID                 INTEGER PRIMARY KEY,
    ResourceType                TEXT    NOT NULL,
    ItemDescription             TEXT,
    QuantityOnHand              INTEGER,
    UnitOfMeasure               TEXT,
    ExpirationDate              DATE,
    StorageLocationID           TEXT,
    LastInventoryCountDate      DATE,
    ReorderLevel                INTEGER,
    SupplierName                TEXT,
    SupplierContactPhone        TEXT,
    SupplierContactEmail        TEXT,
    ReceivedDate                DATE,
    CostPerUnitUSD              REAL,
    TotalCostUSD                REAL,
    FundingSource               TEXT,
    Status                      TEXT,
    AssignedToDepartment        TEXT,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Notes                       TEXT,
    IsCriticalResource          INTEGER,
    LastUsedDate                DATE,
    UsageFrequencyPerMonth      INTEGER,
    ShelfLifeMonths             INTEGER,
    InspectionDueDate           DATE
);

INSERT INTO emergency_resource_stockpile VALUES (1001, 'Personal Protective Equipment', 'N95 Masks', 5000, 'pieces', '2027-12-31', 'LOC001', '2025-02-01', 1000, 'HealthSupplyCo', '555-2100', 'sales@healthsupplyco.com', '2025-01-15', 1.20, 6000.00, 'District Budget', 'In Stock', 'Facilities', '2025-03-01', '2025-03-01', 'Stored in temperature-controlled room', 1, NULL, 200, 36, '2025-08-01');
INSERT INTO emergency_resource_stockpile VALUES (1002, 'Food Supplies', 'Canned Beans', 2000, 'cans', '2029-06-30', 'LOC002', '2025-02-10', 500, 'FoodWare Inc', '555-3200', 'info@foodware.com', '2025-01-20', 0.80, 1600.00, 'Grant', 'In Stock', 'Cafeteria', '2025-03-01', '2025-03-01', 'Rotated quarterly', 1, NULL, 150, 48, '2025-09-01');
INSERT INTO emergency_resource_stockpile VALUES (1003, 'Medical Supplies', 'Bandage Rolls', 800, 'packs', '2026-03-15', 'LOC003', '2025-02-15', 200, 'MediEquip', '555-4300', 'support@mediequip.com', '2025-01-25', 2.50, 2000.00, 'District Budget', 'In Stock', 'Health Services', '2025-03-01', '2025-03-01', 'Check expiry monthly', 1, NULL, 100, 24, '2025-07-01');

-- School district language immersion program data
CREATE TABLE language_immersion_programs
(
    ProgramID                   INTEGER PRIMARY KEY,
    SchoolID                    TEXT    NOT NULL,
    Language                    TEXT    NOT NULL,
    ProgramStartYear            TEXT,
    ProgramEndYear              TEXT,
    EnrollmentCount             INTEGER,
    TeacherCount                INTEGER,
    CertifiedFluencyLevel       TEXT,
    CurriculumFramework         TEXT,
    AssessmentTool              TEXT,
    AnnualBudgetUSD             REAL,
    FundingSource               TEXT,
    CommunityPartner            TEXT,
    ParentInvolvementHours      INTEGER,
    StudentLanguageProficiency  TEXT,
    GraduationRatePercentage    REAL,
    CollegeReadinessScore       REAL,
    CreatedTimestamp            DATE,
    UpdatedTimestamp            DATE,
    Status                      TEXT,
    Notes                       TEXT,
    IsActive                    INTEGER,
    AccreditationBody           TEXT,
    ProfessionalDevelopmentHours INTEGER,
    ExtracurricularLanguageClubs INTEGER,
    LanguageResourceCenterHours INTEGER
);

INSERT INTO language_immersion_programs VALUES (1101, 'CDS001', 'Spanish', '2022', NULL, 150, 8, 'Native', 'CREF', 'DELE', 120000.00, 'District Budget', 'Local Hispanic Center', 300, 'Advanced', 95.0, 4.5, '2025-03-01', '2025-03-01', 'Active', 'Growing enrollment', 1, 'State Education Dept', 40, 5, 120);
INSERT INTO language_immersion_programs VALUES (1102, 'CDS001', 'French', '2020', NULL, 80, 4, 'Fluent', 'Common European Framework', 'DALF', 80000.00, 'Grant', 'French Cultural Institute', 150, 'Intermediate', 92.0, 4.2, '2025-03-01', '2025-03-01', 'Active', 'Consider expansion', 1, 'National Language Board', 30, 3, 80);
INSERT INTO language_immersion_programs VALUES (1103, 'CDS001', 'Mandarin', '2023', NULL, 60, 3, 'Fluent', 'ACTFL', 'HSK', 90000.00, 'District Budget', 'Asian Community Center', 120, 'Beginner', 88.0, 3.9, '2025-03-01', '2025-03-01', 'Active', 'High demand', 1, 'State Language Commission', 25, 2, 60);