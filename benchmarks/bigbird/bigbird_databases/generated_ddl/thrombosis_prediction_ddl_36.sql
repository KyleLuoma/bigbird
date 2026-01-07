-- Hospital strategic planning and initiatives
CREATE TABLE HospitalStrategicPlan (
    PlanID INTEGER PRIMARY KEY,
    PlanName TEXT,
    StartDate DATE,
    EndDate DATE,
    VisionStatement TEXT,
    MissionStatement TEXT,
    StrategicGoal1 TEXT,
    StrategicGoal2 TEXT,
    StrategicGoal3 TEXT,
    InitiativeCount INTEGER,
    BudgetAllocation REAL,
    FundingSource TEXT,
    RiskLevel TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    ReviewFrequency TEXT,
    KPI1 TEXT,
    KPI2 TEXT,
    KPI3 TEXT,
    StakeholderEngagementLevel TEXT,
    CommunicationPlan TEXT,
    MonitoringTool TEXT,
    ExpectedOutcome TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE
);
INSERT INTO HospitalStrategicPlan VALUES (1,'Growth2025','2025-01-01','2028-12-31','Expand services regionally','Provide comprehensive care', 'Increase bed count','Improve patient satisfaction','Launch telehealth',5,12.5,'GovernmentGrant','Medium','Approved','CEO','Annual','PatientWaitTime','ReadmissionRate','StaffRetention','High','MonthlyNewsletter','Dashboard','30% market share',CURRENT_DATE,CURRENT_DATE);
INSERT INTO HospitalStrategicPlan VALUES (2,'Sustainability2024','2024-04-01','2026-03-31','Achieve carbon neutrality','Eco‑friendly operations', 'Reduce energy use','Zero waste program','Green procurement',3,8.0,'PrivateDonor','Low','Pending','Board','Biannual','EnergyConsumption','WasteGenerated','WaterUsage','Medium','QuarterlyReport','EnergyDashboard','15% reduction',CURRENT_DATE,CURRENT_DATE);
INSERT INTO HospitalStrategicPlan VALUES (3,'DigitalTransformation','2023-07-01','2025-06-30','Leverage technology','Modernize health IT', 'EMR integration','AI diagnostics','Patient portal upgrade',7,20.0,'CorporateSponsor','High','Approved','CTO','Quarterly','SystemUptime','UserAdoption','DataSecurityIncidents','High','WeeklyUpdates','ITScorecard','Full EMR coverage',CURRENT_DATE,CURRENT_DATE);

-- Allocation of research funding across projects
CREATE TABLE ResearchFundingAllocation (
    AllocationID INTEGER PRIMARY KEY,
    ProjectCode TEXT,
    ProjectTitle TEXT,
    PrincipalInvestigator TEXT,
    FundingAgency TEXT,
    GrantNumber TEXT,
    AwardYear INTEGER,
    TotalAwardAmount REAL,
    AllocationPortion REAL,
    StartDate DATE,
    EndDate DATE,
    FundingCategory TEXT,
    ReviewScore REAL,
    FundingStatus TEXT,
    DisbursementDate DATE,
    ExpenseCategory TEXT,
    ExpenditureAmount REAL,
    ReportingFrequency TEXT,
    ComplianceStatus TEXT,
    AuditFlag INTEGER,
    Notes TEXT,
    CreatedOn DATE,
    ModifiedOn DATE
);
INSERT INTO ResearchFundingAllocation VALUES (101,'RC-01','Cardio Biomarkers','DrSmith','NIH','R01-ABC123',2022,500000,250000,'2022-09-01','2025-08-31','Cardiology',85.5,'Active','2022-10-15','Equipment',150000,'Quarterly','Compliant',0,'Phase1 funding',CURRENT_DATE,CURRENT_DATE);
INSERT INTO ResearchFundingAllocation VALUES (102,'RC-02','Neuro Imaging','DrLee','NSF','NSF-456DEF',2023,300000,150000,'2023-01-10','2026-01-09','Neurology',78.0,'Pending','2023-02-01','Travel',50000,'Annual','Pending',1,'Awaiting approval',CURRENT_DATE,CURRENT_DATE);
INSERT INTO ResearchFundingAllocation VALUES (103,'RC-03','Immunotherapy Trials','DrPatel','EU Horizon','EU-789GHI',2021,800000,400000,'2021-05-20','2024-05-19','Oncology',92.3,'Closed','2021-06-05','Personnel',250000,'Semiannual','Compliant',0,'Final report submitted',CURRENT_DATE,CURRENT_DATE);

