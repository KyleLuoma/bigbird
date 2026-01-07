-- Medical device lifecycle tracking
CREATE TABLE MedicalDeviceLifecycle (
    DeviceID                INTEGER NOT NULL,
    SerialNumber            TEXT,
    Model                   TEXT,
    Manufacturer            TEXT,
    PurchaseDate            DATE,
    WarrantyStart           DATE,
    WarrantyEnd             DATE,
    DeploymentDate          DATE,
    DecommissionDate        DATE,
    CurrentStatus           TEXT,
    Location                TEXT,
    LastMaintenanceDate     DATE,
    MaintenanceFreqDays     INTEGER,
    CalibrationStatus       TEXT,
    FirmwareVersion         TEXT,
    SoftwareVersion         TEXT,
    AssignedStaffID         INTEGER,
    InspectionScore         INTEGER,
    RiskLevel               TEXT,
    Notes                   TEXT,
    PRIMARY KEY (DeviceID)
);

INSERT INTO MedicalDeviceLifecycle VALUES (1,'SN1001','ModelA','MedCorp','2022-01-15','2022-01-15','2025-01-15','2022-02-01',NULL,'Active','ICU-1','2023-06-10',180,'Calibrated','v1.2','s1.0',10,95,'Low','Initial deployment');
INSERT INTO MedicalDeviceLifecycle VALUES (2,'SN1002','ModelB','HealthTech','2021-05-20','2021-05-20','2024-05-20','2021-06-05','2024-07-01','Decommissioned','Radiology','2024-06-20',365,'NotCalibrated','v2.0','s2.1',12,80,'Medium','Retired after upgrade');
INSERT INTO MedicalDeviceLifecycle VALUES (3,'SN1003','ModelC','BioMed','2023-03-10','2023-03-10','2026-03-10','2023-04-01',NULL,'Active','Ward-3','2023-09-15',90,'Calibrated','v1.0','s1.5',15,88,'Low','Routine use');

-- Pharmacy quality control records
CREATE TABLE PharmacyQualityControl (
    QCRecordID              INTEGER NOT NULL,
    BatchNumber             TEXT,
    MedicationName          TEXT,
    SupplierID              INTEGER,
    ReceivedDate            DATE,
    ExpirationDate          DATE,
    StorageTemperature      REAL,
    HumidityLevel           REAL,
    VisualInspectionScore   INTEGER,
    MicrobialTestResult     TEXT,
    PotencyPercent          REAL,
    TabletWeightMean        REAL,
    TabletWeightStdDev      REAL,
    DissolutionTimeSec      INTEGER,
    AppearanceCode          TEXT,
    PackagingIntegrity      TEXT,
    QAReviewerID            INTEGER,
    ReviewDate              DATE,
    ApprovalStatus          TEXT,
    Comments                TEXT,
    PRIMARY KEY (QCRecordID)
);

INSERT INTO PharmacyQualityControl VALUES (101,'BATCH001','Aspirin',201,'2023-01-05','2025-01-05',22.5,45.0,98,'Pass',99.5,0.35,0.02,30,'A','Intact',301,'2023-01-07','Approved','All parameters within spec');
INSERT INTO PharmacyQualityControl VALUES (102,'BATCH002','Metformin',202,'2023-02-10','2024-02-10',24.0,50.0,95,'Pass',98.0,0.40,0.03,45,'B','Intact',302,'2023-02-12','Approved','Slightly lower dissolution time');
INSERT INTO PharmacyQualityControl VALUES (103,'BATCH003','Lisinopril',203,'2023-03-15','2025-03-15',20.0,40.0,92,'Fail',95.0,0.38,0.025,60,'C','Damaged',303,'2023-03-18','Rejected','Packaging breach detected');

-- Biomedical research grant information
CREATE TABLE BiomedicalResearchGrant (
    GrantID                 INTEGER NOT NULL,
    GrantTitle              TEXT,
    FundingAgency           TEXT,
    PrincipalInvestigator   TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    TotalAmountUSD          REAL,
    AnnualBudgetUSD         REAL,
    GrantStatus             TEXT,
    ReviewScore             INTEGER,
    ResearchArea            TEXT,
    SubArea                 TEXT,
    AwardNumber             TEXT,
    FundingType             TEXT,
    CollaborationFlag       TEXT,
    NumCoInvestigators      INTEGER,
    ReportingFrequency      TEXT,
    LastReportDate          DATE,
    ExtensionRequested      TEXT,
    ExtensionApproved       TEXT,
    PRIMARY KEY (GrantID)
);

