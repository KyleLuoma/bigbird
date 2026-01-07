-- Table storing procurement order details
CREATE TABLE procurement_orders
(
    OrderID            INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderNumber        TEXT,
    SupplierID         INTEGER,
    Department         TEXT,
    RequestDate        DATE,
    ApprovalDate       DATE,
    Status             TEXT,
    TotalAmount        REAL,
    Currency           TEXT,
    PaymentTerms       TEXT,
    DeliveryDate       DATE,
    ShippingMethod     TEXT,
    CreatedBy          TEXT,
    UpdatedBy          TEXT,
    CreatedAt          DATE,
    UpdatedAt          DATE,
    Remarks            TEXT,
    FiscalYear         INTEGER,
    CostCenter         TEXT,
    TaxRate            REAL,
    DiscountPct        REAL,
    NetAmount          REAL,
    PriorityLevel      TEXT,
    ContractReference  TEXT
);

INSERT INTO procurement_orders (OrderNumber, SupplierID, Department, RequestDate, ApprovalDate, Status, TotalAmount, Currency, PaymentTerms, DeliveryDate, ShippingMethod, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt, Remarks, FiscalYear, CostCenter, TaxRate, DiscountPct, NetAmount, PriorityLevel, ContractReference) VALUES ('PO-1001', 2001, 'Logistics', '2024-03-01', '2024-03-03', 'Approved', 15000.00, 'USD', 'Net30', '2024-03-15', 'Truck', 'alice', 'bob', '2024-03-01', '2024-03-03', 'Urgent restock', 2024, 'CC-101', 0.07, 5.0, 14175.00, 'High', 'CR-987');
INSERT INTO procurement_orders (OrderNumber, SupplierID, Department, RequestDate, ApprovalDate, Status, TotalAmount, Currency, PaymentTerms, DeliveryDate, ShippingMethod, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt, Remarks, FiscalYear, CostCenter, TaxRate, DiscountPct, NetAmount, PriorityLevel, ContractReference) VALUES ('PO-1002', 2002, 'Marketing', '2024-04-10', '2024-04-12', 'Pending', 8200.50, 'EUR', 'Net45', '2024-04-20', 'Air', 'carol', 'dave', '2024-04-10', '2024-04-12', 'Campaign materials', 2024, 'CC-202', 0.20, 2.5, 7917.48, 'Medium', 'CR-654');
INSERT INTO procurement_orders (OrderNumber, SupplierID, Department, RequestDate, ApprovalDate, Status, TotalAmount, Currency, PaymentTerms, DeliveryDate, ShippingMethod, CreatedBy, UpdatedBy, CreatedAt, UpdatedAt, Remarks, FiscalYear, CostCenter, TaxRate, DiscountPct, NetAmount, PriorityLevel, ContractReference) VALUES ('PO-1003', 2003, 'IT', '2024-05-05', NULL, 'Draft', 23500.75, 'USD', 'Net60', '2024-05-30', 'Ship', 'eve', 'frank', '2024-05-05', '2024-05-05', 'Server upgrade', 2024, 'CC-303', 0.08, 0.0, 25380.81, 'Low', 'CR-321');

-- Table recording energy trade transactions
CREATE TABLE energy_trade_transactions
(
    TradeID            INTEGER PRIMARY KEY AUTOINCREMENT,
    TradeDate          DATE,
    TradeTime          TEXT,
    EnergyType         TEXT,
    QuantityMWh        REAL,
    UnitPrice          REAL,
    TotalValue         REAL,
    Counterparty       TEXT,
    TradeStatus        TEXT,
    SettlementDate     DATE,
    BrokerID           INTEGER,
    Region             TEXT,
    Currency           TEXT,
    TaxAmount          REAL,
    FeeAmount          REAL,
    NetSettlement      REAL,
    TradeType          TEXT,
    DeliveryPoint      TEXT,
    SourceSystem       TEXT,
    CreatedTimestamp   DATE,
    UpdatedTimestamp   DATE,
    Comments           TEXT,
    Exchange           TEXT
);