-- Reporting of safety incidents within the hospital
CREATE TABLE SafetyIncidentReport (
    IncidentID INTEGER PRIMARY KEY,
    IncidentDate DATE,
    IncidentTime TEXT,
    Location TEXT,
    IncidentType TEXT,
    SeverityLevel TEXT,
    ReportedBy TEXT,
    Description TEXT,
    ImmediateAction TEXT,
    RootCauseAnalysis TEXT,
    CorrectiveActionPlan TEXT,
    Status TEXT,
    ClosureDate DATE,
    FollowUpDate DATE,
    ImpactedArea TEXT,
    InjuriesReported INTEGER,
    PropertyDamage REAL,
    IncidentCategory TEXT,
    RiskRating TEXT,
    NotificationSent INTEGER,
    DocumentationLink TEXT,
    CreatedTimestamp DATE,
    UpdatedTimestamp DATE
);
INSERT INTO SafetyIncidentReport VALUES (5001,'2025-03-12','14:30','Ward 3B','SlipFall','Minor','NurseA','Nurse slipped on wet floor','Area dried and sign placed','Floor cleaning schedule','Update cleaning protocol','Closed','2025-03-13','2025-03-20','Flooring','0',0,'Facility','Low',1,'/docs/incident5001.pdf',CURRENT_DATE,CURRENT_DATE);
INSERT INTO SafetyIncidentReport VALUES (5002,'2025-04-01','09:15','Radiology','RadiationExposure','Moderate','TechB','Overexposure during CT scan','Scanner shutdown','Operator error in settings','Retraining and software lock','In Progress','NULL','2025-04-15','Imaging Equipment','1',2000,'Clinical','Medium',1,'/docs/incident5002.pdf',CURRENT_DATE,CURRENT_DATE);
INSERT INTO SafetyIncidentReport VALUES (5003,'2025-05-20','22:45','ParkingLot','VehicleCollision','Severe','SecurityC','Staff vehicle hit a patient transport cart','Emergency services called','Improper lighting','Upgrade lighting and signage','Open','NULL','2025-06-01','Parking Area','2',5000,'Transport','High',0,'/docs/incident5003.pdf',CURRENT_DATE,CURRENT_DATE);

-- Management of environmental waste streams
CREATE TABLE EnvironmentalWasteManagement (
    WasteID INTEGER PRIMARY KEY,
    WasteType TEXT,
    GenerationDate DATE,
    Department TEXT,
    QuantityKg REAL,
    HazardLevel TEXT,
    StorageLocation TEXT,
    CollectionMethod TEXT,
    DisposalVendor TEXT,
    DisposalDate DATE,
    Cost REAL,
    ComplianceStatus TEXT,
    PermitNumber TEXT,
    RecordedBy TEXT,
    VerificationSignature TEXT,
    Notes TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    AuditFlag INTEGER,
    RetentionPeriodYears INTEGER
);
INSERT INTO EnvironmentalWasteManagement VALUES (30001,'MedicalSharps','2025-02-10','Surgery','45.2','High','StorageRoomA','Containerized','WasteCo','2025-02-12',750,'Compliant','PERM-1234','EnvOfficer','SIGN123','Handled per protocol',CURRENT_DATE,CURRENT_DATE,0,5);
INSERT INTO EnvironmentalWasteManagement VALUES (30002,'PharmaceuticalWaste','2025-03-05','Pharmacy','30.0','Medium','PharmaVault','Incineration','EcoDispose','2025-03-07',600,'Compliant','PERM-5678','EnvOfficer','SIGN456','Collected weekly',CURRENT_DATE,CURRENT_DATE,0,3);
INSERT INTO EnvironmentalWasteManagement VALUES (30003,'ElectronicWaste','2025-04-22','ITDepartment','120.5','Low','E‑WasteRoom','BulkPickup','TechRecycle','2025-04-25',1200,'Pending','PERM-9012','EnvOfficer','SIGN789','Awaiting final audit',CURRENT_DATE,CURRENT_DATE,1,7);