INSERT INTO BiomedicalResearchGrant VALUES (5001,'Genomic Biomarkers','NIH','DrSmith','2022-07-01','2025-06-30',1500000,500000,'Active',88,'Genomics','Cancer','R01CA123456','Federal','Yes',4,'Quarterly','2024-01-15','No','N/A');
INSERT INTO BiomedicalResearchGrant VALUES (5002,'Neurodegeneration Study','NSF','DrLee','2021-01-15','2024-01-14',900000,300000,'Completed',91,'Neurology','Alzheimer','NSF-1901234','Federal','No',2,'Annual','2023-12-01','Yes','Approved');
INSERT INTO BiomedicalResearchGrant VALUES (5003,'Immunotherapy Platform','DARPA','DrKhan','2023-03-01','2027-02-28',2000000,500000,'Active',85,'Immunology','Therapeutics','DARPA-IMMT2023','Defense','Yes',5,'SemiAnnual','2024-06-10','Yes','Pending');

-- Hospital infrastructure assets
CREATE TABLE HospitalInfrastructureAsset (
    AssetID                 INTEGER NOT NULL,
    AssetType               TEXT,
    Description             TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    InstallationDate        DATE,
    WarrantyEndDate         DATE,
    CurrentCondition        TEXT,
    Location                TEXT,
    FloorNumber             INTEGER,
    RoomNumber              TEXT,
    MaintenanceCycleMonths  INTEGER,
    LastMaintenanceDate     DATE,
    NextMaintenanceDue      DATE,
    AssetValueUSD           REAL,
    DepreciationRatePercent REAL,
    AssignedDepartment      TEXT,
    ComplianceStatus        TEXT,
    Notes                   TEXT,
    PRIMARY KEY (AssetID)
);

INSERT INTO HospitalInfrastructureAsset VALUES (8001,'HVAC','Main building HVAC system','Carrier','HV-3000','HV3000SN001','2018-05-10','2028-05-10','Good','Central','1','N/A',12,'2024-04-01','2024-12-01',2500000,5,'Facilities','Compliant','Regular service performed');
INSERT INTO HospitalInfrastructureAsset VALUES (8002,'Elevator','Patient transport elevator','Otis','EL-200','EL200SN045','2016-09-20','2026-09-20','Fair','East Wing','2','E2',6,'2024-02-15','2024-08-15',500000,7,'Operations','Compliant','Minor wear observed');
INSERT INTO HospitalInfrastructureAsset VALUES (8003,'Generator','Backup power generator','GE','GEN-500','GEN500SN098','2020-01-05','2030-01-05','Excellent','Basement','B','G1',24,'2024-01-20','2025-01-20',1200000,4,'Engineering','Compliant','Test run successful');

-- Patient mobility assessment records
CREATE TABLE PatientMobilityAssessment (
    AssessmentID            INTEGER NOT NULL,
    PatientID               INTEGER,
    AssessmentDate          DATE,
    GaitScore               INTEGER,
    BalanceScore            INTEGER,
    TransferScore           INTEGER,
    UseOfAssistiveDevice    TEXT,
    DeviceType              TEXT,
    DistanceWalkingMeters   INTEGER,
    TimeToComplete30SecWalk INTEGER,
    PainLevelDuringTest     INTEGER,
    FallsInLastMonth        INTEGER,
    PhysicalTherapistID     INTEGER,
    Notes                   TEXT,
    FollowUpRequired        TEXT,
    FollowUpDate            DATE,
    MobilityPlanID          INTEGER,
    ReassessmentDate        DATE,
    MobilityLevel           TEXT,
    DischargeRecommendation TEXT,
    PRIMARY KEY (AssessmentID)
);

INSERT INTO PatientMobilityAssessment VALUES (9001,1,'2023-06-01',8,7,9,'Yes','Walker',250,30,2,0,45,'Improved gait','Yes','2023-06-15',301,'2023-09-01','Independent','Discharge planned in 2 weeks');
INSERT INTO PatientMobilityAssessment VALUES (9002,2,'2023-06-10',5,4,6,'Yes','Cane',120,45,4,1,46,'Needs balance training','Yes','2023-06-25',302,'2023-09-10','Assisted','Delay discharge for rehab');
INSERT INTO PatientMobilityAssessment VALUES (9003,3,'2023-06-20',9,8,10,'No','None',300,25,1,0,47,'Excellent mobility','No',NULL,303,NULL,'Independent','Ready for discharge');