INSERT INTO energy_trade_transactions (TradeDate, TradeTime, EnergyType, QuantityMWh, UnitPrice, TotalValue, Counterparty, TradeStatus, SettlementDate, BrokerID, Region, Currency, TaxAmount, FeeAmount, NetSettlement, TradeType, DeliveryPoint, SourceSystem, CreatedTimestamp, UpdatedTimestamp, Comments, Exchange) VALUES ('2024-06-01', '09:30', 'Solar', 1500.0, 45.20, 67800.00, 'GreenEnergyCo', 'Settled', '2024-06-02', 501, 'North', 'USD', 4746.00, 300.00, 62754.00, 'Spot', 'NodeA', 'TRADING_SYS', '2024-06-01', '2024-06-02', 'No issues', 'NYMEX');
INSERT INTO energy_trade_transactions (TradeDate, TradeTime, EnergyType, QuantityMWh, UnitPrice, TotalValue, Counterparty, TradeStatus, SettlementDate, BrokerID, Region, Currency, TaxAmount, FeeAmount, NetSettlement, TradeType, DeliveryPoint, SourceSystem, CreatedTimestamp, UpdatedTimestamp, Comments, Exchange) VALUES ('2024-06-15', '14:45', 'Wind', 800.0, 38.75, 31000.00, 'WindPowerLtd', 'Pending', NULL, 502, 'South', 'EUR', 2170.00, 200.00, 28630.00, 'Forward', 'NodeB', 'TRADING_SYS', '2024-06-15', '2024-06-15', 'Awaiting confirmation', 'EEX');
INSERT INTO energy_trade_transactions (TradeDate, TradeTime, EnergyType, QuantityMWh, UnitPrice, TotalValue, Counterparty, TradeStatus, SettlementDate, BrokerID, Region, Currency, TaxAmount, FeeAmount, NetSettlement, TradeType, DeliveryPoint, SourceSystem, CreatedTimestamp, UpdatedTimestamp, Comments, Exchange) VALUES ('2024-07-03', '11:20', 'Hydro', 2500.0, 30.10, 75250.00, 'HydroCorp', 'Settled', '2024-07-04', 503, 'West', 'USD', 5267.50, 400.00, 69582.50, 'Spot', 'NodeC', 'TRADING_SYS', '2024-07-03', '2024-07-04', 'All good', 'CME');

-- Table for customer support case management
CREATE TABLE customer_support_cases
(
    CaseID             INTEGER PRIMARY KEY AUTOINCREMENT,
    CaseNumber         TEXT,
    AccountNumber      TEXT,
    OpenDate           DATE,
    CloseDate          DATE,
    Channel            TEXT,
    IssueCategory      TEXT,
    IssueDescription   TEXT,
    Severity           TEXT,
    Status             TEXT,
    AssignedAgent      TEXT,
    ResolutionSummary  TEXT,
    FirstResponseTime  INTEGER,
    TotalResponseTime  INTEGER,
    SatisfactionScore  INTEGER,
    FollowUpRequired   TEXT,
    CommunicationLog   TEXT,
    CreatedAt          DATE,
    UpdatedAt          DATE,
    ResolutionDate     DATE,
    Tags               TEXT,
    SLA_Breach         INTEGER
);

