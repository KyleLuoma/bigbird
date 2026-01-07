-- Equipment procurement request table
CREATE TABLE EquipmentProcurementRequest
(
    RequestID            INTEGER PRIMARY KEY,
    RequestDate          DATE,
    Department           TEXT,
    EquipmentCategory    TEXT,
    EquipmentModel       TEXT,
    Quantity             INTEGER,
    UnitCost             REAL,
    TotalCost            REAL,
    Justification        TEXT,
    RequestedBy          TEXT,
    ApprovalStatus       TEXT,
    ApprovedBy           TEXT,
    ApprovalDate         DATE,
    VendorCandidate      TEXT,
    EstimatedDelivery    DATE,
    FundingSource        TEXT,
    ProjectCode          TEXT,
    PriorityLevel        TEXT,
    LifecyclePhase       TEXT,
    MaintenancePlan      TEXT,
    WarrantyPeriod       INTEGER,
    Comments             TEXT
);

INSERT INTO EquipmentProcurementRequest VALUES (1, '2025-01-10', 'Radiology', 'Imaging', 'XRay2000', 2, 15000.00, 30000.00, 'Upgrade older units', 'DrSmith', 'Pending', NULL, NULL, 'MediTech', '2025-03-01', 'Capital', 'PRJ1001', 'High', 'Acquisition', 'AnnualService', 24, 'Urgent need');
INSERT INTO EquipmentProcurementRequest VALUES (2, '2025-02-05', 'Cardiology', 'Monitoring', 'ECGPro', 5, 5000.00, 25000.00, 'Expand bedside monitoring', 'NurseLee', 'Approved', 'AdminJones', '2025-02-12', 'HealthSupplyCo', '2025-04-15', 'Operational', 'PRJ2002', 'Medium', 'Expansion', 'BiannualCheck', 12, 'Standard order');
INSERT INTO EquipmentProcurementRequest VALUES (3, '2025-03-15', 'Laboratory', 'Analyzers', 'ChemAutoX', 1, 80000.00, 80000.00, 'New chemistry analyzer', 'LabMgr', 'Rejected', NULL, NULL, 'LabEquip', '2025-06-01', 'ResearchGrant', 'PRJ3003', 'Low', 'Research', 'WarrantyPlus', 36, 'Budget constraints');

-- Clinical guideline adherence log
CREATE TABLE ClinicalGuidelineAdherenceLog
(
    LogID               INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    GuidelineID         INTEGER,
    EncounterDate       DATE,
    AdherenceScore      INTEGER,
    Deviations          TEXT,
    ClinicianID         INTEGER,
    Department          TEXT,
    Notes               TEXT,
    ReviewStatus        TEXT,
    ReviewerID          INTEGER,
    ReviewDate          DATE,
    ActionPlan          TEXT,
    FollowUpDate        DATE,
    RiskLevel           TEXT,
    MedicationCompliance INTEGER,
    ProcedureCompliance INTEGER,
    LifestyleCompliance INTEGER,
    EducationProvided   TEXT,
    ConsentObtained     TEXT,
    DocumentationURL    TEXT,
    Outcome             TEXT
);

INSERT INTO ClinicalGuidelineAdherenceLog VALUES (101, 1001, 10, '2025-01-20', 85, 'Missed aspirin dose', 201, 'Cardiology', 'Patient educated on dosing', 'Pending', NULL, NULL, 'Reinforce counseling', '2025-02-01', 'Medium', 1, 1, 0, 'Printed brochure', 'Yes', 'http://example.com/doc101', 'Improving');
INSERT INTO ClinicalGuidelineAdherenceLog VALUES (102, 1002, 12, '2025-02-15', 92, 'No deviations', 202, 'Endocrinology', 'All targets met', 'Approved', 301, '2025-02-18', 'Continue current plan', '2025-03-15', 'Low', 1, 1, 1, 'Online module', 'Yes', 'http://example.com/doc102', 'Stable');
INSERT INTO ClinicalGuidelineAdherenceLog VALUES (103, 1003, 8, '2025-03-05', 70, 'Skipped exercise', 203, 'Pulmonology', 'Discussed barriers', 'Pending', NULL, NULL, 'Schedule physiotherapy', '2025-03-20', 'High', 1, 0, 0, 'Video guide', 'No', 'http://example.com/doc103', 'At risk');

