-- HospitalFinancialReport stores aggregated financial data per fiscal quarter
CREATE TABLE HospitalFinancialReport
(
    ReportID            INTEGER PRIMARY KEY,
    FiscalYear          INTEGER,
    Quarter             INTEGER,
    TotalRevenue        REAL,
    TotalExpenses       REAL,
    NetIncome           REAL,
    OperatingExpense    REAL,
    CapitalExpenditure  REAL,
    DepartmentCode      TEXT,
    CostCenter          TEXT,
    RevenueSource       TEXT,
    ExpenseCategory     TEXT,
    CashOnHand          REAL,
    AccountsReceivable  REAL,
    AccountsPayable     REAL,
    BudgetVariance      REAL,
    AuditStatus         TEXT,
    PreparedBy          TEXT,
    ApprovedBy          TEXT,
    ReportDate          DATE
);

INSERT INTO HospitalFinancialReport (ReportID,FiscalYear,Quarter,TotalRevenue,TotalExpenses,NetIncome,OperatingExpense,CapitalExpenditure,DepartmentCode,CostCenter,RevenueSource,ExpenseCategory,CashOnHand,AccountsReceivable,AccountsPayable,BudgetVariance,AuditStatus,PreparedBy,ApprovedBy,ReportDate) VALUES
(1,2023,1,12500000.00,9500000.00,3000000.00,5000000.00,1500000.00,'CARD','CC001','PatientCare','Salaries',2000000.00,500000.00,300000.00,200000.00,'Completed','Alice','Bob','2023-04-01');

INSERT INTO HospitalFinancialReport (ReportID,FiscalYear,Quarter,TotalRevenue,TotalExpenses,NetIncome,OperatingExpense,CapitalExpenditure,DepartmentCode,CostCenter,RevenueSource,ExpenseCategory,CashOnHand,AccountsReceivable,AccountsPayable,BudgetVariance,AuditStatus,PreparedBy,ApprovedBy,ReportDate) VALUES
(2,2023,2,13000000.00,9600000.00,3400000.00,5200000.00,1400000.00,'NEUR','CC002','Insurance','Supplies',2100000.00,600000.00,350000.00,250000.00,'Pending','Carol','Dave','2023-07-01');

INSERT INTO HospitalFinancialReport (ReportID,FiscalYear,Quarter,TotalRevenue,TotalExpenses,NetIncome,OperatingExpense,CapitalExpenditure,DepartmentCode,CostCenter,RevenueSource,ExpenseCategory,CashOnHand,AccountsReceivable,AccountsPayable,BudgetVariance,AuditStatus,PreparedBy,ApprovedBy,ReportDate) VALUES
(3,2023,3,12800000.00,9400000.00,3400000.00,5100000.00,1600000.00,'ORTH','CC003','Government','Maintenance',2050000.00,550000.00,320000.00,300000.00,'Completed','Eve','Frank','2023-10-01');

-- EquipmentAcquisition records purchase details of hospital assets
CREATE TABLE EquipmentAcquisition
(
    AcquisitionID        INTEGER PRIMARY KEY,
    AssetTag             TEXT,
    Category             TEXT,
    Manufacturer         TEXT,
    ModelNumber          TEXT,
    SerialNumber         TEXT,
    PurchaseDate         DATE,
    PurchasePrice        REAL,
    WarrantyYears        INTEGER,
    ExpectedLifeYears    INTEGER,
    FundingSource        TEXT,
    DepartmentAssigned   TEXT,
    Location             TEXT,
    ConditionStatus      TEXT,
    InstallationDate     DATE,
    SupplierName         TEXT,
    ContractNumber       TEXT,
    DecommissionDate     DATE,
    DepreciationMethod   TEXT,
    CurrentValue         REAL
);

INSERT INTO EquipmentAcquisition (AcquisitionID,AssetTag,Category,Manufacturer,ModelNumber,SerialNumber,PurchaseDate,PurchasePrice,WarrantyYears,ExpectedLifeYears,FundingSource,DepartmentAssigned,Location,ConditionStatus,InstallationDate,SupplierName,ContractNumber,DecommissionDate,DepreciationMethod,CurrentValue) VALUES
(101,'EQ-001','Imaging','GE','Optima','SN12345','2022-01-15',850000.00,5,10,'Capital','Radiology','BuildingA-Room101','New','2022-02-01','MedSuppliesInc','CN-001',NULL,'StraightLine',750000.00);