INSERT INTO customer_support_cases (CaseNumber, AccountNumber, OpenDate, CloseDate, Channel, IssueCategory, IssueDescription, Severity, Status, AssignedAgent, ResolutionSummary, FirstResponseTime, TotalResponseTime, SatisfactionScore, FollowUpRequired, CommunicationLog, CreatedAt, UpdatedAt, ResolutionDate, Tags, SLA_Breach) VALUES ('CS-9001', 'ACC-12345', '2024-03-10', '2024-03-12', 'Email', 'Billing', 'Incorrect invoice amount', 'Medium', 'Closed', 'janedoe', 'Adjusted invoice and issued credit', 120, 3400, 5, 'No', 'email_thread_001', '2024-03-10', '2024-03-12', '2024-03-12', 'billing,invoice', 0);
INSERT INTO customer_support_cases (CaseNumber, AccountNumber, OpenDate, CloseDate, Channel, IssueCategory, IssueDescription, Severity, Status, AssignedAgent, ResolutionSummary, FirstResponseTime, TotalResponseTime, SatisfactionScore, FollowUpRequired, CommunicationLog, CreatedAt, UpdatedAt, ResolutionDate, Tags, SLA_Breach) VALUES ('CS-9002', 'ACC-67890', '2024-04-01', NULL, 'Phone', 'Technical', 'App crash on startup', 'High', 'Open', 'johnsmith', NULL, 30, NULL, NULL, 'Yes', 'call_log_045', '2024-04-01', '2024-04-01', NULL, 'app,crash', 1);
INSERT INTO customer_support_cases (CaseNumber, AccountNumber, OpenDate, CloseDate, Channel, IssueCategory, IssueDescription, Severity, Status, AssignedAgent, ResolutionSummary, FirstResponseTime, TotalResponseTime, SatisfactionScore, FollowUpRequired, CommunicationLog, CreatedAt, UpdatedAt, ResolutionDate, Tags, SLA_Breach) VALUES ('CS-9003', 'ACC-24680', '2024-05-20', '2024-05-22', 'Chat', 'Account', 'Unable to reset password', 'Low', 'Closed', 'alicew', 'Password reset link sent', 45, 1800, 4, 'No', 'chat_log_078', '2024-05-20', '2024-05-22', '2024-05-22', 'account,password', 0);

-- Table for internal audit findings
CREATE TABLE internal_audit_findings
(
    AuditID            INTEGER PRIMARY KEY AUTOINCREMENT,
    AuditPeriod        TEXT,
    Department         TEXT,
    Auditor            TEXT,
    FindingID          TEXT,
    FindingDescription TEXT,
    RiskRating         TEXT,
    Recommendation     TEXT,
    Status             TEXT,
    ActionOwner        TEXT,
    TargetDate         DATE,
    CompletionDate     DATE,
    FollowUpRequired   TEXT,
    EvidenceDocument   TEXT,
    CreatedAt          DATE,
    UpdatedAt          DATE,
    Comments           TEXT,
    Category           TEXT,
    SeverityScore      REAL,
    ControlArea        TEXT,
    ImpactAssessment   REAL,
    MitigationPlan     TEXT
);

INSERT INTO internal_audit_findings (AuditPeriod, Department, Auditor, FindingID, FindingDescription, RiskRating, Recommendation, Status, ActionOwner, TargetDate, CompletionDate, FollowUpRequired, EvidenceDocument, CreatedAt, UpdatedAt, Comments, Category, SeverityScore, ControlArea, ImpactAssessment, MitigationPlan) VALUES ('Q1-2024', 'Finance', 'michael', 'FND-001', 'Missing supporting documents for expense reports', 'High', 'Implement document retention policy', 'Open', 'sarah', '2024-06-30', NULL, 'Yes', 'doc_001.pdf', '2024-04-15', '2024-04-15', 'First report of year', 'Compliance', 8.5, 'Expense Management', 7.0, 'Develop SOP and training');
INSERT INTO internal_audit_findings (AuditPeriod, Department, Auditor, FindingID, FindingDescription, RiskRating, Recommendation, Status, ActionOwner, TargetDate, CompletionDate, FollowUpRequired, EvidenceDocument, CreatedAt, UpdatedAt, Comments, Category, SeverityScore, ControlArea, ImpactAssessment, MitigationPlan) VALUES ('Q1-2024', 'HR', 'laura', 'FND-002', 'Incomplete employee onboarding checklist', 'Medium', 'Standardize onboarding workflow', 'Closed', 'tom', '2024-05-15', '2024-05-10', 'No', 'doc_002.pdf', '2024-04-20', '2024-05-10', 'Resolved after training', 'Operations', 5.0, 'Onboarding', 3.5, 'Update checklist and assign responsibility');
INSERT INTO internal_audit_findings (AuditPeriod, Department, Auditor, FindingID, FindingDescription, RiskRating, Recommendation, Status, ActionOwner, TargetDate, CompletionDate, FollowUpRequired, EvidenceDocument, CreatedAt, UpdatedAt, Comments, Category, SeverityScore, ControlArea, ImpactAssessment, MitigationPlan) VALUES ('Q1-2024', 'IT', 'david', 'FND-003', 'Outdated antivirus definitions on 12 workstations', 'Low', 'Schedule regular updates', 'Open', 'naomi', '2024-07-01', NULL, 'Yes', 'doc_003.pdf', '2024-04-25', '2024-04-25', 'Pending remediation', 'Security', 3.2, 'Endpoint Protection', 2.0, 'Automate patch management');

