-- Research projects table stores metadata about academic and corporate research initiatives
CREATE TABLE research_projects
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ProjectCode TEXT,
    Title TEXT,
    Description TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    Budget NUMERIC,
    Currency TEXT,
    LeadResearcherId INTEGER,
    Department TEXT,
    Status TEXT,
    FundingAgency TEXT,
    GrantNumber TEXT,
    Phase TEXT,
    RiskLevel TEXT,
    ExpectedOutcome TEXT,
    PublicationsCount INTEGER,
    DataSetCount INTEGER,
    EthicalApprovalDate DATETIME,
    IsCollaborative BOOLEAN,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO research_projects VALUES (1, 'RP-001', 'Alpha Initiative', 'Study of quantum algorithms', '2023-01-01', '2025-12-31', 1250000, 'USD', 101, 'Physics', 'Active', 'National Science Foundation', 'NSF-2023-001', 'Phase1', 'Medium', 'Prototype quantum solver', 5, 2, '2023-01-10', 1, '2023-01-01', '2023-01-01');
INSERT INTO research_projects VALUES (2, 'RP-002', 'Beta Survey', 'Market analysis for renewable energy', '2022-06-15', '2024-06-14', 750000, 'EUR', 202, 'Economics', 'Completed', 'European Commission', 'EC-2022-045', 'Phase2', 'Low', 'Policy recommendation report', 3, 0, '2022-06-20', 0, '2022-06-15', '2024-06-14');
INSERT INTO research_projects VALUES (3, 'RP-003', 'Gamma Development', 'AI-driven drug discovery platform', '2024-03-01', NULL, 2000000, 'USD', 303, 'Biotech', 'Planned', 'PharmaCo', 'PC-2024-099', 'Phase0', 'High', 'Fully automated pipeline', 0, 0, NULL, 1, '2024-03-01', '2024-03-01');

-- Employee benefits table records the various perks and insurance plans offered to staff
CREATE TABLE employee_benefits
(
    Id INTEGER NOT NULL PRIMARY KEY,
    EmployeeId INTEGER,
    BenefitType TEXT,
    EffectiveDate DATETIME,
    ExpirationDate DATETIME,
    Provider TEXT,
    PlanCode TEXT,
    CoverageLevel TEXT,
    PremiumAmount NUMERIC,
    Currency TEXT,
    EnrollmentStatus TEXT,
    DependentsCovered INTEGER,
    AnnualLimit NUMERIC,
    ContributionAmount NUMERIC,
    ContributionCurrency TEXT,
    IsTaxable BOOLEAN,
    EnrollmentDate DATETIME,
    LastModified DATETIME,
    CreatedBy INTEGER,
    ModifiedBy INTEGER,
    Notes TEXT
);

INSERT INTO employee_benefits VALUES (1, 1001, 'Health Insurance', '2023-01-01', NULL, 'HealthCo', 'HC-STD', 'Standard', 250, 'USD', 'Enrolled', 2, 50000, 0, 'USD', 0, '2023-01-01', '2023-01-01', 501, 501, 'Primary health coverage');
INSERT INTO employee_benefits VALUES (2, 1002, 'Retirement Plan', '2022-07-01', NULL, 'RetireWell', 'RP-401K', '401K', 0, 'USD', 'Enrolled', 1, 0, 200, 'USD', 1, '2022-07-01', '2023-06-30', 502, 503, 'Company matched contributions');
INSERT INTO employee_benefits VALUES (3, 1003, 'Gym Membership', '2023-03-15', '2024-03-14', 'FitLife', 'GYM-PLUS', 'Premium', 50, 'USD', 'Pending', 0, 0, 0, 'USD', 0, NULL, NULL, 504, 504, 'Awaiting employee approval');

