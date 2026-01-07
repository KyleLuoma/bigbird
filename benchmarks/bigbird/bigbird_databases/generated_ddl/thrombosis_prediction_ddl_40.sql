-- Information about individual hospital wings and their characteristics
CREATE TABLE BuildingWing (
    WingID               INTEGER PRIMARY KEY,
    BuildingName         TEXT,
    WingName             TEXT,
    FloorCount           INTEGER,
    TotalArea            REAL,
    ConstructionDate     DATE,
    RenovationDate       DATE,
    Architect            TEXT,
    DepartmentPrimary    TEXT,
    EmergencyExitCount   INTEGER,
    SecurityLevel        INTEGER,
    HVACSystemID         INTEGER,
    FireAlarmSystemID    INTEGER,
    AccessibilityRating  INTEGER,
    WiFiCoveragePercent  REAL,
    EnergyConsumptionAnnual REAL,
    MaintenanceContractID INTEGER,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    Notes                TEXT
);

INSERT INTO BuildingWing VALUES (1, 'Main Campus', 'North Wing', 5, 25000.5, '1995-06-15', '2018-03-20', 'Smith Architects', 'Cardiology', 4, 3, 101, 201, 5, 98.7, 1200000.0, 301, '2022-01-01', '2023-01-01', 'Recently renovated');
INSERT INTO BuildingWing VALUES (2, 'East Campus', 'East Wing', 3, 15000.0, '2002-11-02', '2020-09-10', 'Jones Design', 'Oncology', 2, 2, 102, 202, 4, 95.3, 800000.0, 302, '2022-02-15', '2023-02-15', 'Contains radiation suite');
INSERT INTO BuildingWing VALUES (3, 'West Campus', 'West Annex', 2, 10000.0, '2010-04-25', NULL, 'Lee Consortium', 'Pediatrics', 1, 1, 103, 203, 5, 99.1, 500000.0, 303, '2022-03-10', '2023-03-10', 'New construction');

-- Details of HVAC systems servicing hospital areas
CREATE TABLE HVACSystem (
    SystemID                 INTEGER PRIMARY KEY,
    Manufacturer             TEXT,
    ModelNumber              TEXT,
    InstallationDate         DATE,
    LastServiceDate          DATE,
    CapacityTPH              REAL,
    EnergyEfficiencyRatio    REAL,
    IsVariableSpeed          INTEGER,
    ControlType              TEXT,
    ZonesServed              INTEGER,
    FilterChangeIntervalDays INTEGER,
    WarrantyExpiration       DATE,
    SerialNumber             TEXT,
    FirmwareVersion          TEXT,
    MonitoringEnabled        INTEGER,
    CreatedAt                DATE,
    UpdatedAt                DATE,
    MaintenanceContractID    INTEGER,
    Location                 TEXT,
    Notes                    TEXT
);

INSERT INTO HVACSystem VALUES (101, 'CoolAir', 'CA-2000', '1995-06-20', '2022-12-01', 35000.0, 3.5, 1, 'BEMS', 12, 90, '2025-06-20', 'SN101CA', 'v2.1', 1, '2022-01-01', '2023-01-01', 401, 'North Wing', 'Upgraded filters 2022');
INSERT INTO HVACSystem VALUES (102, 'VentPro', 'VP-550', '2002-11-10', '2023-01-15', 22000.0, 4.0, 0, 'Manual', 8, 120, '2027-11-10', 'SN102VP', 'v1.8', 0, '2022-02-15', '2023-02-15', 402, 'East Wing', 'Scheduled for retrofit');
INSERT INTO HVACSystem VALUES (103, 'AirFlow', 'AF-300', '2010-05-01', '2022-11-20', 18000.0, 3.8, 1, 'BEMS', 6, 60, '2024-05-01', 'SN103AF', 'v3.0', 1, '2022-03-10', '2023-03-10', 403, 'West Annex', 'Energy audit pending');