-- Table for fleet driver assignments
CREATE TABLE fleet_driver_assignments
(
    AssignmentID       INTEGER PRIMARY KEY AUTOINCREMENT,
    DriverID           INTEGER,
    VehicleID          INTEGER,
    AssignmentStart    DATE,
    AssignmentEnd      DATE,
    ShiftType          TEXT,
    Region             TEXT,
    Supervisor         TEXT,
    MileageAllowance   REAL,
    FuelAllowance      REAL,
    AllowanceCurrency  TEXT,
    Status             TEXT,
    Notes              TEXT,
    CreatedAt          DATE,
    UpdatedAt          DATE,
    ContractType       TEXT,
    OvertimeEligible   INTEGER,
    TrainingCompleted  INTEGER,
    LicenseNumber      TEXT,
    CertificationLevel TEXT,
    EmergencyContact   TEXT,
    PhoneNumber        TEXT,
    Email              TEXT
);

INSERT INTO fleet_driver_assignments (DriverID, VehicleID, AssignmentStart, AssignmentEnd, ShiftType, Region, Supervisor, MileageAllowance, FuelAllowance, AllowanceCurrency, Status, Notes, CreatedAt, UpdatedAt, ContractType, OvertimeEligible, TrainingCompleted, LicenseNumber, CertificationLevel, EmergencyContact, PhoneNumber, Email) VALUES (301, 401, '2024-01-01', NULL, 'Day', 'North', 'maria', 1500.0, 200.0, 'USD', 'Active', 'Initial assignment', '2024-01-01', '2024-01-01', 'FullTime', 1, 1, 'D1234567', 'Level2', 'JohnDoe', '5551234567', 'driver1@example.com');
INSERT INTO fleet_driver_assignments (DriverID, VehicleID, AssignmentStart, AssignmentEnd, ShiftType, Region, Supervisor, MileageAllowance, FuelAllowance, AllowanceCurrency, Status, Notes, CreatedAt, UpdatedAt, ContractType, OvertimeEligible, TrainingCompleted, LicenseNumber, CertificationLevel, EmergencyContact, PhoneNumber, Email) VALUES (302, 402, '2023-12-15', '2024-06-30', 'Night', 'South', 'kevin', 1800.0, 250.0, 'USD', 'Completed', 'Contract ending soon', '2023-12-15', '2024-06-01', 'PartTime', 0, 1, 'D7654321', 'Level1', 'JaneSmith', '5559876543', 'driver2@example.com');
INSERT INTO fleet_driver_assignments (DriverID, VehicleID, AssignmentStart, AssignmentEnd, ShiftType, Region, Supervisor, MileageAllowance, FuelAllowance, AllowanceCurrency, Status, Notes, CreatedAt, UpdatedAt, ContractType, OvertimeEligible, TrainingCompleted, LicenseNumber, CertificationLevel, EmergencyContact, PhoneNumber, Email) VALUES (303, 403, '2024-03-01', NULL, 'Swing', 'East', 'linda', 1200.0, 180.0, 'USD', 'Active', 'Rotating shift', '2024-03-01', '2024-03-01', 'FullTime', 1, 0, 'D1122334', 'Level3', 'MikeBrown', '5551122334', 'driver3@example.com');

