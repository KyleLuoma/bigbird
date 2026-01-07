-- Medical Research Project information
CREATE TABLE MedicalResearchProject (
    ProjectID INTEGER PRIMARY KEY,
    Title TEXT,
    Sponsor TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAmount REAL,
    Phase TEXT,
    Status TEXT,
    LeadInvestigator TEXT,
    Department TEXT,
    StudyType TEXT,
    RecruitmentTarget INTEGER,
    EnrolledCount INTEGER,
    IRBApprovalDate DATE,
    DataSharingPlan TEXT,
    PrimaryOutcome TEXT,
    SecondaryOutcome TEXT,
    BudgetCode TEXT,
    ContactEmail TEXT,
    ContactPhone TEXT
);

INSERT INTO MedicalResearchProject VALUES (1, 'CardioRisk Study', 'HeartTrust', '2022-01-15', '2025-01-14', 1250000.00, 'Phase II', 'Active', 'Dr Smith', 'Cardiology', 'Observational', 500, 120, '2022-01-01', 'Open', 'MACE reduction', 'Blood pressure control', 'HR-2022-01', 'smith@hospital.org', '5551234567');
INSERT INTO MedicalResearchProject VALUES (2, 'Diabetes Nutrition Trial', 'NutriPharma', '2021-06-01', '2024-05-31', 800000.00, 'Phase III', 'Completed', 'Dr Lee', 'Endocrinology', 'Interventional', 300, 300, '2021-05-20', 'Restricted', 'HbA1c improvement', 'Weight loss', 'DN-2021-06', 'lee@hospital.org', '5559876543');
INSERT INTO MedicalResearchProject VALUES (3, 'Pediatric asthma cohort', 'KidsHealth', '2023-03-10', '2026-03-09', 950000.00, 'Phase I', 'Recruiting', 'Dr Patel', 'Pulmonology', 'Cohort', 200, 45, '2023-02-28', 'Open', 'Exacerbation frequency', 'Quality of life', 'PA-2023-03', 'patel@hospital.org', '5552468101');

-- Pharmacy Distribution Center details
CREATE TABLE PharmacyDistributionCenter (
    CenterID INTEGER PRIMARY KEY,
    CenterName TEXT,
    Region TEXT,
    AddressLine1 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    PhoneNumber TEXT,
    Email TEXT,
    OperatingHours TEXT,
    ManagerName TEXT,
    CapacityUnits INTEGER,
    RefrigeratedUnits INTEGER,
    ClimateControl TEXT,
    SecurityLevel TEXT,
    EstablishedDate DATE,
    LastInspectionDate DATE,
    InspectionStatus TEXT,
    LogisticsPartner TEXT,
    MaxDailyDispatch INTEGER
);

INSERT INTO PharmacyDistributionCenter VALUES (10, 'North Hub', 'Northwest', '1234 Pharma Rd', 'Springfield', 'IL', '62704', '5551112222', 'northhub@pharmacy.com', '08:00-20:00', 'Karen Mills', 15000, 3000, 'HVAC', 'Level 3', '2015-09-01', '2023-11-15', 'Pass', 'LogiTrans', 800);
INSERT INTO PharmacyDistributionCenter VALUES (11, 'East Depot', 'Southeast', '5678 Med Ave', 'Riverdale', 'GA', '30301', '5553334444', 'eastdepot@pharmacy.com', '07:00-19:00', 'Luis Gomez', 12000, 2500, 'Controlled', 'Level 2', '2017-03-12', '2024-01-20', 'Pass', 'FastShip', 650);
INSERT INTO PharmacyDistributionCenter VALUES (12, 'West Central', 'Midwest', '9012 Rx Blvd', 'Centerville', 'OH', '45459', '5555556666', 'westcentral@pharmacy.com', '06:00-18:00', 'Mona Patel', 18000, 4000, 'HVAC', 'Level 4', '2018-06-30', '2023-09-05', 'Conditional', 'ShipQuick', 900);

-- Clinical Quality Metric tracking
CREATE TABLE ClinicalQualityMetric (
    MetricID INTEGER PRIMARY KEY,
    MetricName TEXT,
    Description TEXT,
    Category TEXT,
    TargetValue REAL,
    CurrentValue REAL,
    MeasurementUnit TEXT,
    DataSource TEXT,
    Frequency TEXT,
    LastMeasured DATE,
    ResponsibleDept TEXT,
    Owner TEXT,
    Status TEXT,
    Trend TEXT,
    ThresholdLow REAL,
    ThresholdHigh REAL,
    ActionPlan TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Notes TEXT
);