-- Inventory of IT assets across the hospital network
CREATE TABLE ITAsset (
    AssetID                INTEGER PRIMARY KEY,
    AssetTag               TEXT,
    AssetType              TEXT,
    Manufacturer           TEXT,
    Model                  TEXT,
    PurchaseDate           DATE,
    WarrantyEndDate        DATE,
    AssignedDepartment     TEXT,
    AssignedOwner          TEXT,
    IPAddress              TEXT,
    MACAddress             TEXT,
    OperatingSystem        TEXT,
    CPU                    TEXT,
    RAM_GB                 INTEGER,
    Storage_GB             INTEGER,
    SerialNumber           TEXT,
    LifecycleStatus        TEXT,
    DepreciationStartDate  DATE,
    DepreciationEndDate    DATE,
    Notes                  TEXT
);

INSERT INTO ITAsset VALUES (1001, 'TAG-001', 'Workstation', 'Dell', 'OptiPlex 7070', '2019-03-12', '2022-03-12', 'Radiology', 'DrSmith', '192.168.10.45', '00-14-22-01-23-45', 'Windows 10', 'Intel i7', 16, 512, 'SN1001', 'In Use', '2019-03-12', '2024-03-12', 'Mounted on cart');
INSERT INTO ITAsset VALUES (1002, 'TAG-002', 'Server', 'HP', 'ProLiant DL380', '2020-07-01', '2025-07-01', 'IT Services', 'AdminTeam', '192.168.20.10', '00-16-3E-5A-6B-7C', 'Linux', 'Intel Xeon', 64, 2048, 'SN1002', 'In Service', '2020-07-01', '2025-07-01', 'Primary DB server');
INSERT INTO ITAsset VALUES (1003, 'TAG-003', 'Laptop', 'Apple', 'MacBook Pro', '2021-11-20', '2024-11-20', 'Administration', 'MsJones', '192.168.30.25', '00-25-9C-12-34-56', 'macOS', 'M1', 8, 256, 'SN1003', 'Leased', '2021-11-20', '2026-11-20', 'Assigned to CFO');

-- Applications for research grants submitted to external agencies
CREATE TABLE ResearchGrantApplication (
    ApplicationID          INTEGER PRIMARY KEY,
    GrantProgram           TEXT,
    ApplicantOrganization  TEXT,
    PrincipalInvestigator  TEXT,
    Title                  TEXT,
    Abstract               TEXT,
    RequestedAmount        REAL,
    FundingAgency          TEXT,
    SubmissionDate         DATE,
    ReviewScore            INTEGER,
    Status                 TEXT,
    AwardedAmount          REAL,
    StartDate              DATE,
    EndDate                DATE,
    FundingPeriodMonths    INTEGER,
    Category               TEXT,
    Keywords               TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Notes                  TEXT
);

INSERT INTO ResearchGrantApplication VALUES (2001, 'NeuroScience Initiative', 'City Hospital Research Center', 'DrAllen', 'Neural Pathway Mapping', 'Study of cortical connections using fMRI', 500000.0, 'National Science Foundation', '2022-04-15', 85, 'Pending', NULL, NULL, NULL, 24, 'Neuroscience', 'fMRI,Connectivity,Brain', '2022-04-01', '2022-04-20', 'First submission');
INSERT INTO ResearchGrantApplication VALUES (2002, 'CardioTech Grant', 'Heart Health Institute', 'DrBaker', 'Wearable ECG Monitoring', 'Development of low-cost wearable ECG for ambulatory patients', 300000.0, 'Health Innovation Fund', '2022-05-10', 90, 'Approved', 280000.0, '2022-09-01', '2024-08-31', 24, 'Cardiology', 'Wearable,ECG,Monitoring', '2022-05-01', '2022-05-12', 'Approved with partial funding');
INSERT INTO ResearchGrantApplication VALUES (2003, 'Genomics Exploration', 'Genetics Lab Ltd', 'DrCarter', 'Rare Variant Identification', 'Whole-genome sequencing to identify rare disease variants', 750000.0, 'Genome Research Council', '2022-06-20', 78, 'Rejected', NULL, NULL, NULL, 36, 'Genomics', 'WGS,RareDisease,Variants', '2022-06-01', '2022-06-22', 'Awaiting feedback');