-- Survey capturing staff wellness metrics
CREATE TABLE StaffWellnessSurvey (
    SurveyID INTEGER PRIMARY KEY,
    SurveyDate DATE,
    Department TEXT,
    EmployeeCount INTEGER,
    AvgStressLevel INTEGER,
    AvgSleepHours REAL,
    ExerciseFrequencyPerWeek INTEGER,
    HealthyEatingScore INTEGER,
    BurnoutIncidence INTEGER,
    MentalHealthSupportUsage INTEGER,
    SickDaysTaken INTEGER,
    TurnoverIntent INTEGER,
    OverallSatisfaction INTEGER,
    Comments TEXT,
    ConductedBy TEXT,
    FollowUpAction TEXT,
    CreatedOn DATE,
    UpdatedOn DATE,
    ConfidentialFlag INTEGER,
    SurveyVersion TEXT
);
INSERT INTO StaffWellnessSurvey VALUES (7001,'2025-01-15','Nursing',120,6,6.5,3,78,15,20,8,10,75,'Positive overall',HRTeam,'Review workload',CURRENT_DATE,CURRENT_DATE,1,'v1');
INSERT INTO StaffWellnessSurvey VALUES (7002,'2025-04-10','Radiology',45,5,7.0,4,82,8,12,4,5,82,'Good engagement',HRTeam,'Maintain current programs',CURRENT_DATE,CURRENT_DATE,1,'v1');
INSERT INTO StaffWellnessSurvey VALUES (7003,'2025-07-20','Administration',30,4,6.8,2,70,5,9,2,3,68,'Need more flex time',HRTeam,'Introduce flex schedule',CURRENT_DATE,CURRENT_DATE,1,'v1');

-- Plan for technology upgrades across the facility
CREATE TABLE TechnologyUpgradePlan (
    UpgradeID INTEGER PRIMARY KEY,
    AssetType TEXT,
    CurrentVersion TEXT,
    TargetVersion TEXT,
    UpgradeStartDate DATE,
    UpgradeEndDate DATE,
    Vendor TEXT,
    ContractNumber TEXT,
    EstimatedCost REAL,
    FundingSource TEXT,
    RiskAssessment TEXT,
    ImpactLevel TEXT,
    DowntimeHours INTEGER,
    BackupPlan TEXT,
    ValidationMethod TEXT,
    ApprovalStatus TEXT,
    ApprovedBy TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    Notes TEXT,
    ImplementationPhase TEXT,
    ExpectedBenefit TEXT
);
INSERT INTO TechnologyUpgradePlan VALUES (9001,'MRI Scanner','v3.2','v4.0','2025-06-01','2025-06-15','MedEquip','C-12345',250000,'CapitalBudget','Medium','High',12,'Full system backup','Performance testing','Approved','ChiefCTO',CURRENT_DATE,CURRENT_DATE,'Upgrade to higher resolution','Phase1','Improved diagnostic accuracy');
INSERT INTO TechnologyUpgradePlan VALUES (9002,'Electronic Health Record','v2.5','v3.0','2025-09-01','2025-12-01','HealthSoft','C-67890',500000,'OperationalFunds','High','Critical',48,'Data mirroring','User acceptance testing','Pending','CIO',CURRENT_DATE,CURRENT_DATE,'Switch to cloud based solution','Phase2','Enhanced interoperability');
INSERT INTO TechnologyUpgradePlan VALUES (9003,'Security Cameras','RevA','RevB','2025-03-15','2025-04-10','SecureCam','C-11223',80000,'SafetyGrant','Low','Medium',4,'Redundant storage','Video quality audit','Approved','SecurityDirector',CURRENT_DATE,CURRENT_DATE,'Upgrade to AI motion detection','Phase1','Better incident response');