-- Population health metrics
CREATE TABLE PopulationHealthMetric (
    MetricID                INTEGER NOT NULL,
    MetricName              TEXT,
    Description             TEXT,
    Unit                    TEXT,
    CalculationMethod       TEXT,
    DataSource              TEXT,
    CollectionFrequency     TEXT,
    LastUpdatedDate         DATE,
    ValueNumeric            REAL,
    ValueText               TEXT,
    BenchmarkTarget        REAL,
    CurrentYear             INTEGER,
    Region                  TEXT,
    AgeGroup                TEXT,
    Gender                  TEXT,
    SocioEconomicStatus     TEXT,
    RiskLevel               TEXT,
    ActionPlanID            INTEGER,
    ResponsibleDept         TEXT,
    Notes                   TEXT,
    PRIMARY KEY (MetricID)
);

INSERT INTO PopulationHealthMetric VALUES (11001,'VaccinationRate','Percentage of population fully vaccinated','%','(Vaccinated/Total)*100','ImmunizationRegistry','Quarterly','2024-01-01',85.5,NULL,90,2024,'RegionA','All','All','All','Medium',401,'PublicHealth','Slightly below target');
INSERT INTO PopulationHealthMetric VALUES (11002,'HypertensionPrevalence','Proportion of adults with hypertension','%','(Hypertensive/Adults)*100','ElectronicHealthRecords','Annual','2023-12-31',28.3,NULL,25,2023,'RegionB','Adults','All','All','High',402,'Cardiology','Above target, requires intervention');
INSERT INTO PopulationHealthMetric VALUES (11003,'ObesityRate','Adult obesity prevalence','%','(Obese/Adults)*100','HealthSurvey','Annual','2023-12-31',34.0,NULL,30,2023,'RegionC','Adults','All','All','High',403,'Nutrition','Exceeds benchmark');

-- Radiology quality assurance log
CREATE TABLE RadiologyQualityAssuranceLog (
    QAID                    INTEGER NOT NULL,
    StudyID                 INTEGER,
    Modality                TEXT,
    AcquisitionDate         DATE,
    ImageQualityScore       INTEGER,
    ArtifactPresence        TEXT,
    DoseMetric_mGy          REAL,
    ContrastUsed            TEXT,
    ProtocolCompliance      TEXT,
    ReviewerID              INTEGER,
    ReviewDate              DATE,
    FindingsSummary         TEXT,
    ActionTaken             TEXT,
    FollowUpRequired        TEXT,
    FollowUpDate            DATE,
    MachineID               INTEGER,
    SoftwareVersion         TEXT,
    CalibrationDate         DATE,
    Notes                   TEXT,
    Status                  TEXT,
    PRIMARY KEY (QAID)
);

INSERT INTO RadiologyQualityAssuranceLog VALUES (2001,5001,'CT','2024-02-10',9,'None',12.5,'Iodine','Yes',101,'2024-02-12','Excellent image quality','None','No',NULL,301,'v3.2','2023-12-01','Routine check','Closed');
INSERT INTO RadiologyQualityAssuranceLog VALUES (2002,5002,'MRI','2024-03-05',7,'Minor motion artifact',0.0,'Gadolinium','No',102,'2024-03-07','Adequate but note artifact','Repeat scan advised','Yes','2024-03-15',302,'v2.9','2023-11-15','Artifact observed','Open');
INSERT INTO RadiologyQualityAssuranceLog VALUES (2003,5003,'XRay','2024-01-20',8,'None',0.8,'None','Yes',103,'2024-01-22','Good quality','None','No',NULL,303,'v1.5','2023-10-30','Standard', 'Closed');

-- Laboratory standard operating procedures
CREATE TABLE LaboratoryStandardOperatingProcedure (
    SOPID                   INTEGER NOT NULL,
    ProcedureName           TEXT,
    Department              TEXT,
    EffectiveDate           DATE,
    ReviewDate              DATE,
    ReviewerID              INTEGER,
    DocumentVersion         TEXT,
    AuthorID                INTEGER,
    Purpose                 TEXT,
    Scope                   TEXT,
    Responsibilities        TEXT,
    MaterialsRequired       TEXT,
    EquipmentNeeded         TEXT,
    SafetyPrecautions       TEXT,
    Step1                   TEXT,
    Step2                   TEXT,
    Step3                   TEXT,
    Step4                   TEXT,
    Step5                   TEXT,
    ChangeControlNumber     TEXT,
    PRIMARY KEY (SOPID)
);