-- Campus energy usage record
CREATE TABLE CampusEnergyUsageRecord
(
    RecordID            INTEGER PRIMARY KEY,
    BuildingID          TEXT,
    Floor               INTEGER,
    RecordDate          DATE,
    ElectricityKWh      REAL,
    GasTherms           REAL,
    WaterGallons        REAL,
    SolarGenerationKWh  REAL,
    PeakDemandKW        REAL,
    HVACRuntimeHours    REAL,
    LightingHours       REAL,
    OccupancyCount      INTEGER,
    TemperatureC        REAL,
    HumidityPercent     REAL,
    CO2ppm              INTEGER,
    MaintenanceFlag     TEXT,
    EnergyCostUSD       REAL,
    CarbonEmissionKg    REAL,
    RenewablePercentage REAL,
    AuditReviewer       TEXT,
    Comments            TEXT,
    DataSource          TEXT
);

INSERT INTO CampusEnergyUsageRecord VALUES (5001, 'B001', 2, '2025-01-31', 1250.5, 300.0, 20000.0, 150.0, 85.0, 120.0, 350.0, 80, 22.5, 45.0, 600, 'None', 25000.00, 5000.0, 12.0, 'EnergyMgr', 'Normal usage', 'MeterRead');
INSERT INTO CampusEnergyUsageRecord VALUES (5002, 'B003', 1, '2025-01-31', 980.3, 250.0, 18000.0, 200.0, 78.0, 110.0, 300.0, 65, 21.0, 48.0, 550, 'Pending', 20000.00, 4200.0, 15.0, 'OpsLead', 'Higher solar', 'BMS');
INSERT INTO CampusEnergyUsageRecord VALUES (5003, 'B002', 3, '2025-01-31', 1320.7, 320.0, 21000.0, 180.0, 90.0, 130.0, 380.0, 90, 23.0, 42.0, 620, 'Completed', 27000.00, 5400.0, 14.0, 'FacilitiesDir', 'Peak demand noted', 'Manual');

-- Pharmacy supplier performance
CREATE TABLE PharmacySupplierPerformance
(
    SupplierPerfID      INTEGER PRIMARY KEY,
    SupplierID          TEXT,
    EvaluationPeriod    TEXT,
    OnTimeDeliveryPct   REAL,
    FillRatePct         REAL,
    PriceVariancePct    REAL,
    QualityScore        INTEGER,
    ComplaintCount      INTEGER,
    ContractExpiration  DATE,
    LastAuditDate       DATE,
    LeadTimeDays        INTEGER,
    StockoutIncidents   INTEGER,
    ReturnRatePct       REAL,
    ComplianceScore     INTEGER,
    CommunicationRating INTEGER,
    InnovationScore     INTEGER,
    SustainabilityScore INTEGER,
    PaymentTerms        TEXT,
    DiscountRatePct     REAL,
    AuditedBy           TEXT,
    Remarks             TEXT,
    OverallRating       REAL
);

INSERT INTO PharmacySupplierPerformance VALUES (9001, 'SUP001', '2024Q4', 96.5, 98.0, 2.1, 88, 1, '2026-12-31', '2025-02-10', 5, 0, 1.2, 90, 85, 70, 80, '30days', 4.5, 'QualityTeam', 'Stable performance', 89.0);
INSERT INTO PharmacySupplierPerformance VALUES (9002, 'SUP002', '2024Q4', 89.0, 92.5, 3.8, 75, 4, '2025-06-30', '2025-01-20', 7, 2, 2.5, 78, 80, 65, 70, '45days', 3.0, 'AuditDept', 'Needs improvement in delivery', 72.3);
INSERT INTO PharmacySupplierPerformance VALUES (9003, 'SUP003', '2024Q4', 98.2, 99.5, 1.0, 95, 0, '2027-03-31', '2025-03-05', 4, 0, 0.8, 92, 90, 85, 88, 'Net30', 5.0, 'ComplianceOffice', 'Excellent partner', 94.7);

-- Research grant award
CREATE TABLE ResearchGrantAward
(
    GrantAwardID        INTEGER PRIMARY KEY,
    GrantName           TEXT,
    FundingAgency       TEXT,
    AwardAmount         REAL,
    StartDate           DATE,
    EndDate             DATE,
    PI_ID               INTEGER,
    CoPI_ID             INTEGER,
    ProjectTitle        TEXT,
    Abstract            TEXT,
    FundingCategory     TEXT,
    FiscalYear          INTEGER,
    BudgetNotes         TEXT,
    ReportingFrequency TEXT,
    AwardStatus         TEXT,
    ReviewScore         INTEGER,
    AwardNumber         TEXT,
    Currency            TEXT,
    ExchangeRate        REAL,
    DisbursementSchedule TEXT,
    ContactPerson       TEXT,
    AllocationMethod    TEXT
);