-- Public health alerts issued by health authorities
CREATE TABLE PublicHealthAlert (
    AlertID               INTEGER PRIMARY KEY,
    AlertType             TEXT,
    Title                 TEXT,
    Description           TEXT,
    IssuedBy              TEXT,
    ContactInfo           TEXT,
    EffectiveDate         DATE,
    ExpirationDate        DATE,
    RegionAffected        TEXT,
    SeverityLevel         INTEGER,
    AdvisoryLink          TEXT,
    CommunicationMethod   TEXT,
    FollowUpRequired      INTEGER,
    CreatedAt             DATE,
    UpdatedAt             DATE,
    AcknowledgedBy        TEXT,
    AcknowledgedDate      DATE,
    Remarks               TEXT,
    SourceSystem          TEXT,
    Status                TEXT
);

INSERT INTO PublicHealthAlert VALUES (3001, 'Infectious Disease', 'Seasonal Influenza Alert', 'Increased influenza activity; recommend vaccination', 'State Health Dept', '555-1234', '2023-01-01', '2023-03-31', 'Region A', 2, 'http://healthdept.gov/flu2023', 'Email', 1, '2023-01-01', '2023-01-02', 'AllFacilities', '2023-01-03', 'Vaccination clinics set up', 'Internal', 'Active');
INSERT INTO PublicHealthAlert VALUES (3002, 'Environmental', 'Air Quality Warning', 'PM2.5 levels exceed safe threshold; limit outdoor activities', 'Environmental Agency', '555-5678', '2023-02-10', '2023-02-12', 'Region B', 3, 'http://envagency.gov/aqw', 'SMS', 0, '2023-02-10', '2023-02-10', 'FacilitiesOps', '2023-02-10', 'HVAC increased filtration', 'External', 'Resolved');
INSERT INTO PublicHealthAlert VALUES (3003, 'Food Safety', 'Salmonella Outbreak', 'Confirmed salmonella cases linked to canned goods', 'Food Safety Authority', '555-9012', '2023-03-05', '2023-03-20', 'Statewide', 4, 'http://foodsafety.gov/salmonella', 'PressRelease', 1, '2023-03-05', '2023-03-06', 'AllCafeterias', '2023-03-07', 'Recall initiated', 'External', 'Active');

-- Partnerships with community organizations
CREATE TABLE CommunityPartner (
    PartnerID               INTEGER PRIMARY KEY,
    OrganizationName        TEXT,
    ContactPerson           TEXT,
    PhoneNumber             TEXT,
    Email                   TEXT,
    Address                 TEXT,
    PartnershipStartDate    DATE,
    PartnershipEndDate      DATE,
    ServicesProvided        TEXT,
    ServiceArea             TEXT,
    ContractID              INTEGER,
    Status                  TEXT,
    LevelOfEngagement       INTEGER,
    FundingContribution     REAL,
    VolunteerHoursAnnual    INTEGER,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    Notes                   TEXT,
    PrimaryFocus            TEXT,
    AgreementDocumentLink   TEXT
);

INSERT INTO CommunityPartner VALUES (4001, 'Healthy Kids Foundation', 'Laura Green', '555-1111', 'lgreen@hkf.org', '123 Elm St', '2021-01-01', NULL, 'Nutrition Education', 'Local Schools', 501, 'Active', 5, 25000.0, 1200, '2022-01-01', '2023-01-01', 'Annual health fairs', 'Child Health', 'http://hkf.org/contract2021.pdf');
INSERT INTO CommunityPartner VALUES (4002, 'Senior Support Network', 'Mike Brown', '555-2222', 'mbrown@ssn.org', '456 Oak Ave', '2020-06-15', NULL, 'Home Visits', 'Elderly Community', 502, 'Active', 4, 15000.0, 800, '2022-01-15', '2023-01-15', 'Monthly check‑ins', 'Aging', 'http://ssn.org/contract2020.pdf');
INSERT INTO CommunityPartner VALUES (4003, 'Green Earth Initiative', 'Sara Lee', '555-3333', 'slee@gei.org', '789 Pine Rd', '2019-03-01', '2024-02-28', 'Recycling Programs', 'Citywide', 503, 'Pending', 3, 10000.0, 500, '2022-02-01', '2023-02-01', 'Pilot recycling bins', 'Environment', 'http://gei.org/contract2019.pdf');

