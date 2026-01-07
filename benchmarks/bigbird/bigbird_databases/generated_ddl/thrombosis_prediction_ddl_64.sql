-- MedicalResearchCohort: cohort information for research studies
CREATE TABLE MedicalResearchCohort
(
    CohortID                INTEGER PRIMARY KEY,
    StudyName               TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    PrincipalInvestigator   TEXT,
    FundingSource           TEXT,
    NumParticipants         INTEGER,
    InclusionCriteria       TEXT,
    ExclusionCriteria       TEXT,
    DataCollectionMethod    TEXT,
    ConsentObtained         TEXT,
    BiospecimenCollected    TEXT,
    GenomicDataAvailable    TEXT,
    FollowUpDurationMonths  INTEGER,
    PrimaryEndpoint         TEXT,
    SecondaryEndpoint       TEXT,
    Status                  TEXT,
    Description             TEXT,
    CreatedBy               TEXT,
    CreatedOn               DATE
);

INSERT INTO MedicalResearchCohort VALUES (1, 'CardioRiskStudy', '2022-01-15', '2025-12-31', 'DrSmith', 'NIH', 350, 'Age18to65', 'Pregnancy', 'ElectronicSurveys', 'Yes', 'Blood', 'Yes', 24, 'MajorAdverseCardiacEvent', 'BloodPressureControl', 'Active', 'Longitudinal cohort on cardiovascular risk', 'admin', '2022-01-01');
INSERT INTO MedicalResearchCohort VALUES (2, 'DiabetesPreventionTrial', '2021-06-01', '2024-05-30', 'DrLee', 'CDC', 500, 'BMI30orMore', 'Type1Diabetes', 'ClinicVisits', 'Yes', 'Blood', 'No', 12, 'IncidenceOfDiabetes', 'WeightLoss', 'Completed', 'Trial assessing lifestyle intervention', 'researcher', '2021-05-20');
INSERT INTO MedicalResearchCohort VALUES (3, 'AgingCognitionStudy', '2023-03-10', '2028-03-09', 'DrGarcia', 'Private', 200, 'Age65plus', 'NeurologicalDisorder', 'NeuropsychTests', 'Yes', 'Saliva', 'Yes', 36, 'CognitiveDecline', 'DailyFunction', 'Recruiting', 'Study of cognitive changes in older adults', 'coordinator', '2023-02-28');

-- FacilityUtilityConsumption: utility usage records for hospital facilities
CREATE TABLE FacilityUtilityConsumption
(
    RecordID            INTEGER PRIMARY KEY,
    FacilityID          INTEGER,
    UtilityType         TEXT,
    MeasurementDate     DATE,
    ConsumptionAmount   REAL,
    Unit                TEXT,
    Cost                REAL,
    MeterReadingStart   REAL,
    MeterReadingEnd     REAL,
    BillingPeriodStart  DATE,
    BillingPeriodEnd    DATE,
    Supplier            TEXT,
    ContractID          INTEGER,
    PeakDemand          REAL,
    DemandTimestamp     DATE,
    CO2Emissions        REAL,
    Notes               TEXT,
    CreatedBy           TEXT,
    CreatedOn           DATE,
    UpdatedOn           DATE
);

INSERT INTO FacilityUtilityConsumption VALUES (101, 10, 'Electricity', '2023-08-01', 12500.5, 'kWh', 1500.75, 50230, 62730, '2023-08-01', '2023-08-31', 'PowerCo', 3001, 850.2, '2023-08-15', 'Normal consumption', 'ops', '2023-08-02', '2023-08-31');
INSERT INTO FacilityUtilityConsumption VALUES (102, 10, 'Water', '2023-08-01', 4200.0, 'Gallons', 300.25, 21000, 25200, '2023-08-01', '2023-08-31', 'AquaSupply', 4002, 0, '2023-08-01', 12.5, 'No anomalies', 'ops', '2023-08-02', '2023-08-31');
INSERT INTO FacilityUtilityConsumption VALUES (103, 12, 'NaturalGas', '2023-08-01', 7800.3, 'Therms', 950.60, 15800, 23600, '2023-08-01', '2023-08-31', 'GasWorks', 5003, 600.0, '2023-08-22', 18.9, 'Peak on 22nd', 'ops', '2023-08-02', '2023-08-31');