INSERT INTO LaboratoryStandardOperatingProcedure VALUES (3001,'Serum Glucose Measurement','Clinical Chemistry','2023-01-01','2024-01-01',401,'v2.1',501,'Determine patient glucose levels','All serum samples','Lab Technicians','Glucose test strips, calibrators','Auto-analyzer','Wear gloves, avoid contamination','Collect serum','Place tube in analyzer','Run calibration','Record result','Verify result','SOP-GLU-2023-01');
INSERT INTO LaboratoryStandardOperatingProcedure VALUES (3002,'CBC Analysis','Hematology','2022-06-15','2024-02-15',402,'v3.0',502,'Complete blood count','Whole blood samples','Lab Technicians','EDTA tubes','Hematology analyzer','Use biosafety cabinet','Collect blood','Load sample','Run analysis','Review results','Report to physician','SOP-CBC-2022-06');
INSERT INTO LaboratoryStandardOperatingProcedure VALUES (3003,'Urine Culture','Microbiology','2021-09-10','2023-12-10',403,'v1.5',503,'Identify urinary pathogens','Urine specimens','Micro Lab Technicians','Culture media, incubator','Incubator, microscope','Handle aseptically','Collect specimen','Inoculate media','Incubate 24-48h','Read plates','Report findings','SOP-URINE-2021-09');

-- Supply chain vendor scorecard
CREATE TABLE SupplyChainVendorScorecard (
    ScorecardID             INTEGER NOT NULL,
    VendorID                INTEGER,
    EvaluationPeriodStart   DATE,
    EvaluationPeriodEnd     DATE,
    OnTimeDeliveryPct      REAL,
    OrderAccuracyPct        REAL,
    QualityDefectRatePct    REAL,
    ResponsivenessScore     INTEGER,
    CostCompetitivenessScore INTEGER,
    SustainabilityScore     INTEGER,
    CommunicationScore      INTEGER,
    OverallScore            REAL,
    ReviewerID              INTEGER,
    ReviewDate              DATE,
    Comments                TEXT,
    ActionPlanID            INTEGER,
    FollowUpDate            DATE,
    Status                  TEXT,
    LastUpdatedTimestamp    DATETIME,
    Notes                   TEXT,
    PRIMARY KEY (ScorecardID)
);

INSERT INTO SupplyChainVendorScorecard VALUES (4001,201,'2023-01-01','2023-12-31',95.0,98.5,0.5,9,8,7,9,88.3,301,'2024-01-10','Excellent performance','501','2024-06-01','Closed','2024-01-10 10:00:00','No issues');
INSERT INTO SupplyChainVendorScorecard VALUES (4002,202,'2023-01-01','2023-12-31',88.0,92.0,1.2,7,6,5,8,73.4,302,'2024-01-12','Improvement needed in delivery','502','2024-07-15','Open','2024-01-12 11:30:00','Late deliveries observed');
INSERT INTO SupplyChainVendorScorecard VALUES (4003,203,'2023-01-01','2023-12-31',80.0,85.0,2.0,5,5,4,7,61.8,303,'2024-01-15','Poor quality defects','503','2024-08-01','Open','2024-01-15 09:45:00','Defect rate exceeds threshold');

-- Environmental impact report
CREATE TABLE EnvironmentalImpactReport (
    ReportID                INTEGER NOT NULL,
    ReportYear              INTEGER,
    FacilityID              INTEGER,
    CO2EmissionsTonnes      REAL,
    EnergyConsumptionMWh    REAL,
    WaterUsageCubicMeters   REAL,
    WasteGeneratedTonnes    REAL,
    RecyclingRatePct        REAL,
    HazardousWasteTonnes   REAL,
    AirQualityIndex         INTEGER,
    NoiseLevelDbA           REAL,
    GreenBuildingCertification TEXT,
    RenewableEnergyPct      REAL,
    EmissionReductionTargetPct REAL,
    ComplianceStatus        TEXT,
    ReportPreparedBy        TEXT,
    DatePrepared            DATE,
    ExecutiveSummary        TEXT,
    Recommendations         TEXT,
    ApprovalStatus          TEXT,
    PRIMARY KEY (ReportID)
);

INSERT INTO EnvironmentalImpactReport VALUES (5001,2023,1,1200.5,3500.0,80000.0,150.0,45.0,5.0,42,55.0,'LEED Gold',30.0,20.0,'Compliant','EnvTeamLead','2024-01-05','Yearly environmental performance','Increase recycling, expand solar','Approved');
INSERT INTO EnvironmentalImpactReport VALUES (5002,2023,2,950.0,2800.0,60000.0,120.0,50.0,3.0,38,48.0,'LEED Silver',25.0,15.0,'Compliant','EnvAnalyst','2024-01-07','Environmental metrics for secondary campus','Upgrade HVAC efficiency','Approved');
INSERT INTO EnvironmentalImpactReport VALUES (5003,2023,3,1500.0,4200.0,100000.0,200.0,40.0,7.0,45,60.0,'None',10.0,10.0,'Non-Compliant','EnvOfficer','2024-01-10','High emissions identified','Implement energy audit','Pending');