-- Log of supply chain risk assessments
CREATE TABLE SupplyChainRiskLog (
    RiskLogID INTEGER PRIMARY KEY,
    SupplierName TEXT,
    ProductCategory TEXT,
    AssessmentDate DATE,
    RiskScore INTEGER,
    RiskLevel TEXT,
    DisruptionProbability REAL,
    ImpactScore INTEGER,
    MitigationStrategy TEXT,
    ContingencyPlan TEXT,
    LastAuditDate DATE,
    AuditResult TEXT,
    ContractRenewalDate DATE,
    Remarks TEXT,
    AssessedBy TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    FollowUpDate DATE,
    Status TEXT,
    DocumentationLink TEXT
);
INSERT INTO SupplyChainRiskLog VALUES (4001,'MedSupplyCo','Pharmaceuticals','2025-02-20',78,'High',0.45,85,'Multiple suppliers','Activate alternate vendor','2025-01-15','Pass','2026-02-20','Critical meds only','RiskTeamA',CURRENT_DATE,CURRENT_DATE,'2025-08-01','Open','/docs/risk4001.pdf');
INSERT INTO SupplyChainRiskLog VALUES (4002,'CleanEquip','CleaningEquipment','2025-03-10',55,'Medium',0.25,60,'Stockpiling','Use local distributor','2025-02-05','Pass','2025-12-31','Standard cleaning tools','RiskTeamB',CURRENT_DATE,CURRENT_DATE,'2025-09-15','Monitoring','/docs/risk4002.pdf');
INSERT INTO SupplyChainRiskLog VALUES (4003,'TechWare','ITHardware','2025-01-05',30,'Low',0.10,40,'Standard warranty','Switch to alternate model','2024-12-20','Pass','2025-11-30','No immediate concerns','RiskTeamC',CURRENT_DATE,CURRENT_DATE,'2025-07-01','Closed','/docs/risk4003.pdf');

-- Partnerships with community health organizations
CREATE TABLE CommunityHealthPartnership (
    PartnershipID INTEGER PRIMARY KEY,
    OrganizationName TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    PartnershipStart DATE,
    PartnershipEnd DATE,
    ScopeOfCollaboration TEXT,
    FundingAmount REAL,
    InKindSupport TEXT,
    JointPrograms INTEGER,
    TargetPopulation TEXT,
    GeographicFocus TEXT,
    EvaluationMetric TEXT,
    ReportingFrequency TEXT,
    Status TEXT,
    LastReviewDate DATE,
    NextReviewDate DATE,
    MemorandumLink TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    Notes TEXT
);
INSERT INTO CommunityHealthPartnership VALUES (2001,'CityHealthCenter','AliceBrown','5551234567','2024-07-01','2026-06-30','Screenings and education',150000,'VenueUse',3,'LowIncomeAdults','Urban','ScreeningCount','Quarterly','Active','2025-01-15','2025-10-15','/docs/partnership2001.pdf',CURRENT_DATE,CURRENT_DATE,'Positive community feedback');
INSERT INTO CommunityHealthPartnership VALUES (2002,'RuralOutreachOrg','BobSmith','5559876543','2023-01-01','2025-12-31','Mobile clinics',80000,'VolunteerStaff',2,'RuralElderly','Rural','VisitCount','Semiannual','Active','2024-12-01','2025-06-01','/docs/partnership2002.pdf',CURRENT_DATE,CURRENT_DATE,'Needs equipment upgrade');
INSERT INTO CommunityHealthPartnership VALUES (2003,'YouthWellnessNGO','CarolLee','5555551212','2025-03-01','2028-02-28','Mental health workshops',50000,'Materials',1,'Adolescents','Suburban','AttendanceRate','Annual','Planned','NULL','2025-12-01','/docs/partnership2003.pdf',CURRENT_DATE,CURRENT_DATE,'Proposal under review');