-- Records of regulatory submissions made by the hospital
CREATE TABLE RegulatorySubmission (
    SubmissionID            INTEGER PRIMARY KEY,
    RegulationName          TEXT,
    SubmissionType          TEXT,
    SubmittedBy             TEXT,
    Department              TEXT,
    SubmissionDate          DATE,
    ReviewDueDate           DATE,
    Status                  TEXT,
    ApprovalDate            DATE,
    DocumentLink            TEXT,
    Comments                TEXT,
    RevisionNumber          INTEGER,
    AssociatedProjectID     INTEGER,
    ConfidentialLevel       INTEGER,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    IsElectronic            INTEGER,
    TrackingNumber          TEXT,
    Respondent              TEXT,
    ResponseDate            DATE
);

INSERT INTO RegulatorySubmission VALUES (5001, 'HIPAA Privacy Rule', 'Compliance Report', 'ComplianceOfficer', 'Legal', '2022-09-01', '2022-10-15', 'Submitted', NULL, 'http://hospital.org/hipaa2022.pdf', 'Initial submission', 1, NULL, 2, '2022-09-01', '2022-09-02', 1, 'TRK-20220901', 'OCR', NULL);
INSERT INTO RegulatorySubmission VALUES (5002, ' OSHA Workplace Safety', 'Incident Report', 'SafetyManager', 'Facilities', '2022-11-20', '2022-12-05', 'Under Review', NULL, 'http://hospital.org/osha2022_11.pdf', 'Minor slip event', 2, NULL, 1, '2022-11-20', '2022-11-21', 1, 'TRK-20221120', 'OSHA', NULL);
INSERT INTO RegulatorySubmission VALUES (5003, ' FDA Medical Device Listing', 'Device Registration', 'RegulatoryAffairs', 'MedicalDevices', '2023-01-10', '2023-02-01', 'Approved', '2023-01-25', 'http://hospital.org/fda_device2023.pdf', 'All devices compliant', 3, NULL, 3, '2023-01-10', '2023-01-12', 1, 'TRK-20230110', 'FDA', '2023-01-25');

-- Disaster recovery planning details for critical hospital services
CREATE TABLE DisasterRecoveryPlan (
    PlanID                 INTEGER PRIMARY KEY,
    PlanName               TEXT,
    EffectiveDate          DATE,
    ReviewDate             DATE,
    OwnerDepartment        TEXT,
    ContactPerson          TEXT,
    ContactPhone           TEXT,
    BackupLocation         TEXT,
    RecoveryTimeObjectiveHours INTEGER,
    RecoveryPointObjectiveHours INTEGER,
    CriticalSystemsCovered TEXT,
    DataRetentionPeriodDays INTEGER,
    TestFrequencyMonths   INTEGER,
    LastTestDate          DATE,
    TestResult            TEXT,
    VersionNumber         INTEGER,
    ApprovedBy            TEXT,
    ApprovalDate          DATE,
    Notes                 TEXT,
    Status                TEXT
);

INSERT INTO DisasterRecoveryPlan VALUES (6001, 'EMR System DR Plan', '2022-01-01', '2023-01-01', 'IT Services', 'John Doe', '555-4444', 'Offsite Data Center', 4, 2, 'EMR, Billing, Lab Interface', 365, 12, '2022-12-15', 'Pass', 3, 'CIO', '2023-01-02', 'Annual test scheduled', 'Active');
INSERT INTO DisasterRecoveryPlan VALUES (6002, 'Radiology PACS DR Plan', '2021-06-15', '2022-06-15', 'Radiology', 'Emily White', '555-5555', 'Cloud Storage Provider', 6, 3, 'PACS Archive, Image Renderer', 730, 6, '2022-05-20', 'Pass', 2, 'CMO', '2022-06-16', 'Quarterly drills', 'Active');
INSERT INTO DisasterRecoveryPlan VALUES (6003, 'Pharmacy System DR Plan', '2020-09-01', '2021-09-01', 'Pharmacy', 'Mark Black', '555-6666', 'Secondary Hospital Site', 8, 4, 'Dispensing System, Inventory', 180, 3, '2021-08-10', 'Fail', 1, 'DirectorPharmacy', '2021-09-02', 'Improvement needed', 'Review');