INSERT INTO ClinicalQualityMetric VALUES (101, '30-Day Readmission Rate', 'Percentage of patients readmitted within 30 days', 'Outcome', 12.0, 14.5, 'percent', 'EHR', 'Monthly', '2023-12-01', 'Quality', 'Dr Carter', 'Warning', 'Upward', 8.0, 12.0, 'Implement discharge coaching', '2020-05-15', '2023-12-02', 'Needs monitoring');
INSERT INTO ClinicalQualityMetric VALUES (102, 'Average LOS', 'Average length of stay in days', 'Process', 4.0, 3.8, 'days', 'Admission System', 'Quarterly', '2023-09-30', 'Operations', 'Ms Lee', 'On Target', 'Stable', 3.5, 4.5, 'Maintain current protocols', '2019-11-01', '2023-10-01', '');
INSERT INTO ClinicalQualityMetric VALUES (103, 'Hand Hygiene Compliance', 'Compliance rate of hand hygiene audits', 'Safety', 95.0, 92.3, 'percent', 'Audit Tool', 'Monthly', '2023-11-28', 'Infection Control', 'Nurse Allen', 'Alert', 'Downward', 90.0, 95.0, 'Increase training sessions', '2021-01-20', '2023-11-29', 'Observed dip in ICU');

-- Equipment Vendor registry
CREATE TABLE EquipmentVendor (
    VendorID INTEGER PRIMARY KEY,
    VendorName TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    VendorRating INTEGER,
    ContractStart DATE,
    ContractEnd DATE,
    ServiceLevel TEXT,
    ProductCategory TEXT,
    WarrantyPeriodMonths INTEGER,
    PaymentTerms TEXT,
    LeadTimeDays INTEGER,
    InsuranceProvider TEXT,
    InsurancePolicyNumber TEXT,
    Notes TEXT
);

INSERT INTO EquipmentVendor VALUES (201, 'MediTech Supplies', 'Alan Reed', '5557778888', 'alan.reed@meditech.com', '2500 Supply Ln', 'Dallas', 'TX', '75201', 4, '2022-02-01', '2027-01-31', 'Gold', 'Imaging', 24, 'Net30', 45, 'SecureInsure', 'ST123456', '');
INSERT INTO EquipmentVendor VALUES (202, 'HealthEquip Co', 'Betty Wu', '5559990000', 'betty.wu@healthequip.com', '8000 Medical Plaza', 'Portland', 'OR', '97035', 5, '2021-07-15', '2026-07-14', 'Platinum', 'Surgical', 36, 'Net45', 30, 'AlliedRisk', 'HE789012', 'Preferred vendor');
INSERT INTO EquipmentVendor VALUES (203, 'BioLab Instruments', 'Carlos Mendes', '5552223333', 'carlos.mendes@biolab.com', '400 Bio Rd', 'Boston', 'MA', '02118', 3, '2023-01-10', '2028-01-09', 'Silver', 'Laboratory', 12, 'Net60', 60, 'ProtectSure', 'BL345678', 'Limited warranty');

-- Hospital Shift Pattern definitions
CREATE TABLE HospitalShiftPattern (
    PatternID INTEGER PRIMARY KEY,
    PatternName TEXT,
    ShiftStart TEXT,
    ShiftEnd TEXT,
    BreakStart TEXT,
    BreakEnd TEXT,
    TotalHours REAL,
    ApplicableDept TEXT,
    DaysOfWeek TEXT,
    RotationCycle INTEGER,
    OnCall INTEGER,
    WeekendAllowed INTEGER,
    NightShift INTEGER,
    Description TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Active INTEGER,
    Comments TEXT
);

INSERT INTO HospitalShiftPattern VALUES (301, 'Day Shift', '07:00', '15:00', '11:00', '11:30', 8.0, 'All', 'Mon,Tue,Wed,Thu,Fri', 1, 0, 0, 0, 'Standard daytime schedule', 'admin', '2020-01-01', 'admin', '2023-01-01', 1, '');
INSERT INTO HospitalShiftPattern VALUES (302, 'Evening Shift', '15:00', '23:00', '19:00', '19:30', 8.0, 'All', 'Mon,Tue,Wed,Thu,Fri', 1, 0, 1, 1, 'Evening coverage', 'admin', '2020-01-01', 'admin', '2023-01-01', 1, '');
INSERT INTO HospitalShiftPattern VALUES (303, 'Night Float', '23:00', '07:00', '03:00', '03:30', 8.0, 'ICU,ER', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 2, 1, 1, 1, 'Night float for critical units', 'admin', '2020-01-01', 'admin', '2023-01-01', 1, '');

-- Patient Support Group registry
CREATE TABLE PatientSupportGroup (
    GroupID INTEGER PRIMARY KEY,
    GroupName TEXT,
    FocusArea TEXT,
    FacilitatorName TEXT,
    MeetingDay TEXT,
    MeetingTime TEXT,
    Location TEXT,
    Capacity INTEGER,
    CurrentMembers INTEGER,
    EligibilityCriteria TEXT,
    ReferralSource TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    Active INTEGER,
    ResourcesProvided TEXT,
    Frequency TEXT,
    Notes TEXT
);