-- StaffCompetencyMatrixDetail: detailed competency records for staff members
CREATE TABLE StaffCompetencyMatrixDetail
(
    MatrixID               INTEGER PRIMARY KEY,
    StaffID                INTEGER,
    Role                   TEXT,
    CompetencyArea         TEXT,
    CompetencyLevel        INTEGER,
    Certification          TEXT,
    CertificationDate      DATE,
    ExpirationDate         DATE,
    LastAssessmentDate    DATE,
    Assessor               TEXT,
    TrainingHours          INTEGER,
    TrainingProvider       TEXT,
    SkillProficiencyScore  REAL,
    NeedsImprovement       TEXT,
    ActionPlan             TEXT,
    ReviewDate             DATE,
    Status                 TEXT,
    Comments               TEXT,
    CreatedBy              TEXT,
    CreatedOn              DATE
);

INSERT INTO StaffCompetencyMatrixDetail VALUES (1001, 2001, 'Nurse', 'IVTherapy', 4, 'IVTherapyCert', '2021-04-10', '2024-04-09', '2023-06-15', 'SupervisorA', 40, 'HealthInstitute', 88.5, 'Documentation', 'Quarterly refresher', '2023-12-01', 'Active', 'Good performance', 'hr', '2023-06-16');
INSERT INTO StaffCompetencyMatrixDetail VALUES (1002, 2002, 'LabTech', 'SpecimenHandling', 5, 'SpecimenCert', '2020-01-20', '2023-01-19', '2023-07-20', 'SupervisorB', 30, 'LabAcademy', 92.0, 'None', 'Maintain certification', '2023-11-15', 'Active', 'Excellent', 'hr', '2023-07-21');
INSERT INTO StaffCompetencyMatrixDetail VALUES (1003, 2003, 'Radiologist', 'MRIInterpretation', 3, 'MRIInterpretCert', '2022-09-05', '2025-09-04', '2023-05-10', 'SupervisorC', 25, 'RadiologyCollege', 81.2, 'Advanced cases', 'Attend advanced MRI workshop', '2023-10-01', 'Active', 'Needs more complex case exposure', 'hr', '2023-05-11');

-- HospitalEnergyTariff: energy tariff contracts for the hospital
CREATE TABLE HospitalEnergyTariff
(
    TariffID            INTEGER PRIMARY KEY,
    EnergySource        TEXT,
    TariffName          TEXT,
    EffectiveFrom       DATE,
    EffectiveTo         DATE,
    RatePerKWh          REAL,
    FixedCharge         REAL,
    PeakRate            REAL,
    OffPeakRate         REAL,
    SeasonalAdjustment  REAL,
    ContractTermMonths  INTEGER,
    Supplier            TEXT,
    ContractNumber      TEXT,
    BillingCycle        TEXT,
    Currency            TEXT,
    TaxRate             REAL,
    Remarks             TEXT,
    CreatedBy           TEXT,
    CreatedOn           DATE,
    UpdatedOn           DATE,
    Status              TEXT
);

INSERT INTO HospitalEnergyTariff VALUES (1, 'Electricity', 'StandardRate', '2023-01-01', '2025-12-31', 0.12, 150.00, 0.20, 0.08, 0.00, 36, 'EnergyCo', 'EC-2023-01', 'Monthly', 'USD', 0.07, 'No seasonal changes', 'procurement', '2022-12-15', '2023-01-01', 'Active');
INSERT INTO HospitalEnergyTariff VALUES (2, 'NaturalGas', 'WinterPeak', '2023-10-01', '2026-09-30', 0.07, 80.00, 0.10, 0.05, 0.02, 36, 'GasSupply', 'GS-2023-10', 'Quarterly', 'USD', 0.07, 'Higher peak in winter', 'procurement', '2023-09-20', '2023-10-01', 'Active');
INSERT INTO HospitalEnergyTariff VALUES (3, 'Electricity', 'GreenEnergy', '2024-01-01', '2027-12-31', 0.15, 200.00, 0.22, 0.10, 0.01, 36, 'RenewablePower', 'RP-2024-01', 'Monthly', 'USD', 0.07, 'Includes renewable surcharge', 'procurement', '2023-12-10', '2024-01-01', 'Planned');