-- Table for station maintenance requests
CREATE TABLE station_maintenance_requests
(
    RequestID           INTEGER PRIMARY KEY AUTOINCREMENT,
    StationID           INTEGER,
    RequestDate         DATE,
    RequestedBy         TEXT,
    IssueCategory       TEXT,
    IssueDescription    TEXT,
    PriorityLevel       TEXT,
    ScheduledDate       DATE,
    CompletionDate      DATE,
    TechnicianID        INTEGER,
    PartsRequired       TEXT,
    EstimatedCost       REAL,
    ActualCost          REAL,
    CostCurrency        TEXT,
    Status              TEXT,
    Remarks             TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    MaintenanceWindow   TEXT,
    DisruptionLevel     TEXT,
    ApprovalStatus      TEXT,
    FollowUpRequired    TEXT
);

INSERT INTO station_maintenance_requests (StationID, RequestDate, RequestedBy, IssueCategory, IssueDescription, PriorityLevel, ScheduledDate, CompletionDate, TechnicianID, PartsRequired, EstimatedCost, ActualCost, CostCurrency, Status, Remarks, CreatedAt, UpdatedAt, MaintenanceWindow, DisruptionLevel, ApprovalStatus, FollowUpRequired) VALUES (101, '2024-04-05', 'sam', 'Pump', 'Leak in fuel dispenser', 'High', '2024-04-07', '2024-04-07', 501, 'Seal, Gasket', 350.00, 340.00, 'USD', 'Completed', 'Replaced seals', '2024-04-05', '2024-04-07', '02:00-04:00', 'Low', 'Approved', 'No');
INSERT INTO station_maintenance_requests (StationID, RequestDate, RequestedBy, IssueCategory, IssueDescription, PriorityLevel, ScheduledDate, CompletionDate, TechnicianID, PartsRequired, EstimatedCost, ActualCost, CostCurrency, Status, Remarks, CreatedAt, UpdatedAt, MaintenanceWindow, DisruptionLevel, ApprovalStatus, FollowUpRequired) VALUES (102, '2024-04-12', 'luke', 'Electrical', 'Faulty lighting in convenience area', 'Medium', '2024-04-15', NULL, 502, 'LED Panel', 200.00, NULL, 'USD', 'Pending', 'Awaiting parts', '2024-04-12', '2024-04-12', '03:00-05:00', 'Medium', 'Pending', 'Yes');
INSERT INTO station_maintenance_requests (StationID, RequestDate, RequestedBy, IssueCategory, IssueDescription, PriorityLevel, ScheduledDate, CompletionDate, TechnicianID, PartsRequired, EstimatedCost, ActualCost, CostCurrency, Status, Remarks, CreatedAt, UpdatedAt, MaintenanceWindow, DisruptionLevel, ApprovalStatus, FollowUpRequired) VALUES (103, '2024-05-01', 'mia', 'HVAC', 'Air conditioning not cooling', 'Low', '2024-05-03', '2024-05-03', 503, 'Thermostat', 150.00, 145.00, 'USD', 'Completed', 'Recharged refrigerant', '2024-05-01', '2024-05-03', '01:00-03:00', 'Low', 'Approved', 'No');

-- Table for government subsidy applications
CREATE TABLE government_subsidy_applications
(
    ApplicationID       INTEGER PRIMARY KEY AUTOINCREMENT,
    ProgramName         TEXT,
    ApplicantEntity     TEXT,
    SubmissionDate      DATE,
    ReviewDate          DATE,
    Status              TEXT,
    ApprovedAmount      REAL,
    Currency            TEXT,
    FundingPeriod       TEXT,
    ProjectDescription  TEXT,
    ProjectStart        DATE,
    ProjectEnd          DATE,
    LeadContact         TEXT,
    ContactPhone        TEXT,
    ContactEmail        TEXT,
    MatchingFunds       REAL,
    MatchingCurrency    TEXT,
    EvaluationScore     REAL,
    Remarks             TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Region              TEXT,
    Agency              TEXT
);