INSERT INTO PatientSupportGroup VALUES (401, 'Heart Health Circle', 'Cardiology', 'Dr Allen', 'Wednesday', '18:00', 'Room 215', 20, 12, 'Adults with cardiac diagnosis', 'Physician Referral', '5551112222', 'heartgroup@hospital.org', 'Support for heart disease patients', '2021-04-01', NULL, 1, 'Brochures, Exercise plans', 'Weekly', '');
INSERT INTO PatientSupportGroup VALUES (402, 'Diabetes Education Club', 'Endocrinology', 'Nurse Patel', 'Monday', '10:00', 'Room 101', 25, 20, 'Type 2 Diabetes', 'Self Referral', '5553334444', 'diabetesclub@hospital.org', 'Education on diabetes management', '2020-09-15', NULL, 1, 'Meal plans, Glucose monitors', 'Weekly', '');
INSERT INTO PatientSupportGroup VALUES (403, 'Cancer Survivors Forum', 'Oncology', 'Ms Rivera', 'Friday', '14:00', 'Room 320', 30, 18, 'Cancer survivors post-treatment', 'Oncologist Referral', '5555556666', 'cancersurvivors@hospital.org', 'Peer support for survivors', '2019-01-20', NULL, 1, 'Counseling, Guest speakers', 'Monthly', '');

-- Radiology Quality Control records
CREATE TABLE RadiologyQualityControl (
    QCID INTEGER PRIMARY KEY,
    Modality TEXT,
    DeviceID TEXT,
    TestDate DATE,
    TechnicianName TEXT,
    PhantomUsed TEXT,
    ImageQualityScore REAL,
    NoiseLevel REAL,
    ContrastLevel REAL,
    SpatialResolution REAL,
    LowContrastDetectability REAL,
    UniformityScore REAL,
    ArtifactsObserved TEXT,
    PassFail TEXT,
    Comments TEXT,
    ReviewedBy TEXT,
    ReviewDate DATE,
    ActionTaken TEXT,
    FollowUpDate DATE,
    DocumentationLink TEXT
);

INSERT INTO RadiologyQualityControl VALUES (501, 'CT', 'CT-001', '2023-10-05', 'Emily Chen', 'CT Phantom A', 92.5, 0.12, 1.45, 0.8, 0.9, 95.0, 'None', 'Pass', 'Excellent', 'Dr Novak', '2023-10-06', 'No action', '2024-10-06', 'http://docs/hospital/ct001/qc20231005');
INSERT INTO RadiologyQualityControl VALUES (502, 'MRI', 'MR-210', '2023-09-20', 'James Lee', 'MRI Phantom B', 88.0, 0.15, 1.30, 0.75, 0.85, 92.0, 'Minor ringing', 'Pass', 'Acceptable', 'Dr Patel', '2023-09-21', 'Calibration check', '2024-09-21', 'http://docs/hospital/mr210/qc20230920');
INSERT INTO RadiologyQualityControl VALUES (503, 'XRay', 'XR-045', '2023-11-12', 'Sarah Gomez', 'XRay Phantom C', 79.5, 0.20, 1.10, 0.65, 0.70, 85.0, 'Horizontal streaks', 'Fail', 'Retake required', 'Dr Kim', '2023-11-13', 'Service request', '2023-12-01', 'http://docs/hospital/xr045/qc20231112');

-- Laboratory Accreditation records
CREATE TABLE LaboratoryAccreditation (
    AccrID INTEGER PRIMARY KEY,
    LabName TEXT,
    AccreditingBody TEXT,
    AccreditationLevel TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    ScopeOfAccreditation TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Address TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    AuditFrequencyMonths INTEGER,
    LastAuditDate DATE,
    AuditResult TEXT,
    NextAuditPlanned DATE,
    Remarks TEXT,
    Status TEXT,
    DocumentReference TEXT
);