-- SupplyChainAudit: audits performed on suppliers and products
CREATE TABLE SupplyChainAudit
(
    AuditID            INTEGER PRIMARY KEY,
    AuditDate          DATE,
    SupplierID         INTEGER,
    ProductCategory    TEXT,
    AuditType          TEXT,
    Findings           TEXT,
    SeverityLevel      TEXT,
    Recommendations    TEXT,
    Auditor            TEXT,
    AuditScore         INTEGER,
    FollowUpDate       DATE,
    FollowUpStatus     TEXT,
    DocumentReference  TEXT,
    CreatedBy          TEXT,
    CreatedOn          DATE,
    UpdatedOn          DATE,
    Status             TEXT,
    Notes              TEXT,
    DepartmentResponsible TEXT,
    AuditScope         TEXT
);

INSERT INTO SupplyChainAudit VALUES (5001, '2023-07-15', 3001, 'Pharmaceuticals', 'Compliance', 'Labels missing batch numbers', 'High', 'Implement barcode system', 'AuditorX', 65, '2023-08-15', 'Pending', 'DOC-2023-07-15', 'qa', '2023-07-16', '2023-07-20', 'Open', 'First audit of new vendor', 'Pharmacy', 'Full');
INSERT INTO SupplyChainAudit VALUES (5002, '2023-05-22', 3002, 'MedicalDevices', 'Safety', 'No recent safety certificates', 'Medium', 'Request updated certificates', 'AuditorY', 78, '2023-06-22', 'Completed', 'DOC-2023-05-22', 'qa', '2023-05-23', '2023-05-30', 'Closed', 'Follow‑up done', 'BiomedicalEngineering', 'Partial');
INSERT INTO SupplyChainAudit VALUES (5003, '2023-09-03', 3003, 'Consumables', 'Quality', 'Sterility test failures', 'Critical', 'Suspend deliveries until resolved', 'AuditorZ', 50, '2023-10-03', 'Pending', 'DOC-2023-09-03', 'qa', '2023-09-04', '2023-09-10', 'Open', 'Urgent action required', 'InfectionControl', 'Full');

-- CommunityHealthInitiative: programs targeting community health outcomes
CREATE TABLE CommunityHealthInitiative
(
    InitiativeID    INTEGER PRIMARY KEY,
    Name            TEXT,
    LaunchDate      DATE,
    EndDate         DATE,
    TargetPopulation TEXT,
    FundingAmount   REAL,
    PartnerOrganization TEXT,
    LeadCoordinator TEXT,
    Objectives      TEXT,
    Metrics         TEXT,
    Status          TEXT,
    Description     TEXT,
    ContactEmail    TEXT,
    ContactPhone    TEXT,
    Region          TEXT,
    City            TEXT,
    County          TEXT,
    State           TEXT,
    CreatedBy       TEXT,
    CreatedOn       DATE
);

INSERT INTO CommunityHealthInitiative VALUES (9001, 'HeartHealthDays', '2023-03-01', '2023-12-31', 'Adults30to60', 250000, 'LocalHeartFoundation', 'JohnDoe', 'Increase awareness of heart disease', 'Attendees,Screenings', 'Active', 'Monthly events with free screenings', 'johndoe@hospital.org', '5551234567', 'Midwest', 'Springfield', 'Greene', 'IL', 'publicaffairs', '2023-02-15');
INSERT INTO CommunityHealthInitiative VALUES (9002, 'DiabetesPreventionWorkshop', '2022-09-15', '2023-09-14', 'Adults18to45', 150000, 'WellnessPartners', 'JaneSmith', 'Promote lifestyle changes to prevent diabetes', 'Registrations,WeightLoss', 'Completed', 'Series of workshops in community centers', 'janesmith@hospital.org', '5559876543', 'Southwest', 'Austin', 'Travis', 'TX', 'publicaffairs', '2022-08-20');
INSERT INTO CommunityHealthInitiative VALUES (9003, 'SeniorMobilityProgram', '2023-01-10', '2024-01-09', 'Seniors65plus', 180000, 'AgingWellOrg', 'MikeBrown', 'Improve mobility and reduce falls', 'ParticipationRate, FallIncidents', 'Active', 'Weekly exercise classes and home assessments', 'mikebrown@hospital.org', '5553217890', 'Northeast', 'Boston', 'Suffolk', 'MA', 'publicaffairs', '2022-12-01');