INSERT INTO government_subsidy_applications (ProgramName, ApplicantEntity, SubmissionDate, ReviewDate, Status, ApprovedAmount, Currency, FundingPeriod, ProjectDescription, ProjectStart, ProjectEnd, LeadContact, ContactPhone, ContactEmail, MatchingFunds, MatchingCurrency, EvaluationScore, Remarks, CreatedAt, UpdatedAt, Region, Agency) VALUES ('CleanFuel Initiative', 'EcoEnergy Corp', '2024-03-20', '2024-04-15', 'Approved', 500000.00, 'USD', '2024-2026', 'Deployment of low-sulfur fuel stations', '2024-06-01', '2026-05-31', 'anna', '5553217890', 'anna@ecoenergy.com', 100000.00, 'USD', 92.5, 'Fast track', '2024-03-20', '2024-04-16', 'Midwest', 'DOE');
INSERT INTO government_subsidy_applications (ProgramName, ApplicantEntity, SubmissionDate, ReviewDate, Status, ApprovedAmount, Currency, FundingPeriod, ProjectDescription, ProjectStart, ProjectEnd, LeadContact, ContactPhone, ContactEmail, MatchingFunds, MatchingCurrency, EvaluationScore, Remarks, CreatedAt, UpdatedAt, Region, Agency) VALUES ('EV Charging Expansion', 'GreenTransit Ltd', '2024-04-05', '2024-04-30', 'Pending', NULL, 'USD', '2025-2027', 'Installation of 50 EV fast chargers', '2025-01-15', '2027-12-31', 'bob', '5556543210', 'bob@greentransit.com', 200000.00, 'USD', 88.0, 'Awaiting budget', '2024-04-05', '2024-04-05', 'West Coast', 'EPA');
INSERT INTO government_subsidy_applications (ProgramName, ApplicantEntity, SubmissionDate, ReviewDate, Status, ApprovedAmount, Currency, FundingPeriod, ProjectDescription, ProjectStart, ProjectEnd, LeadContact, ContactPhone, ContactEmail, MatchingFunds, MatchingCurrency, EvaluationScore, Remarks, CreatedAt, UpdatedAt, Region, Agency) VALUES ('Renewable Integration', 'SunPower Inc', '2024-05-10', NULL, 'Under Review', NULL, 'USD', '2024-2029', 'Grid integration of solar farms', '2024-09-01', '2029-08-31', 'carla', '5559870123', 'carla@sunpower.com', 300000.00, 'USD', 0.0, 'Initial assessment completed', '2024-05-10', '2024-05-10', 'Southwest', 'DOE');

-- Table for digital marketing metrics
CREATE TABLE digital_marketing_metrics
(
    MetricID            INTEGER PRIMARY KEY AUTOINCREMENT,
    CampaignID          INTEGER,
    Platform            TEXT,
    Date                DATE,
    Impressions         INTEGER,
    Clicks              INTEGER,
    Conversions         INTEGER,
    ConversionValue     REAL,
    Cost                REAL,
    CPC                 REAL,
    CPM                 REAL,
    CTR                 REAL,
    BounceRate          REAL,
    AvgSessionDuration  REAL,
    NewUsers            INTEGER,
    ReturningUsers      INTEGER,
    Revenue             REAL,
    ROI                 REAL,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Notes               TEXT,
    AttributionModel    TEXT
);