-- Audits of regulatory compliance activities
CREATE TABLE RegulatoryComplianceAudit (
    AuditID INTEGER PRIMARY KEY,
    RegulationName TEXT,
    AuditScope TEXT,
    AuditStartDate DATE,
    AuditEndDate DATE,
    Auditor TEXT,
    FindingsSummary TEXT,
    NonComplianceCount INTEGER,
    SeverityRating TEXT,
    CorrectiveActionDeadline DATE,
    Status TEXT,
    FollowUpDate DATE,
    DocumentationLink TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    RiskLevel TEXT,
    DepartmentResponsible TEXT,
    Recommendations TEXT,
    AuditScore REAL,
    Remarks TEXT
);
INSERT INTO RegulatoryComplianceAudit VALUES (6001,'HIPAA','Privacy Practices','2025-02-01','2025-02-15','AuditTeamA','All policies up to date',0,'Low','NULL','Closed','NULL','/docs/audit6001.pdf',CURRENT_DATE,CURRENT_DATE,'Low','ComplianceOffice','Continue annual training',98.5,'No issues');
INSERT INTO RegulatoryComplianceAudit VALUES (6002,'OSHA','Workplace Safety','2025-04-10','2025-04-20','AuditTeamB','Improper signage in storage',2,'Medium','2025-05-30','Open','2025-06-01','/docs/audit6002.pdf',CURRENT_DATE,CURRENT_DATE,'Medium','Facilities','Update signage and conduct drills',85.0,'Pending corrective actions');
INSERT INTO RegulatoryComplianceAudit VALUES (6003,'FDA','Medical Device Reporting','2025-01-05','2025-01-12','AuditTeamC','Missing logs for two devices',1,'High','2025-02-28','Open','2025-03-15','/docs/audit6003.pdf',CURRENT_DATE,CURRENT_DATE,'High','DeviceManagement','Complete logs and review SOPs',70.0,'Critical issue');

-- Archive of legacy digital health records
CREATE TABLE DigitalHealthRecordArchive (
    ArchiveID INTEGER PRIMARY KEY,
    RecordType TEXT,
    SourceSystem TEXT,
    ArchiveDate DATE,
    FileFormat TEXT,
    FileSizeMB REAL,
    EncryptionMethod TEXT,
    RetentionPeriodYears INTEGER,
    AccessPolicy TEXT,
    StorageLocation TEXT,
    Checksum TEXT,
    VerifiedBy TEXT,
    VerificationDate DATE,
    Notes TEXT,
    CreatedOn DATE,
    ModifiedOn DATE,
    ArchiveStatus TEXT,
    DeletionScheduledDate DATE,
    RecoveryTestDate DATE,
    ComplianceStatus TEXT
);
INSERT INTO DigitalHealthRecordArchive VALUES (90001,'PatientSummary','LegacyEMR','2025-03-01','PDF','12.5','AES256',10,'Restricted','VaultA','ABC123DEF','ITAdmin','2025-03-02','Archived per policy',CURRENT_DATE,CURRENT_DATE,'Active','2035-03-01','2025-09-01','Compliant');
INSERT INTO DigitalHealthRecordArchive VALUES (90002,'LabResults','LegacyLabSys','2025-04-15','CSV','5.8','AES128',7,'ReadOnly','VaultB','XYZ789GHI','DataSteward','2025-04-16','Converted for long‑term storage',CURRENT_DATE,CURRENT_DATE,'Active','2032-04-15','2025-10-01','Compliant');
INSERT INTO DigitalHealthRecordArchive VALUES (90003,'ImagingMetadata','LegacyPACS','2025-02-20','XML','25.3','RSA2048',15,'HighlyRestricted','VaultC','LMN456OPQ','SecurityLead','2025-02-21','Metadata retained for research',CURRENT_DATE,CURRENT_DATE,'Active','2040-02-20','2025-08-01','Compliant');