-- RadiologyEquipmentInventory: inventory of radiology devices
CREATE TABLE RadiologyEquipmentInventory
(
    EquipmentID          INTEGER PRIMARY KEY,
    FacilityID           INTEGER,
    EquipmentType        TEXT,
    Manufacturer         TEXT,
    Model                TEXT,
    SerialNumber         TEXT,
    PurchaseDate         DATE,
    WarrantyEndDate      DATE,
    LastMaintenanceDate  DATE,
    Status               TEXT,
    LocationRoom         TEXT,
    CalibrationDate      DATE,
    CalibrationDueDate   DATE,
    SoftwareVersion      TEXT,
    PowerRequirement     TEXT,
    Cost                 REAL,
    DepreciationPeriodMonths INTEGER,
    AssignedTechnician   TEXT,
    Notes                TEXT,
    CreatedOn            DATE
);

INSERT INTO RadiologyEquipmentInventory VALUES (20001, 10, 'MRI', 'Siemens', 'MagnetomAera', 'SN12345', '2020-05-20', '2025-05-20', '2023-06-10', 'Operational', 'Room101', '2023-06-01', '2024-06-01', 'v5.2', '380V', 3500000, 120, 'TechA', 'Routine check completed', '2023-06-15');
INSERT INTO RadiologyEquipmentInventory VALUES (20002, 12, 'CT', 'GE', 'RevolutionCT', 'SN67890', '2019-03-15', '2024-03-15', '2023-05-22', 'Operational', 'Room202', '2023-05-15', '2024-05-15', 'v3.9', '240V', 2500000, 120, 'TechB', 'No issues', '2023-05-25');
INSERT INTO RadiologyEquipmentInventory VALUES (20003, 14, 'XRay', 'Philips', 'DigitalDiagnost', 'SN54321', '2021-11-01', '2026-11-01', '2023-07-01', 'Operational', 'Room303', '2023-06-20', '2024-06-20', 'v2.1', '120V', 800000, 96, 'TechC', 'Calibration due soon', '2023-07-05');

-- BiomedicalWasteDisposalLog: tracking of biomedical waste disposal activities
CREATE TABLE BiomedicalWasteDisposalLog
(
    LogID                INTEGER PRIMARY KEY,
    WasteID              INTEGER,
    WasteType            TEXT,
    CollectionDate       DATE,
    CollectedBy          TEXT,
    QuantityKg           REAL,
    StorageLocation      TEXT,
    DisposalMethod       TEXT,
    DisposalDate         DATE,
    DisposalCompany      TEXT,
    CertificateNumber    TEXT,
    HazardLevel          TEXT,
    Comments             TEXT,
    CreatedBy            TEXT,
    CreatedOn            DATE,
    UpdatedOn            DATE,
    Status               TEXT,
    InspectionDate       DATE,
    Inspector            TEXT,
    FollowUpAction       TEXT
);

INSERT INTO BiomedicalWasteDisposalLog VALUES (3001, 9001, 'Sharps', '2023-07-01', 'NurseA', 45.2, 'StorageRoom1', 'Incineration', '2023-07-02', 'SafeIncinerators', 'CERT-20230702', 'High', 'All gloves used', 'enviro', '2023-07-01', '2023-07-05', 'Completed', '2023-07-06', 'InspectorA', 'None');
INSERT INTO BiomedicalWasteDisposalLog VALUES (3002, 9002, 'Pathology', '2023-07-15', 'TechB', 30.0, 'StorageRoom2', 'ChemicalDecontamination', '2023-07-16', 'BioClean', 'CERT-20230716', 'Medium', 'No spill', 'enviro', '2023-07-15', '2023-07-20', 'Completed', '2023-07-21', 'InspectorB', 'None');
INSERT INTO BiomedicalWasteDisposalLog VALUES (3003, 9003, 'Pharmaceutical', '2023-08-05', 'PharmTech', 12.5, 'StorageRoom3', 'SecureLandfill', '2023-08-07', 'EcoDispose', 'CERT-20230807', 'Low', 'Handled per protocol', 'enviro', '2023-08-05', '2023-08-10', 'Pending', '2023-08-12', 'InspectorC', 'Verify paperwork');