INSERT INTO digital_marketing_metrics (CampaignID, Platform, Date, Impressions, Clicks, Conversions, ConversionValue, Cost, CPC, CPM, CTR, BounceRate, AvgSessionDuration, NewUsers, ReturningUsers, Revenue, ROI, CreatedAt, UpdatedAt, Notes, AttributionModel) VALUES (1001, 'GoogleAds', '2024-04-01', 250000, 4200, 350, 21000.00, 5000.00, 1.19, 20.00, 1.68, 45.0, 120.5, 3000, 700, 21000.00, 3.2, '2024-04-01', '2024-04-02', 'Spring sale', 'LastClick');
INSERT INTO digital_marketing_metrics (CampaignID, Platform, Date, Impressions, Clicks, Conversions, ConversionValue, Cost, CPC, CPM, CTR, BounceRate, AvgSessionDuration, NewUsers, ReturningUsers, Revenue, ROI, CreatedAt, UpdatedAt, Notes, AttributionModel) VALUES (1002, 'Facebook', '2024-04-01', 180000, 3100, 200, 12000.00, 3400.00, 1.10, 18.89, 1.72, 50.0, 95.0, 2500, 600, 12000.00, 2.5, '2024-04-01', '2024-04-02', 'Brand awareness', 'FirstTouch');
INSERT INTO digital_marketing_metrics (CampaignID, Platform, Date, Impressions, Clicks, Conversions, ConversionValue, Cost, CPC, CPM, CTR, BounceRate, AvgSessionDuration, NewUsers, ReturningUsers, Revenue, ROI, CreatedAt, UpdatedAt, Notes, AttributionModel) VALUES (1003, 'LinkedIn', '2024-04-01', 90000, 900, 80, 6400.00, 2100.00, 2.33, 23.33, 1.00, 35.0, 180.0, 1200, 300, 6400.00, 2.0, '2024-04-01', '2024-04-02', 'B2B lead gen', 'Linear');

-- Table for logistics warehouse inventory
CREATE TABLE logistics_warehouse_inventory
(
    InventoryID         INTEGER PRIMARY KEY AUTOINCREMENT,
    WarehouseID         INTEGER,
    SKU                 TEXT,
    ProductName         TEXT,
    Category            TEXT,
    QuantityOnHand      INTEGER,
    ReorderPoint        INTEGER,
    ReorderQuantity     INTEGER,
    UnitCost            REAL,
    TotalValue          REAL,
    LocationBin         TEXT,
    LastReceived        DATE,
    LastShipped         DATE,
    SupplierID          INTEGER,
    ExpirationDate      DATE,
    BatchNumber         TEXT,
    WeightPerUnit       REAL,
    VolumePerUnit       REAL,
    IsHazardous        INTEGER,
    TemperatureControlled TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Comments            TEXT
);

INSERT INTO logistics_warehouse_inventory (WarehouseID, SKU, ProductName, Category, QuantityOnHand, ReorderPoint, ReorderQuantity, UnitCost, TotalValue, LocationBin, LastReceived, LastShipped, SupplierID, ExpirationDate, BatchNumber, WeightPerUnit, VolumePerUnit, IsHazardous, TemperatureControlled, CreatedAt, UpdatedAt, Comments) VALUES (10, 'SKU-001', 'Diesel Fuel 20L', 'Fuel', 5000, 1000, 2000, 1.25, 6250.00, 'A1', '2024-03-20', '2024-04-02', 2001, '2025-03-20', 'BATCH-01', 20.0, 25.0, 0, 'No', '2024-03-20', '2024-04-02', 'Seasonal stock');
INSERT INTO logistics_warehouse_inventory (WarehouseID, SKU, ProductName, Category, QuantityOnHand, ReorderPoint, ReorderQuantity, UnitCost, TotalValue, LocationBin, LastReceived, LastShipped, SupplierID, ExpirationDate, BatchNumber, WeightPerUnit, VolumePerUnit, IsHazardous, TemperatureControlled, CreatedAt, UpdatedAt, Comments) VALUES (11, 'SKU-002', 'EcoClean Detergent', 'Cleaning', 1200, 300, 500, 3.40, 4080.00, 'B3', '2024-03-25', '2024-04-01', 2002, '2026-12-31', 'BATCH-07', 0.5, 0.8, 0, 'No', '2024-03-25', '2024-04-01', 'High turnover');
INSERT INTO logistics_warehouse_inventory (WarehouseID, SKU, ProductName, Category, QuantityOnHand, ReorderPoint, ReorderQuantity, UnitCost, TotalValue, LocationBin, LastReceived, LastShipped, SupplierID, ExpirationDate, BatchNumber, WeightPerUnit, VolumePerUnit, IsHazardous, TemperatureControlled, CreatedAt, UpdatedAt, Comments) VALUES (12, 'SKU-003', 'Lithium Battery Pack', 'Electronics', 250, 50, 100, 120.00, 30000.00, 'C5', '2024-04-05', '2024-04-10', 2003, '2029-01-01', 'BATCH-12', 1.2, 0.5, 1, 'Yes', '2024-04-05', '2024-04-10', 'Store in cool area');