INSERT INTO ResearchGrantAward VALUES (20001, 'Genomics Initiative', 'National Science Foundation', 750000.00, '2025-07-01', '2028-06-30', 401, 402, 'Whole Genome Sequencing of Rare Diseases', 'Large scale sequencing project', 'Research', 2025, 'Include equipment costs', 'Annual', 'Active', 95, 'NSF-2025-001', 'USD', 1.0, 'Quarterly', 'DrAllen', 'Direct');
INSERT INTO ResearchGrantAward VALUES (20002, 'AI in Healthcare', 'Health Research Council', 500000.00, '2025-01-15', '2027-12-31', 403, 404, 'Machine Learning for Diagnostic Imaging', 'Develop algorithms for image analysis', 'Technology', 2025, 'Software licensing', 'Semiannual', 'Pending', 88, 'HRC-2025-007', 'USD', 1.0, 'Biannual', 'ProfLee', 'MilestoneBased');
INSERT INTO ResearchGrantAward VALUES (20003, 'Community Wellness', 'Regional Health Authority', 300000.00, '2025-03-01', '2026-02-28', 405, NULL, 'Improving Nutrition in Schools', 'Intervention study on school meals', 'PublicHealth', 2025, 'Include outreach', 'Annual', 'Awarded', 90, 'RHA-2025-012', 'USD', 1.0, 'Annual', 'MsKim', 'Direct');

-- Staff credential audit
CREATE TABLE StaffCredentialAudit
(
    AuditID             INTEGER PRIMARY KEY,
    StaffID             INTEGER,
    CredentialType      TEXT,
    CredentialNumber    TEXT,
    IssuingAuthority    TEXT,
    IssueDate           DATE,
    ExpirationDate      DATE,
    VerificationStatus  TEXT,
    VerifiedBy          TEXT,
    VerificationDate    DATE,
    RenewalReminderDate DATE,
    ComplianceFlag      TEXT,
    AuditNotes          TEXT,
    Department          TEXT,
    Position            TEXT,
    CredentialStatus    TEXT,
    AuditScore          INTEGER,
    FollowUpAction      TEXT,
    DocumentPath        TEXT,
    ReviewerComments    TEXT,
    OverallRating       REAL,
    AuditSource         TEXT
);

INSERT INTO StaffCredentialAudit VALUES (3001, 501, 'Nursing License', 'NL-12345', 'StateBoard', '2018-06-01', '2028-05-31', 'Verified', 'HRAdmin', '2025-02-01', '2028-04-30', 'Compliant', 'All good', 'Nursing', 'Registered Nurse', 'Active', 98, 'None', '/docs/nl-12345.pdf', 'Excellent', 96.5, 'HRSystem');
INSERT INTO StaffCredentialAudit VALUES (3002, 502, 'Medical License', 'ML-98765', 'MedicalBoard', '2015-09-15', '2025-09-14', 'Expired', 'HRAdmin', '2025-03-10', '2025-08-31', 'NonCompliant', 'Renewal pending', 'Medicine', 'Attending Physician', 'Expired', 72, 'Renewal required', '/docs/ml-98765.pdf', 'License expired', 68.0, 'HRSystem');
INSERT INTO StaffCredentialAudit VALUES (3003, 503, 'Pharmacy Certification', 'PC-54321', 'PharmacyBoard', '2020-01-20', '2025-01-19', 'Verified', 'HRAdmin', '2025-01-05', '2024-12-31', 'Compliant', 'Soon to expire', 'Pharmacy', 'Pharmacist', 'Active', 85, 'Prepare renewal', '/docs/pc-54321.pdf', 'Renewal in 6 months', 84.0, 'HRSystem');

-- Environmental incident report
CREATE TABLE EnvironmentalIncidentReport
(
    IncidentID          INTEGER PRIMARY KEY,
    IncidentDate        DATE,
    Location            TEXT,
    IncidentType        TEXT,
    Description         TEXT,
    SeverityLevel       TEXT,
    ReportedBy          TEXT,
    Department          TEXT,
    ImmediateAction     TEXT,
    RootCauseAnalysis  TEXT,
    CorrectiveAction    TEXT,
    FollowUpDate        DATE,
    Status              TEXT,
    ImpactAssessment    TEXT,
    RegulatoryNotified  TEXT,
    NotificationDate    DATE,
    MitigationCostUSD   REAL,
    EnvironmentalImpactScore INTEGER,
    LessonsLearned      TEXT,
    DocumentReference   TEXT,
    ClosureDate         DATE,
    Auditor             TEXT
);