INSERT INTO EquipmentAcquisition (AcquisitionID,AssetTag,Category,Manufacturer,ModelNumber,SerialNumber,PurchaseDate,PurchasePrice,WarrantyYears,ExpectedLifeYears,FundingSource,DepartmentAssigned,Location,ConditionStatus,InstallationDate,SupplierName,ContractNumber,DecommissionDate,DepreciationMethod,CurrentValue) VALUES
(102,'EQ-002','Lab','ThermoFisher','CentrifugeX','SN67890','2021-06-20',120000.00,3,8,'Grant','Pathology','LabB','Good','2021-07-10','LabEquipCo','CN-002',NULL,'DecliningBalance',90000.00);

INSERT INTO EquipmentAcquisition (AcquisitionID,AssetTag,Category,Manufacturer,ModelNumber,SerialNumber,PurchaseDate,PurchasePrice,WarrantyYears,ExpectedLifeYears,FundingSource,DepartmentAssigned,Location,ConditionStatus,InstallationDate,SupplierName,ContractNumber,DecommissionDate,DepreciationMethod,CurrentValue) VALUES
(103,'EQ-003','IT','Dell','PowerEdge','SN54321','2020-03-05',45000.00,4,6,'Operating','IT','DataCenter','Used','2020-03-20','TechSupply','CN-003','2025-03-05','StraightLine',30000.00);

-- ClinicalProtocolDefinition stores versioned protocol metadata
CREATE TABLE ClinicalProtocolDefinition
(
    ProtocolID            INTEGER PRIMARY KEY,
    ProtocolName          TEXT,
    Version               TEXT,
    EffectiveDate         DATE,
    ClinicalArea          TEXT,
    Description           TEXT,
    InclusionCriteria     TEXT,
    ExclusionCriteria     TEXT,
    PrimaryOutcome        TEXT,
    SecondaryOutcome      TEXT,
    SampleSize            INTEGER,
    RandomizationMethod   TEXT,
    Blinding              TEXT,
    MonitoringPlan        TEXT,
    DataCollectionMethod  TEXT,
    StatAnalysisPlan      TEXT,
    Sponsor               TEXT,
    InvestigatorLead      TEXT,
    ReviewBoardApprovalDate DATE,
    Status                TEXT
);

INSERT INTO ClinicalProtocolDefinition (ProtocolID,ProtocolName,Version,EffectiveDate,ClinicalArea,Description,InclusionCriteria,ExclusionCriteria,PrimaryOutcome,SecondaryOutcome,SampleSize,RandomizationMethod,Blinding,MonitoringPlan,DataCollectionMethod,StatAnalysisPlan,Sponsor,InvestigatorLead,ReviewBoardApprovalDate,Status) VALUES
(201,'HypertensionManagement','v1.0','2023-01-01','Cardiology','Protocol for managing stage2 hypertension','Age>30 AND SBP>150','Pregnant','BPReduction','AdverseEvents',250,'BlockRandom','DoubleBlind','MonthlyVisits','ElectronicCRF','MixedModel','HealthOrg','DrSmith','2022-12-15','Active');

INSERT INTO ClinicalProtocolDefinition (ProtocolID,ProtocolName,Version,EffectiveDate,ClinicalArea,Description,InclusionCriteria,ExclusionCriteria,PrimaryOutcome,SecondaryOutcome,SampleSize,RandomizationMethod,Blinding,MonitoringPlan,DataCollectionMethod,StatAnalysisPlan,Sponsor,InvestigatorLead,ReviewBoardApprovalDate,Status) VALUES
(202,'DiabetesEducation','v2.1','2022-07-01','Endocrinology','Education program for type2 diabetes','HbA1c>7','RenalFailure','HbA1cChange','WeightChange',180,'SimpleRandom','OpenLabel','BiweeklyCalls','PaperForms','ANCOVA','PharmaInc','DrLee','2022-06-10','Completed');