-- Table for vehicle registration records
CREATE TABLE vehicle_registration_records
(
    RegistrationID      INTEGER PRIMARY KEY AUTOINCREMENT,
    VehicleID           INTEGER,
    RegistrationNumber  TEXT,
    State               TEXT,
    ExpirationDate      DATE,
    IssueDate           DATE,
    OwnerName           TEXT,
    OwnerAddress        TEXT,
    VIN                 TEXT,
    PlateType           TEXT,
    EmissionStandard    TEXT,
    WeightKg            REAL,
    VehicleClass        TEXT,
    RegistrationStatus  TEXT,
    FeePaid             REAL,
    FeeCurrency         TEXT,
    InsuredFlag         INTEGER,
    InsurancePolicyNumber TEXT,
    InspectionDueDate   DATE,
    InspectionResult    TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    Notes               TEXT,
    RenewalReminderSent INTEGER
);

INSERT INTO vehicle_registration_records (VehicleID, RegistrationNumber, State, ExpirationDate, IssueDate, OwnerName, OwnerAddress, VIN, PlateType, EmissionStandard, WeightKg, VehicleClass, RegistrationStatus, FeePaid, FeeCurrency, InsuredFlag, InsurancePolicyNumber, InspectionDueDate, InspectionResult, CreatedAt, UpdatedAt, Notes, RenewalReminderSent) VALUES (401, 'ABC-1234', 'CA', '2025-12-31', '2023-01-01', 'John Doe', '123 Main St', '1HGCM82633A004352', 'Private', 'Euro6', 1500.0, 'Sedan', 'Active', 150.00, 'USD', 1, 'POL-5678', '2024-06-15', 'Pass', '2023-01-01', '2023-01-01', 'First registration', 0);
INSERT INTO vehicle_registration_records (VehicleID, RegistrationNumber, State, ExpirationDate, IssueDate, OwnerName, OwnerAddress, VIN, PlateType, EmissionStandard, WeightKg, VehicleClass, RegistrationStatus, FeePaid, FeeCurrency, InsuredFlag, InsurancePolicyNumber, InspectionDueDate, InspectionResult, CreatedAt, UpdatedAt, Notes, RenewalReminderSent) VALUES (402, 'XYZ-9876', 'TX', '2026-07-30', '2024-03-15', 'Acme Corp', '456 Industry Rd', '2FTRX18L1XCA1234', 'Commercial', 'Euro5', 3500.0, 'Truck', 'Active', 300.00, 'USD', 1, 'POL-9012', '2025-03-01', 'Pending', '2024-03-15', '2024-03-15', 'Fleet vehicle', 1);
INSERT INTO vehicle_registration_records (VehicleID, RegistrationNumber, State, ExpirationDate, IssueDate, OwnerName, OwnerAddress, VIN, PlateType, EmissionStandard, WeightKg, VehicleClass, RegistrationStatus, FeePaid, FeeCurrency, InsuredFlag, InsurancePolicyNumber, InspectionDueDate, InspectionResult, CreatedAt, UpdatedAt, Notes, RenewalReminderSent) VALUES (403, 'LMN-5555', 'NY', '2025-05-20', '2022-05-20', 'Jane Smith', '789 Oak Ave', '3N1AB7AP4KY256789', 'Private', 'Euro6d', 1200.0, 'Coupe', 'Expired', 0.00, 'USD', 0, NULL, '2024-12-01', 'Fail', '2022-05-20', '2024-04-30', 'Pending renewal', 1);