INSERT INTO LaboratoryAccreditation VALUES (601, 'Central Clinical Lab', 'CAP', 'Level I', '2022-04-01', '2025-03-31', 'Hematology, Chemistry', 'Laura White', '5557778888', 'laura.white@cclab.org', '123 Lab St', 'Chicago', 'IL', '60601', 12, '2023-03-15', 'Satisfactory', '2024-03-15', '', 'Active', 'CAP20220315');
INSERT INTO LaboratoryAccreditation VALUES (602, 'Pathology Services', 'CLIA', 'Certificate of Compliance', '2021-11-01', '2024-10-31', 'Cytology, Histology', 'Mark Davis', '5559990000', 'mark.davis@pathsvc.org', '456 Path Rd', 'Atlanta', 'GA', '30303', 12, '2022-10-20', 'Conditional', '2023-10-20', 'Pending corrective actions', 'Active', 'CLIA20221020');
INSERT INTO LaboratoryAccreditation VALUES (603, 'Microbiology Unit', 'ISO 15189', 'Accredited', '2020-06-15', '2023-06-14', 'Microbial Identification', 'Nina Patel', '5552223333', 'nina.patel@microunit.org', '789 Micro Ave', 'San Diego', 'CA', '92101', 18, '2022-05-10', 'Satisfactory', '2024-05-10', '', 'Active', 'ISO20220510');

-- Emergency Response Team Member directory
CREATE TABLE EmergencyResponseTeamMember (
    MemberID INTEGER PRIMARY KEY,
    FullName TEXT,
    Role TEXT,
    Certification TEXT,
    CertificationExpiry DATE,
    ShiftPatternID INTEGER,
    PhoneNumber TEXT,
    Email TEXT,
    Department TEXT,
    YearsOfExperience INTEGER,
    Availability TEXT,
    AssignedStation TEXT,
    TrainingCompleted DATE,
    LastDrillDate DATE,
    Active INTEGER,
    SupervisorName TEXT,
    Notes TEXT,
    CreatedDate DATE,
    UpdatedDate DATE,
    Status TEXT
);

INSERT INTO EmergencyResponseTeamMember VALUES (701, 'Tom Baker', 'Paramedic', 'EMT-B', '2025-08-30', 301, '5551112222', 'tbaker@hospital.org', 'EMS', 7, 'Full', 'Station A', '2022-01-15', '2023-10-01', 1, 'Susan Clark', '', '2022-01-10', '2023-10-02', 'Active');
INSERT INTO EmergencyResponseTeamMember VALUES (702, 'Laura Chen', 'Nurse Coordinator', 'RN', '2024-05-12', 302, '5553334444', 'lchen@hospital.org', 'ER', 12, 'Full', 'Station B', '2021-06-20', '2023-09-15', 1, 'Michael Ross', '', '2021-06-15', '2023-09-16', 'Active');
INSERT INTO EmergencyResponseTeamMember VALUES (703, 'David Ortiz', 'Firefighter', 'Firefighter I', '2026-11-05', 303, '5555556666', 'dortiz@hospital.org', 'Fire Dept', 15, 'On Call', 'Station C', '2020-03-05', '2023-08-20', 1, 'Karen Lee', '', '2020-02-28', '2023-08-21', 'Active');

-- Health Information Portal catalog
CREATE TABLE HealthInformationPortal (
    PortalID INTEGER PRIMARY KEY,
    PortalName TEXT,
    URL TEXT,
    LaunchDate DATE,
    Provider TEXT,
    SecurityProtocol TEXT,
    UserCount INTEGER,
    AverageSessionDuration REAL,
    DataRetentionPolicy TEXT,
    ComplianceStandards TEXT,
    SupportContact TEXT,
    SupportEmail TEXT,
    MaintenanceWindow TEXT,
    Version TEXT,
    LastUpdate DATE,
    AccessLevel TEXT,
    AuthenticationMethod TEXT,
    DocumentationLink TEXT,
    Status TEXT,
    Notes TEXT
);

INSERT INTO HealthInformationPortal VALUES (801, 'PatientPortal', 'https://portal.hospital.org', '2020-07-01', 'Hospital IT', 'TLS1.3', 45230, 12.5, '7 years', 'HIPAA', 'IT Helpdesk', 'ithelp@hospital.org', 'Sun 02:00-04:00', 'v3.2.1', '2023-11-01', 'Patient', 'OAuth2', 'https://docs.hospital.org/portal', 'Active', '');
INSERT INTO HealthInformationPortal VALUES (802, 'ProviderDashboard', 'https://providers.hospital.org', '2019-03-15', 'Hospital Admin', 'TLS1.2', 1280, 18.2, '5 years', 'HIPAA, NIST', 'Admin Support', 'adminsupport@hospital.org', 'Sat 01:00-03:00', 'v5.0', '2023-10-20', 'Provider', 'SAML', 'https://docs.hospital.org/provider', 'Active', '');
INSERT INTO HealthInformationPortal VALUES (803, 'ResearchDataHub', 'https://research.hospital.org', '2021-01-20', 'Research Dept', 'TLS1.3', 340, 22.0, '10 years', 'IRB, GDPR', 'Research IT', 'researchit@hospital.org', 'Fri 03:00-05:00', 'v2.5', '2023-09-15', 'Researcher', 'API Key', 'https://docs.hospital.org/research', 'Active', '');