INSERT INTO ClinicalProtocolDefinition (ProtocolID,ProtocolName,Version,EffectiveDate,ClinicalArea,Description,InclusionCriteria,ExclusionCriteria,PrimaryOutcome,SecondaryOutcome,SampleSize,RandomizationMethod,Blinding,MonitoringPlan,DataCollectionMethod,StatAnalysisPlan,Sponsor,InvestigatorLead,ReviewBoardApprovalDate,Status) VALUES
(203,'PostSurgicalRecovery','v1.3','2023-03-15','Surgery','Enhanced recovery after abdominal surgery','ElectiveAbdSurgery','EmergencyCases','LengthOfStay','PainScore',300,'Stratified','SingleBlind','DailyAssessments','eCRF','SurvivalAnalysis','SurgicalAssoc','DrKim','2023-02-20','Active');

-- EnvironmentalAuditLog records periodic environmental compliance checks
CREATE TABLE EnvironmentalAuditLog
(
    AuditID                INTEGER PRIMARY KEY,
    FacilityID             INTEGER,
    AuditDate              DATE,
    AuditorName            TEXT,
    AuditScope             TEXT,
    AirQualityIndex        REAL,
    NoiseLevelDecibel      REAL,
    WaterQualityScore      REAL,
    WasteManagementScore   REAL,
    EnergyEfficiencyScore  REAL,
    HazardousMaterialCount INTEGER,
    ComplianceStatus       TEXT,
    FindingsSummary        TEXT,
    CorrectiveActionPlan   TEXT,
    FollowUpDate           DATE,
    DepartmentResponsible  TEXT,
    Notes                  TEXT,
    OverallRating          TEXT,
    DocumentReference      TEXT,
    CreatedTimestamp       DATETIME
);

INSERT INTO EnvironmentalAuditLog (AuditID,FacilityID,AuditDate,AuditorName,AuditScope,AirQualityIndex,NoiseLevelDecibel,WaterQualityScore,WasteManagementScore,EnergyEfficiencyScore,HazardousMaterialCount,ComplianceStatus,FindingsSummary,CorrectiveActionPlan,FollowUpDate,DepartmentResponsible,Notes,OverallRating,DocumentReference,CreatedTimestamp) VALUES
(301,10,'2023-05-10','JohnDoe','BuildingA','45.2','58.0','92','85','78',2,'Compliant','All metrics within limits','Routine monitoring','2023-08-10','Facilities','N/A','Good','DOC-301','2023-05-10 09:30:00');

INSERT INTO EnvironmentalAuditLog (AuditID,FacilityID,AuditDate,AuditorName,AuditScope,AirQualityIndex,NoiseLevelDecibel,WaterQualityScore,WasteManagementScore,EnergyEfficiencyScore,HazardousMaterialCount,ComplianceStatus,FindingsSummary,CorrectiveActionPlan,FollowUpDate,DepartmentResponsible,Notes,OverallRating,DocumentReference,CreatedTimestamp) VALUES
(302,12,'2023-06-15','JaneSmith','BuildingB','55.0','62.5','88','80','70',5,'NonCompliant','Elevated noise levels','Install acoustic panels','2023-09-15','Engineering','Urgent','Fair','DOC-302','2023-06-15 14:20:00');

INSERT INTO EnvironmentalAuditLog (AuditID,FacilityID,AuditDate,AuditorName,AuditScope,AirQualityIndex,NoiseLevelDecibel,WaterQualityScore,WasteManagementScore,EnergyEfficiencyScore,HazardousMaterialCount,ComplianceStatus,FindingsSummary,CorrectiveActionPlan,FollowUpDate,DepartmentResponsible,Notes,OverallRating,DocumentReference,CreatedTimestamp) VALUES
(303,15,'2023-07-20','MikeBrown','LaboratoryWing','48.5','55.0','95','90','82',1,'Compliant','All standards met','No action required','2024-01-20','Safety','N/A','Excellent','DOC-303','2023-07-20 11:45:00');

-- ResearchProjectMilestone tracks key dates and deliverables for studies
CREATE TABLE ResearchProjectMilestone
(
    MilestoneID          INTEGER PRIMARY KEY,
    ProjectID            INTEGER,
    MilestoneName        TEXT,
    TargetDate           DATE,
    CompletionDate       DATE,
    Status               TEXT,
    LeadResearcher       TEXT,
    FundingAmount        REAL,
    Deliverable          TEXT,
    RiskLevel            TEXT,
    Dependencies         TEXT,
    Comments             TEXT,
    UpdatedBy            TEXT,
    UpdateTimestamp      DATETIME,
    ReviewDate           DATE,
    OutcomeSummary       TEXT,
    DocumentationLink    TEXT,
    Phase                TEXT,
    Priority             INTEGER,
    Category             TEXT
);