-- Loans of biomedical equipment to external research partners
CREATE TABLE BiomedicalEquipmentLoan (
    LoanID                 INTEGER PRIMARY KEY,
    EquipmentID            INTEGER,
    BorrowerOrganization   TEXT,
    BorrowerContact        TEXT,
    LoanStartDate          DATE,
    LoanEndDate            DATE,
    ExpectedReturnDate     DATE,
    ActualReturnDate       DATE,
    ConditionOnLoan        TEXT,
    ConditionOnReturn      TEXT,
    LoanPurpose            TEXT,
    Custodian              TEXT,
    InsurancePolicyNumber  TEXT,
    CostCenter             TEXT,
    BillingStatus          TEXT,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Notes                  TEXT,
    RenewalCount           INTEGER,
    LateFeeAccrued        REAL,
    ApprovedBy             TEXT
);

INSERT INTO BiomedicalEquipmentLoan VALUES (7001, 15001, 'University Research Lab', 'DrMartin', '2022-02-01', '2022-08-01', '2022-07-31', NULL, 'Excellent', NULL, 'Neuroimaging Study', 'Alice Green', 'POL-12345', 'RC-10', 'Pending', '2022-02-01', '2022-02-02', 'First-time loan', 0, 0.0, 'DeptHead');
INSERT INTO BiomedicalEquipmentLoan VALUES (7002, 15002, 'City Health Dept', 'MsTaylor', '2021-05-15', '2021-11-15', '2021-11-14', '2021-11-16', 'Good', 'Good', 'Vaccination Campaign', 'Bob Gray', 'POL-67890', 'RC-20', 'Completed', '2021-05-15', '2021-05-16', 'Returned with minor wear', 1, 25.0, 'AdminOfficer');
INSERT INTO BiomedicalEquipmentLoan VALUES (7003, 15003, 'Private Clinical Trial Co', 'MrLee', '2023-01-10', '2023-07-10', '2023-07-09', NULL, 'Fair', NULL, 'Drug Efficacy Trial', 'Carol Blue', 'POL-11223', 'RC-30', 'Pending', '2023-01-10', '2023-01-11', 'Extended loan requested', 0, 0.0, 'ResearchDirector');

-- Vendors providing food services to the hospital
CREATE TABLE FoodServiceVendor (
    VendorID               INTEGER PRIMARY KEY,
    VendorName             TEXT,
    ContractStartDate      DATE,
    ContractEndDate        DATE,
    ContactPerson          TEXT,
    PhoneNumber            TEXT,
    Email                  TEXT,
    ServicesProvided       TEXT,
    MenuTypes              TEXT,
    DeliveryFrequencyDays INTEGER,
    BillingCycle           TEXT,
    PaymentTerms           TEXT,
    ApprovedMenuFlag       INTEGER,
    HealthInspectionScore  INTEGER,
    InsuranceExpiration    DATE,
    CreatedAt              DATE,
    UpdatedAt              DATE,
    Notes                  TEXT,
    Rating                 INTEGER,
    PrimaryCuisine         TEXT,
    ComplianceStatus       TEXT
);

INSERT INTO FoodServiceVendor VALUES (8001, 'FreshMeals Inc', '2022-01-01', '2024-12-31', 'Nina Patel', '555-7777', 'npatel@freshmeals.com', 'Breakfast, Lunch, Dinner', 'Continental, Vegan', 1, 'Monthly', 'Net30', 1, 95, '2023-12-31', '2022-01-01', '2022-01-02', 'Excellent feedback', 5, 'International', 'Compliant');
INSERT INTO FoodServiceVendor VALUES (8002, 'HealthBite Catering', '2021-06-15', '2023-06-14', 'Tom Reed', '555-8888', 'treed@healthbite.com', 'Snack Bars, Salads', 'Healthy, LowCalorie', 2, 'BiMonthly', 'Net45', 1, 92, '2023-06-01', '2021-06-15', '2021-06-16', 'Consistent quality', 4, 'Mediterranean', 'Compliant');
INSERT INTO FoodServiceVendor VALUES (8003, 'Comfort Foods Ltd', '2020-03-01', '2025-02-28', 'Linda Fox', '555-9999', 'lfox@comfortfoods.com', 'Evening Snacks', 'American, Comfort', 1, 'Monthly', 'Net30', 0, 88, '2024-02-28', '2020-03-01', '2020-03-02', 'Pending menu approval', 3, 'American', 'PendingApproval');