-- Vehicle fleet table tracks company vehicles and their assignment details
CREATE TABLE vehicle_fleet
(
    Id INTEGER NOT NULL PRIMARY KEY,
    VehicleVin TEXT,
    LicensePlate TEXT,
    Make TEXT,
    Model TEXT,
    Year INTEGER,
    PurchaseDate DATETIME,
    Cost NUMERIC,
    Currency TEXT,
    Mileage INTEGER,
    ServiceDueDate DATETIME,
    AssignedDriverId INTEGER,
    Department TEXT,
    FuelType TEXT,
    FuelCapacityLiters NUMERIC,
    EmissionStandard TEXT,
    InsurancePolicyNumber TEXT,
    InsuranceProvider TEXT,
    RegistrationState TEXT,
    IsActive BOOLEAN,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO vehicle_fleet VALUES (1, '1HGCM82633A004352', 'ABC123', 'Toyota', 'Camry', 2020, '2020-05-10', 24000, 'USD', 18000, '2024-05-10', 2001, 'Sales', 'Gasoline', 60, 'Euro6', 'INS-001', 'SecureAuto', 'CA', 1, '2020-05-10', '2023-12-01');
INSERT INTO vehicle_fleet VALUES (2, '2FTRX18W1XCA12345', 'XYZ789', 'Ford', 'F-150', 2019, '2019-08-22', 35000, 'USD', 45000, '2024-08-22', 2002, 'Logistics', 'Diesel', 80, 'Euro5', 'INS-002', 'ShieldInsurance', 'TX', 1, '2019-08-22', '2023-11-15');
INSERT INTO vehicle_fleet VALUES (3, 'JH4KA9650MC012345', 'LMN456', 'Honda', 'Civic', 2022, '2022-03-05', 22000, 'USD', 5000, '2025-03-05', NULL, 'Marketing', 'Hybrid', 50, 'Euro6', 'INS-003', 'AutoGuard', 'NY', 1, '2022-03-05', '2023-10-20');

-- Software licenses table maintains records of purchased software and allocation to users
CREATE TABLE software_licenses
(
    Id INTEGER NOT NULL PRIMARY KEY,
    SoftwareName TEXT,
    LicenseKey TEXT,
    LicenseType TEXT,
    PurchasedDate DATETIME,
    ExpirationDate DATETIME,
    Cost NUMERIC,
    Currency TEXT,
    Seats INTEGER,
    AssignedToUserId INTEGER,
    Department TEXT,
    Vendor TEXT,
    SupportExpiryDate DATETIME,
    Version TEXT,
    Platform TEXT,
    IsEnterprise BOOLEAN,
    MaintenanceRenewalDate DATETIME,
    CreatedBy INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO software_licenses VALUES (1, 'Adobe Photoshop', 'PH-12345-ABCDE', 'Perpetual', '2021-04-01', NULL, 239.99, 'USD', 10, 3001, 'Design', 'Adobe', '2023-04-01', '2024.2', 'Windows', 1, '2022-04-01', 401, '2021-04-01', '2023-03-30', 'Renewal pending');
INSERT INTO software_licenses VALUES (2, 'Microsoft Office 365', 'MS-67890-FGHIJ', 'Subscription', '2022-01-15', '2023-01-14', 99.99, 'USD', 150, NULL, 'All', 'Microsoft', '2023-01-15', '2023', 'Cross-platform', 0, '2022-12-31', 402, '2022-01-15', '2022-12-31', 'Auto-renew enabled');
INSERT INTO software_licenses VALUES (3, 'AutoCAD', 'AC-54321-ZYXWV', 'Perpetual', '2020-09-20', '2025-09-19', 1599, 'USD', 5, 3005, 'Engineering', 'Autodesk', '2024-09-20', '2022', 'Windows', 1, '2023-09-20', 403, '2020-09-20', '2023-09-20', 'Site license');

-- Customer loyalty program table tracks membership tiers and point balances for shoppers
CREATE TABLE customer_loyalty_program
(
    Id INTEGER NOT NULL PRIMARY KEY,
    CustomerId INTEGER,
    ProgramName TEXT,
    MembershipTier TEXT,
    JoinDate DATETIME,
    ExpiryDate DATETIME,
    PointsBalance INTEGER,
    PointsEarnedYTD INTEGER,
    PointsRedeemedYTD INTEGER,
    RewardRate NUMERIC,
    LastActivityDate DATETIME,
    PreferredChannel TEXT,
    EmailOptIn BOOLEAN,
    SmsOptIn BOOLEAN,
    Status TEXT,
    ReferralCode TEXT,
    TotalReferrals INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT
);

INSERT INTO customer_loyalty_program VALUES (1, 5001, 'ShopRewards', 'Gold', '2021-05-01', NULL, 12500, 3000, 1500, 1.5, '2023-11-20', 'Email', 1, 0, 'Active', 'REF123', 8, '2021-05-01', '2023-11-20', 'High spender');
INSERT INTO customer_loyalty_program VALUES (2, 5002, 'ShopRewards', 'Silver', '2022-02-14', NULL, 4200, 1200, 600, 1.2, '2023-10-05', 'SMS', 0, 1, 'Active', 'REF456', 3, '2022-02-14', '2023-10-05', 'Frequent buyer');
INSERT INTO customer_loyalty_program VALUES (3, 5003, 'ShopRewards', 'Bronze', '2023-01-20', '2024-01-19', 850, 850, 0, 1.0, '2023-11-30', 'Push', 1, 1, 'Pending', 'REF789', 0, '2023-01-20', '2023-11-30', 'New member');

-- Meeting rooms table holds details about conference spaces and their booking policies
CREATE TABLE meeting_rooms
(
    Id INTEGER NOT NULL PRIMARY KEY,
    RoomName TEXT,
    Location TEXT,
    Capacity INTEGER,
    HasProjector BOOLEAN,
    HasVideoConferencing BOOLEAN,
    FloorNumber INTEGER,
    Building TEXT,
    IsAccessible BOOLEAN,
    PhoneNumber TEXT,
    BookingPolicy TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    LastMaintenanceDate DATETIME,
    EquipmentList TEXT,
    IsActive BOOLEAN,
    ManagerUserId INTEGER,
    WiFiAvailable BOOLEAN,
    PowerOutletCount INTEGER,
    AudioSystem TEXT
);

INSERT INTO meeting_rooms VALUES (1, 'Orion', 'HQ West Wing', 12, 1, 1, 3, 'Main Campus', 1, '5551234', 'RoundRobin', '2022-01-01', '2023-11-01', '2023-09-15', 'Whiteboard,Speakerphone', 1, 6001, 1, 4, 'Dolby');
INSERT INTO meeting_rooms VALUES (2, 'Pegasus', 'HQ East Wing', 8, 0, 1, 2, 'Main Campus', 0, '5555678', 'FirstComeFirstServe', '2022-02-15', '2023-10-20', '2023-08-10', 'TV,Microphone', 1, 6002, 1, 2, 'Bose');
INSERT INTO meeting_rooms VALUES (3, 'Nova', 'Remote Office', 6, 1, 0, 1, 'Satellite', 1, '5559012', 'ManagerApproval', '2023-03-01', '2023-11-05', '2023-10-01', 'Projector,Speaker', 1, 6003, 0, 3, 'JBL');

-- Inventory audit trail records adjustments made to stock items across warehouses
CREATE TABLE inventory_audit_trail
(
    Id INTEGER NOT NULL PRIMARY KEY,
    ItemId INTEGER,
    WarehouseId INTEGER,
    AuditDate DATETIME,
    AuditorUserId INTEGER,
    QuantityBefore INTEGER,
    QuantityAfter INTEGER,
    Reason TEXT,
    DocumentReference TEXT,
    IsApproved BOOLEAN,
    ApprovalUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Notes TEXT,
    BatchNumber TEXT,
    ExpirationDate DATETIME,
    LocationCode TEXT,
    Status TEXT,
    AdjustmentType TEXT,
    SourceSystem TEXT,
    TargetSystem TEXT
);

INSERT INTO inventory_audit_trail VALUES (1, 8001, 10, '2023-11-01', 9001, 150, 140, 'Damaged during transport', 'DOC-20231101', 1, 9002, '2023-11-01', '2023-11-01', 'Reduced due to breakage', 'BATCH-01', NULL, 'A1', 'Closed', 'Decrease', 'WMS', 'ERP');
INSERT INTO inventory_audit_trail VALUES (2, 8002, 12, '2023-10-25', 9003, 200, 210, 'Inventory recount adjustment', 'DOC-20231025', 1, 9003, '2023-10-25', '2023-10-25', 'Increase after recount', 'BATCH-02', NULL, 'B3', 'Closed', 'Increase', 'WMS', 'ERP');
INSERT INTO inventory_audit_trail VALUES (3, 8003, 11, '2023-09-15', 9004, 0, 50, 'Initial stock upload', 'DOC-20230915', 1, 9005, '2023-09-15', '2023-09-15', 'First entry', 'BATCH-03', '2024-09-15', 'C2', 'Closed', 'Insert', 'CSVImport', 'WMS');

-- Supply chain incidents logs unexpected events affecting logistics operations
CREATE TABLE supply_chain_incidents
(
    Id INTEGER NOT NULL PRIMARY KEY,
    IncidentCode TEXT,
    Description TEXT,
    DetectedDate DATETIME,
    ResolvedDate DATETIME,
    ImpactLevel TEXT,
    AffectedFacilityId INTEGER,
    RootCause TEXT,
    MitigationPlan TEXT,
    OwnerTeam TEXT,
    Status TEXT,
    Severity TEXT,
    ReportedByUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    IsCritical BOOLEAN,
    CostEstimate NUMERIC,
    Currency TEXT,
    FollowUpDate DATETIME,
    LessonsLearned TEXT
);

INSERT INTO supply_chain_incidents VALUES (1, 'INC-001', 'Port strike causing delays', '2023-08-12', '2023-08-20', 'High', 5, 'Labor dispute', 'Reroute shipments via rail', 'Logistics Ops', 'Resolved', 'Severe', 7001, '2023-08-12', '2023-08-20', 1, 50000, 'USD', '2023-09-01', 'Improved communication with unions');
INSERT INTO supply_chain_incidents VALUES (2, 'INC-002', 'Warehouse fire', '2023-05-03', NULL, 'Critical', 8, 'Electrical fault', 'Temporary relocation to nearby warehouse', 'Safety Team', 'Open', 'Critical', 7002, '2023-05-03', '2023-11-01', 1, 120000, 'USD', '2023-12-15', 'Review fire safety protocols');
INSERT INTO supply_chain_incidents VALUES (3, 'INC-003', 'Customs hold on import', '2023-10-10', '2023-10-12', 'Medium', 2, 'Documentation error', 'Provide corrected paperwork', 'Compliance', 'Resolved', 'Moderate', 7003, '2023-10-10', '2023-10-12', 0, 8000, 'USD', '2023-11-10', 'Enhance pre‑clearance checks');

-- Financial transactions table captures monetary movements across accounts
CREATE TABLE financial_transactions
(
    Id INTEGER NOT NULL PRIMARY KEY,
    TransactionId TEXT,
    TransactionDate DATETIME,
    AccountId INTEGER,
    CounterpartyAccount TEXT,
    Amount NUMERIC,
    Currency TEXT,
    TransactionType TEXT,
    Category TEXT,
    SubCategory TEXT,
    Description TEXT,
    Status TEXT,
    ApprovalUserId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    ExchangeRate NUMERIC,
    SettlementDate DATETIME,
    IsReconciled BOOLEAN,
    ReconciliationDate DATETIME,
    Remarks TEXT
);

INSERT INTO financial_transactions VALUES (1, 'TX-10001', '2023-11-15', 4001, 'EXT-2001', 1500.75, 'USD', 'Payment', 'Supplies', 'Office', 'Purchase of printer paper', 'Completed', 8001, '2023-11-15', '2023-11-15', 1, '2023-11-16', 1, '2023-11-16', 'Verified');
INSERT INTO financial_transactions VALUES (2, 'TX-10002', '2023-11-10', 4002, 'EXT-2002', -250.00, 'USD', 'Refund', 'Customer', 'Return', 'Refund for order 5678', 'Pending', NULL, '2023-11-10', '2023-11-10', 1, NULL, 0, NULL, 'Awaiting approval');
INSERT INTO financial_transactions VALUES (3, 'TX-10003', '2023-11-01', 4003, 'EXT-2003', 3200.00, 'EUR', 'Invoice', 'Consulting', 'Tech', 'Consulting services Q3', 'Completed', 8002, '2023-11-01', '2023-11-02', 1.1, '2023-11-03', 1, '2023-11-03', 'Exchange rate applied');

-- Corporate policy versions table maintains the history of internal policies and their revisions
CREATE TABLE corporate_policy_versions
(
    Id INTEGER NOT NULL PRIMARY KEY,
    PolicyCode TEXT,
    PolicyTitle TEXT,
    VersionNumber TEXT,
    EffectiveDate DATETIME,
    ExpirationDate DATETIME,
    AuthorUserId INTEGER,
    ReviewDate DATETIME,
    ApprovedByUserId INTEGER,
    Status TEXT,
    RevisionSummary TEXT,
    DocumentUrl TEXT,
    IsMandatory BOOLEAN,
    DepartmentId INTEGER,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Language TEXT,
    ChangeLog TEXT,
    IsActive BOOLEAN,
    LastReviewedDate DATETIME
);

INSERT INTO corporate_policy_versions VALUES (1, 'CP-001', 'Data Privacy Policy', 'v1.0', '2022-01-01', NULL, 9001, '2021-12-15', 9002, 'Active', 'Initial release', 'http://intranet/policies/CP-001/v1.0.pdf', 1, 10, '2022-01-01', '2023-10-01', 'English', 'Added GDPR references', 1, '2023-10-01');
INSERT INTO corporate_policy_versions VALUES (2, 'CP-002', 'Remote Work Guidelines', 'v2.1', '2023-03-01', NULL, 9003, '2023-02-20', 9004, 'Active', 'Updated equipment allowance', 'http://intranet/policies/CP-002/v2.1.pdf', 1, 12, '2023-03-01', '2023-09-15', 'English', 'Increased stipend', 1, '2023-09-15');
INSERT INTO corporate_policy_versions VALUES (3, 'CP-003', 'Travel Expense Policy', 'v3.0', '2021-07-01', '2024-06-30', 9005, '2021-06-20', 9006, 'Retired', 'Final version before retirement', 'http://intranet/policies/CP-003/v3.0.pdf', 1, 15, '2021-07-01', '2023-05-10', 'English', 'No further changes', 0, '2023-05-10');