INSERT INTO ResearchProjectMilestone (MilestoneID,ProjectID,MilestoneName,TargetDate,CompletionDate,Status,LeadResearcher,FundingAmount,Deliverable,RiskLevel,Dependencies,Comments,UpdatedBy,UpdateTimestamp,ReviewDate,OutcomeSummary,DocumentationLink,Phase,Priority,Category) VALUES
(401,1001,'ProtocolApproval','2023-02-01','2023-02-03','Completed','DrAllen',50000.00,'ApprovedProtocol','Low','None','Smooth process','DrAllen','2023-02-04 10:00:00','2023-02-10','Protocol approved without revisions','link1.pdf','Planning',1,'Clinical');

INSERT INTO ResearchProjectMilestone (MilestoneID,ProjectID,MilestoneName,TargetDate,CompletionDate,Status,LeadResearcher,FundingAmount,Deliverable,RiskLevel,Dependencies,Comments,UpdatedBy,UpdateTimestamp,ReviewDate,OutcomeSummary,DocumentationLink,Phase,Priority,Category) VALUES
(402,1001,'FirstPatientEnrollment','2023-04-01','2023-04-15','Completed','DrAllen',50000.00,'50Patients','Medium','ProtocolApproval','Minor delays due to consent','DrAllen','2023-04-16 15:30:00','2023-04-20','Enrolled 48 of 50','link2.pdf','Recruitment',2,'Clinical');

INSERT INTO ResearchProjectMilestone (MilestoneID,ProjectID,MilestoneName,TargetDate,CompletionDate,Status,LeadResearcher,FundingAmount,Deliverable,RiskLevel,Dependencies,Comments,UpdatedBy,UpdateTimestamp,ReviewDate,OutcomeSummary,DocumentationLink,Phase,Priority,Category) VALUES
(403,1001,'DataAnalysis','2023-09-01',NULL,'InProgress','DrAllen',50000.00,'FinalReport','High','FirstPatientEnrollment','Analysis ongoing','DrAllen','2023-09-05 09:15:00','2023-09-10','Preliminary trends identified','link3.pdf','Analysis',3,'Clinical');

-- FacilityRenewableEnergyLog records renewable generation and related metrics
CREATE TABLE FacilityRenewableEnergyLog
(
    LogID                 INTEGER PRIMARY KEY,
    FacilityID            INTEGER,
    Date                  DATE,
    SolarGenerationKWh    REAL,
    WindGenerationKWh     REAL,
    HydroGenerationKWh    REAL,
    TotalRenewableKWh     REAL,
    GridConsumptionKWh    REAL,
    NetExportKWh          REAL,
    CarbonOffsetMetric    REAL,
    EnergyCostSavings     REAL,
    SystemAvailabilityPercent REAL,
    MaintenanceStatus     TEXT,
    OperatorName          TEXT,
    WeatherCondition      TEXT,
    TemperatureCelsius    REAL,
    Comments              TEXT,
    RecordedBy            TEXT,
    RecordTimestamp       DATETIME,
    EnergyProvider        TEXT,
    ContractType          TEXT
);

INSERT INTO FacilityRenewableEnergyLog (LogID,FacilityID,Date,SolarGenerationKWh,WindGenerationKWh,HydroGenerationKWh,TotalRenewableKWh,GridConsumptionKWh,NetExportKWh,CarbonOffsetMetric,EnergyCostSavings,SystemAvailabilityPercent,MaintenanceStatus,OperatorName,WeatherCondition,TemperatureCelsius,Comments,RecordedBy,RecordTimestamp,EnergyProvider,ContractType) VALUES
(501,10,'2023-05-01',1200.5,300.0,0.0,1500.5,2500.0,999.5,350.0,15000.0,98.5,'Operational','Sam','Sunny',22.5,'All systems nominal','Sam','2023-05-01 08:00:00','GreenEnergyCo','PPA');