INSERT INTO EnvironmentalIncidentReport VALUES (4001, '2025-01-12', 'Lab A', 'Spill', 'Chemical solvent spill', 'Medium', 'TechnicianJ', 'Laboratory', 'Evacuate area', 'Improper container labeling', 'Replace containers, retrain staff', '2025-01-20', 'Closed', 'Minor soil contamination', 'Yes', '2025-01-13', 1500.00, 4, 'Label checks instituted', 'DOC4001.pdf', '2025-01-21', 'EnvOfficer');
INSERT INTO EnvironmentalIncidentReport VALUES (4002, '2025-02-05', 'Parking Lot', 'Leak', 'Fuel leak from vehicle', 'Low', 'SecurityK', 'Facilities', 'Contain leak', 'Faulty fuel cap', 'Cap replacement program', '2025-02-12', 'Closed', 'No environmental damage', 'No', '2025-02-06', 800.00, 2, 'Regular vehicle inspections', 'DOC4002.pdf', '2025-02-13', 'EnvOfficer');
INSERT INTO EnvironmentalIncidentReport VALUES (4003, '2025-03-18', 'Generator Room', 'Fire', 'Electrical fire', 'High', 'EngineerL', 'Engineering', 'Activate suppression system', 'Overloaded circuit', 'Upgrade wiring, add monitoring', '2025-04-01', 'Open', 'Potential air quality issue', 'Yes', '2025-03-19', 12000.00, 8, 'Implement load management', 'DOC4003.pdf', NULL, 'SeniorEnvMgr');

-- Medical device service contract
CREATE TABLE MedicalDeviceServiceContract
(
    ContractID          INTEGER PRIMARY KEY,
    DeviceID            TEXT,
    Manufacturer        TEXT,
    ModelNumber         TEXT,
    SerialNumber        TEXT,
    ContractStartDate   DATE,
    ContractEndDate     DATE,
    ServiceLevel        TEXT,
    ResponseTimeHours   INTEGER,
    CoveredComponents   TEXT,
    Exclusions          TEXT,
    AnnualFeeUSD        REAL,
    PaymentTerms        TEXT,
    ServiceProvider     TEXT,
    ContactPhone        TEXT,
    ContactEmail        TEXT,
    WarrantyExtension   INTEGER,
    MaintenanceSchedule TEXT,
    PerformanceMetrics  TEXT,
    RenewalOption       TEXT,
    TerminationClause   TEXT,
    Notes               TEXT
);

INSERT INTO MedicalDeviceServiceContract VALUES (6001, 'DEV1001', 'MedTech', 'VentX200', 'SN001122', '2025-01-01', '2028-12-31', 'Gold', 4, 'All moving parts', 'Consumables', 25000.00, 'Annual', 'ServiceCo', '5551234', 'support@serviceco.com', 1, 'Quarterly', 'Uptime>99%', 'AutoRenew', '30dayNotice', 'Includes software updates');
INSERT INTO MedicalDeviceServiceContract VALUES (6002, 'DEV1002', 'BioLab', 'AnalyserPro', 'SN334455', '2025-03-15', '2027-03-14', 'Silver', 8, 'Calibration module', 'Lab reagents', 18000.00, 'SemiAnnual', 'LabServ', '5555678', 'contact@labserv.com', 0, 'Biannual', 'Accuracy>95%', 'RenewOnRequest', 'TerminationFee', 'No hardware upgrades');
INSERT INTO MedicalDeviceServiceContract VALUES (6003, 'DEV1003', 'ImagingCorp', 'MRI-3T', 'SN778899', '2025-06-01', '2030-05-31', 'Platinum', 2, 'Magnet cooling system', 'None', 75000.00, 'Monthly', 'ImagingSupport', '5559012', 'service@imagingsupport.com', 1, 'Annual', 'Downtime<5h/year', 'AutoRenew', 'EarlyTerminationPenalty', 'Priority response included');