-- HospitalConstructionProjectDetail: details of construction projects within the hospital
CREATE TABLE HospitalConstructionProjectDetail
(
    ProjectID          INTEGER PRIMARY KEY,
    Phase              TEXT,
    StartDate          DATE,
    EndDate            DATE,
    Contractor         TEXT,
    Budget             REAL,
    Expenditure        REAL,
    ProjectManager     TEXT,
    SiteLocation       TEXT,
    Description        TEXT,
    Status             TEXT,
    RiskLevel          TEXT,
    PermitsObtained    TEXT,
    PermitNumber       TEXT,
    InspectionDate     DATE,
    Inspector          TEXT,
    Notes              TEXT,
    CreatedBy          TEXT,
    CreatedOn          DATE,
    UpdatedOn          DATE
);

INSERT INTO HospitalConstructionProjectDetail VALUES (4001, 'Design', '2023-01-15', '2023-06-30', 'BuildCo', 2000000, 1500000, 'AliceM', 'EastWing', 'New ICU wing', 'InProgress', 'Medium', 'Yes', 'PERM-001', '2023-02-10', 'InspectorX', 'On schedule', 'facilities', '2023-01-10', '2023-06-01');
INSERT INTO HospitalConstructionProjectDetail VALUES (4002, 'Construction', '2023-07-01', '2024-12-31', 'ConstructIt', 5000000, 1200000, 'BobL', 'NorthWing', 'Expansion of emergency department', 'Planned', 'High', 'No', NULL, NULL, NULL, 'Awaiting permits', 'facilities', '2023-06-15', NULL);
INSERT INTO HospitalConstructionProjectDetail VALUES (4003, 'Renovation', '2022-09-01', '2023-03-31', 'Renova', 800000, 800000, 'CarolS', 'WestWing', 'Modernize patient rooms', 'Completed', 'Low', 'Yes', 'PERM-045', '2022-10-05', 'InspectorY', 'Finished ahead of schedule', 'facilities', '2022-08-20', '2023-04-01');

-- MedicalDeviceLifecycleLog: lifecycle events for medical devices
CREATE TABLE MedicalDeviceLifecycleLog
(
    DeviceID               INTEGER PRIMARY KEY,
    SerialNumber           TEXT,
    Manufacturer           TEXT,
    Model                  TEXT,
    PurchaseDate           DATE,
    InstallationDate       DATE,
    WarrantyExpiration     DATE,
    MaintenanceFrequencyMonths INTEGER,
    LastMaintenanceDate    DATE,
    NextMaintenanceDue     DATE,
    CurrentStatus          TEXT,
    AssignedDepartment     TEXT,
    AssetTag               TEXT,
    LocationRoom           TEXT,
    DecommissionDate       DATE,
    ReasonForDecommission  TEXT,
    DisposalMethod         TEXT,
    Cost                   REAL,
    CreatedBy              TEXT,
    CreatedOn              DATE
);

INSERT INTO MedicalDeviceLifecycleLog VALUES (50001, 'MD-1001', 'Philips', 'IntelliVue', '2020-02-10', '2020-03-01', '2025-02-10', 12, '2023-02-01', '2024-02-01', 'Operational', 'ICU', 'AT-5001', 'RoomICU12', NULL, NULL, NULL, 75000, 'bioeng', '2020-02-10');
INSERT INTO MedicalDeviceLifecycleLog VALUES (50002, 'MD-1002', 'GE', 'Carescape', '2019-07-15', '2019-08-01', '2024-07-15', 12, '2022-08-01', '2023-08-01', 'Decommissioned', 'ER', 'AT-5002', 'RoomER05', '2023-05-20', 'Obsolete', 'Recycling', 62000, 'bioeng', '2019-07-15');
INSERT INTO MedicalDeviceLifecycleLog VALUES (50003, 'MD-1003', 'Siemens', 'MAGNETOM', '2021-11-05', '2021-11-20', '2026-11-05', 6, '2023-05-15', '2023-11-15', 'Operational', 'Radiology', 'AT-5003', 'RoomRAD02', NULL, NULL, NULL, 1200000, 'bioeng', '2021-11-05');