INSERT INTO FacilityRenewableEnergyLog (LogID,FacilityID,Date,SolarGenerationKWh,WindGenerationKWh,HydroGenerationKWh,TotalRenewableKWh,GridConsumptionKWh,NetExportKWh,CarbonOffsetMetric,EnergyCostSavings,SystemAvailabilityPercent,MaintenanceStatus,OperatorName,WeatherCondition,TemperatureCelsius,Comments,RecordedBy,RecordTimestamp,EnergyProvider,ContractType) VALUES
(502,12,'2023-05-01',800.0,500.0,200.0,1500.0,2600.0,1100.0,400.0,17000.0,97.0,'Operational','Lia','Cloudy',18.0,'Wind turbines under review','Lia','2023-05-01 09:15:00','RenewablePowerInc','FixedRate');

INSERT INTO FacilityRenewableEnergyLog (LogID,FacilityID,Date,SolarGenerationKWh,WindGenerationKWh,HydroGenerationKWh,TotalRenewableKWh,GridConsumptionKWh,NetExportKWh,CarbonOffsetMetric,EnergyCostSavings,SystemAvailabilityPercent,MaintenanceStatus,OperatorName,WeatherCondition,TemperatureCelsius,Comments,RecordedBy,RecordTimestamp,EnergyProvider,ContractType) VALUES
(503,15,'2023-05-01',0.0,0.0,1200.0,1200.0,2000.0,800.0,250.0,12000.0,99.0,'Operational','Mike','Rainy',16.5,'Hydro flow stable','Mike','2023-05-01 07:45:00','HydroSourceCo','PPA');

-- DepartmentPerformanceIndicator stores KPI measurements per department
CREATE TABLE DepartmentPerformanceIndicator
(
    IndicatorID          INTEGER PRIMARY KEY,
    DepartmentID         INTEGER,
    Year                 INTEGER,
    Quarter              INTEGER,
    KPIName              TEXT,
    TargetValue          REAL,
    ActualValue          REAL,
    Variance             REAL,
    Trend                TEXT,
    ResponsibleManager   TEXT,
    DataSource           TEXT,
    LastUpdated          DATE,
    Comments             TEXT,
    BenchmarkValue       REAL,
    Rating               TEXT,
    WeightPercent        REAL,
    Goals                TEXT,
    ActionPlan           TEXT,
    ReviewCycle          TEXT,
    Status               TEXT
);

INSERT INTO DepartmentPerformanceIndicator (IndicatorID,DepartmentID,Year,Quarter,KPIName,TargetValue,ActualValue,Variance,Trend,ResponsibleManager,DataSource,LastUpdated,Comments,BenchmarkValue,Rating,WeightPercent,Goals,ActionPlan,ReviewCycle,Status) VALUES
(601,101,2023,1,'PatientThroughput',2000,1850,-150,'Down','Laura','HospitalInfoSys','2023-04-30','Slight dip due to staffing','2100','Medium',15.0,'Increase throughput','Hire temps','Quarterly','Active');

INSERT INTO DepartmentPerformanceIndicator (IndicatorID,DepartmentID,Year,Quarter,KPIName,TargetValue,ActualValue,Variance,Trend,ResponsibleManager,DataSource,LastUpdated,Comments,BenchmarkValue,Rating,WeightPercent,Goals,ActionPlan,ReviewCycle,Status) VALUES
(602,102,2023,1,'MedicationErrorRate',0.5,0.8,0.3,'Up','Mark','PharmacyDB','2023-04-30','Error rate above target','0.4','Low',10.0,'Reduce errors','Implement double-check','Monthly','Active');

INSERT INTO DepartmentPerformanceIndicator (IndicatorID,DepartmentID,Year,Quarter,KPIName,TargetValue,ActualValue,Variance,Trend,ResponsibleManager,DataSource,LastUpdated,Comments,BenchmarkValue,Rating,WeightPercent,Goals,ActionPlan,ReviewCycle,Status) VALUES
(603,103,2023,1,'EnergyConsumptionMWh',500,480,-20,'Down','Susan','EnergyMeter','2023-04-30','Savings from new HVAC','520','High',20.0,'Maintain low usage','Continue monitoring','Quarterly','Active');