-- Ambulance dispatch summary
CREATE TABLE AmbulanceDispatchSummary
(
    DispatchID          INTEGER PRIMARY KEY,
    DispatchDate        DATE,
    DispatchTime        TEXT,
    CallType            TEXT,
    PatientID           INTEGER,
    DestinationHospital TEXT,
    TransportMode       TEXT,
    Mileage             INTEGER,
    CrewCount           INTEGER,
    EquipmentOnboard    TEXT,
    PriorityLevel       TEXT,
    Outcome             TEXT,
    ResponseTimeMinutes INTEGER,
    OnSceneTimeMinutes INTEGER,
    TransportTimeMinutes INTEGER,
    IncidentCode        TEXT,
    WeatherCondition    TEXT,
    TrafficStatus       TEXT,
    DispatchNotes       TEXT,
    BillingCode         TEXT,
    FollowUpRequired    TEXT,
    FollowUpDate        DATE,
    CallerPhone         TEXT,
    CallerRelation      TEXT
);

INSERT INTO AmbulanceDispatchSummary VALUES (7001, '2025-01-22', '14:35', 'Cardiac Arrest', 1001, 'GeneralHospital', 'Ground', 12, 3, 'Defibrillator,IVKit', 'High', 'Survived', 5, 10, 15, 'CA01', 'Clear', 'Light', 'Rapid response', 'B001', 'Yes', '2025-01-30', '5551111', 'Family');
INSERT INTO AmbulanceDispatchSummary VALUES (7002, '2025-02-10', '09:12', 'Fall Injury', 1002, 'CityMedicalCenter', 'Ground', 8, 2, 'SpineBoard,OTC', 'Medium', 'Improved', 7, 8, 12, 'FI02', 'Rain', 'Moderate', 'Handled per protocol', 'B002', 'No', NULL, '5552222', 'Neighbor');
INSERT INTO AmbulanceDispatchSummary VALUES (7003, '2025-03-05', '22:47', 'Respiratory Distress', 1003, 'RegionalHospital', 'Ground', 15, 3, 'OxygenMask,Ventilator', 'High', 'Stabilized', 4, 9, 18, 'RD03', 'Snow', 'Heavy', 'Delayed due to traffic', 'B003', 'Yes', '2025-03-12', '5553333', 'Friend');

-- Public health outreach campaign
CREATE TABLE PublicHealthOutreachCampaign
(
    CampaignID          INTEGER PRIMARY KEY,
    CampaignName        TEXT,
    LaunchDate          DATE,
    EndDate             DATE,
    TargetPopulation    TEXT,
    Geography           TEXT,
    BudgetUSD           REAL,
    FundingSource       TEXT,
    PrimaryChannel      TEXT,
    PartnerOrganizations TEXT,
    CoreMessage         TEXT,
    MaterialsProduced   INTEGER,
    EventsPlanned       INTEGER,
    EventsCompleted     INTEGER,
    ReachCount          INTEGER,
    EngagementRate      REAL,
    FeedbackScore       INTEGER,
    EvaluationReport    TEXT,
    ResponsibleOfficer  TEXT,
    Status              TEXT,
    LastUpdated         DATE,
    Notes               TEXT
);

INSERT INTO PublicHealthOutreachCampaign VALUES (8001, 'FluVaccinationDrive', '2025-01-01', '2025-03-31', 'Adults65plus', 'CountyA', 120000.00, 'StateHealthDept', 'ClinicVisits', 'CommunityCenters,PH Clinics', 'Get vaccinated early', 5000, 30, 28, 45000, 0.85, 90, 'Report8001.pdf', 'DrGreen', 'Active', '2025-02-15', 'Positive response');
INSERT INTO PublicHealthOutreachCampaign VALUES (8002, 'DiabetesAwarenessWeek', '2025-04-01', '2025-04-07', 'Adults30-60', 'RegionB', 45000.00, 'PrivateSponsor', 'SocialMedia', 'NGOHealth,LocalHospitals', 'Know the signs', 1500, 7, 7, 20000, 0.78, 82, 'Report8002.pdf', 'MsBlue', 'Completed', '2025-04-08', 'Good engagement');
INSERT INTO PublicHealthOutreachCampaign VALUES (8003, 'YouthMentalHealthForum', '2025-05-15', '2025-06-15', 'Students18-24', 'CityC', 80000.00, 'UniversityGrant', 'Webinars', 'University,YouthOrgs', 'Break the stigma', 2500, 12, 10, 15000, 0.65, 76, 'Report8003.pdf', 'ProfRed', 'Ongoing', '2025-06-01', 'Needs more promotion');