-- MedicationDispensingLog records each dispensing event (no direct patient identifiers)
CREATE TABLE MedicationDispensingLog
(
    DispenseID            INTEGER PRIMARY KEY,
    MedicationID          INTEGER,
    BatchNumber           TEXT,
    QuantityDispensed     INTEGER,
    DispenseDate          DATE,
    PharmacyLocation      TEXT,
    DispensingStaffID     INTEGER,
    PrescriptionID        INTEGER,
    DispenseMethod        TEXT,
    VerificationStatus    TEXT,
    ExpirationDate        DATE,
    LotNumber             TEXT,
    UnitCost              REAL,
    TotalCost             REAL,
    ReasonCode            TEXT,
    Notes                 TEXT,
    CreatedTimestamp      DATETIME,
    UpdatedTimestamp      DATETIME,
    InventoryLocation     TEXT,
    DispenseReference     TEXT
);

INSERT INTO MedicationDispensingLog (DispenseID,MedicationID,BatchNumber,QuantityDispensed,DispenseDate,PharmacyLocation,DispensingStaffID,PrescriptionID,DispenseMethod,VerificationStatus,ExpirationDate,LotNumber,UnitCost,TotalCost,ReasonCode,Notes,CreatedTimestamp,UpdatedTimestamp,InventoryLocation,DispenseReference) VALUES
(701,301,'BATCH-A1',30,'2023-05-10','MainPharmacy',401,10001,'Manual','Verified','2024-12-31','LOT123',5.00,150.00,'Routine','No issues','2023-05-10 09:15:00','2023-05-10 09:20:00','ShelfA','REF-701');

INSERT INTO MedicationDispensingLog (DispenseID,MedicationID,BatchNumber,QuantityDispensed,DispenseDate,PharmacyLocation,DispensingStaffID,PrescriptionID,DispenseMethod,VerificationStatus,ExpirationDate,LotNumber,UnitCost,TotalCost,ReasonCode,Notes,CreatedTimestamp,UpdatedTimestamp,InventoryLocation,DispenseReference) VALUES
(702,302,'BATCH-B2',15,'2023-05-11','SatellitePharmacy',402,10002,'Automated','Verified','2025-03-15','LOT456',12.00,180.00,'Urgent','Handled under emergency protocol','2023-05-11 10:05:00','2023-05-11 10:07:00','Refrigerator1','REF-702');

INSERT INTO MedicationDispensingLog (DispenseID,MedicationID,BatchNumber,QuantityDispensed,DispenseDate,PharmacyLocation,DispensingStaffID,PrescriptionID,DispenseMethod,VerificationStatus,ExpirationDate,LotNumber,UnitCost,TotalCost,ReasonCode,Notes,CreatedTimestamp,UpdatedTimestamp,InventoryLocation,DispenseReference) VALUES
(703,303,'BATCH-C3',50,'2023-05-12','MainPharmacy',403,10003,'Manual','Pending','2024-06-30','LOT789',2.50,125.00','Research','Awaiting researcher sign‑off','2023-05-12 08:45:00','2023-05-12 08:50:00','ShelfB','REF-703');

-- ITInfrastructureAsset tracks hardware and software assets
CREATE TABLE ITInfrastructureAsset
(
    AssetID               INTEGER PRIMARY KEY,
    AssetTag              TEXT,
    AssetType             TEXT,
    Manufacturer          TEXT,
    Model                 TEXT,
    SerialNumber          TEXT,
    PurchaseDate          DATE,
    WarrantyEndDate       DATE,
    Location              TEXT,
    AssignedDepartment    TEXT,
    Status                TEXT,
    IPAddress             TEXT,
    MACAddress            TEXT,
    OSVersion             TEXT,
    FirmwareVersion       TEXT,
    LastPatchDate         DATE,
    AssetValue            REAL,
    DepreciationYears    INTEGER,
    Owner                 TEXT,
    Notes                 TEXT
);

INSERT INTO ITInfrastructureAsset (AssetID,AssetTag,AssetType,Manufacturer,Model,SerialNumber,PurchaseDate,WarrantyEndDate,Location,AssignedDepartment,Status,IPAddress,MACAddress,OSVersion,FirmwareVersion,LastPatchDate,AssetValue,DepreciationYears,Owner,Notes) VALUES
(801,'IT-001','Server','Dell','PowerEdge R740','SN7001','2021-02-15','2024-02-15','DataCenter1','IT','Active','10.0.0.5','AA:BB:CC:DD:EE:01','Ubuntu20.04','FW-1.2','2023-12-01',25000.00,5,'ITDept','Primary database server');

INSERT INTO ITInfrastructureAsset (AssetID,AssetTag,AssetType,Manufacturer,Model,SerialNumber,PurchaseDate,WarrantyEndDate,Location,AssignedDepartment,Status,IPAddress,MACAddress,OSVersion,FirmwareVersion,LastPatchDate,AssetValue,DepreciationYears,Owner,Notes) VALUES
(802,'IT-002','Workstation','HP','EliteDesk 800','SN7002','2022-06-20','2025-06-20','Office3','Radiology','Active','10.0.1.22','AA:BB:CC:DD:EE:02','Windows10','FW-3.4','2023-11-15',1800.00,3,'RadiologyDept','Imaging workstation');

INSERT INTO ITInfrastructureAsset (AssetID,AssetTag,AssetType,Manufacturer,Model,SerialNumber,PurchaseDate,WarrantyEndDate,Location,AssignedDepartment,Status,IPAddress,MACAddress,OSVersion,FirmwareVersion,LastPatchDate,AssetValue,DepreciationYears,Owner,Notes) VALUES
(803,'IT-003','NetworkSwitch','Cisco','Catalyst 9200','SN7003','2020-09-01','2023-09-01','ServerRoom','IT','Active','10.0.2.1','AA:BB:CC:DD:EE:03','N/A','FW-2.1','2023-10-20',5000.00,4,'ITDept','Core network switch');

-- ResearchDataAccessLog records accesses to research datasets
CREATE TABLE ResearchDataAccessLog
(
    AccessLogID           INTEGER PRIMARY KEY,
    ProjectID             INTEGER,
    DatasetID             INTEGER,
    UserID                INTEGER,
    AccessType            TEXT,
    AccessTimestamp       DATETIME,
    IPAddress             TEXT,
    Purpose               TEXT,
    DataVolumeMB          REAL,
    ApprovedBy            INTEGER,
    ApprovalTimestamp     DATETIME,
    ExpirationDate        DATE,
    AccessStatus          TEXT,
    Comments              TEXT,
    DataClassification    TEXT,
    EncryptionUsed        TEXT,
    AccessMethod          TEXT,
    SessionID             TEXT,
    RecordCreated          DATETIME,
    RecordUpdated          DATETIME
);

INSERT INTO ResearchDataAccessLog (AccessLogID,ProjectID,DatasetID,UserID,AccessType,AccessTimestamp,IPAddress,Purpose,DataVolumeMB,ApprovedBy,ApprovalTimestamp,ExpirationDate,AccessStatus,Comments,DataClassification,EncryptionUsed,AccessMethod,SessionID,RecordCreated,RecordUpdated) VALUES
(901,2001,3001,4001,'Read','2023-05-12 09:00:00','192.168.10.10','StatisticalAnalysis',250.5,5001,'2023-05-12 08:45:00','2023-12-31','Approved','No issues','Confidential','AES256','SecurePortal','SID-901','2023-05-12 09:05:00','2023-05-12 09:05:00');

INSERT INTO ResearchDataAccessLog (AccessLogID,ProjectID,DatasetID,UserID,AccessType,AccessTimestamp,IPAddress,Purpose,DataVolumeMB,ApprovedBy,ApprovalTimestamp,ExpirationDate,AccessStatus,Comments,DataClassification,EncryptionUsed,AccessMethod,SessionID,RecordCreated,RecordUpdated) VALUES
(902,2002,3002,4002,'Write','2023-05-13 14:30:00','192.168.10.11','DataCuration',500.0,5002,'2023-05-13 14:00:00','2024-01-31','Approved','Added new records','Restricted','RSA2048','SecurePortal','SID-902','2023-05-13 14:35:00','2023-05-13 14:35:00');

INSERT INTO ResearchDataAccessLog (AccessLogID,ProjectID,DatasetID,UserID,AccessType,AccessTimestamp,IPAddress,Purpose,DataVolumeMB,ApprovedBy,ApprovalTimestamp,ExpirationDate,AccessStatus,Comments,DataClassification,EncryptionUsed,AccessMethod,SessionID,RecordCreated,RecordUpdated) VALUES
(903,2003,3003,4003,'Read','2023-05-14 11:20:00','192.168.10.12','ModelTraining',1024.8,5003,'2023-05-14 10:50:00','2024-06-30','Pending','Awaiting compliance review','Public','None','API','SID-903','2023-05-14 11:25:00','2023-05-14 11:25:00');