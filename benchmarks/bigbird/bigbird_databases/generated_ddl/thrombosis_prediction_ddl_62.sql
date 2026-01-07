-- Radiology safety checklist for equipment inspections
CREATE TABLE RadiologySafetyChecklist
(
    ChecklistID           INTEGER PRIMARY KEY,
    InspectionDate        DATE,
    RadiologyTechID       INTEGER,
    EquipmentID           INTEGER,
    ChecklistVersion      TEXT,
    ShieldingIntegrity    INTEGER,
    LeadBarrierStatus     TEXT,
    XRayTubeCondition     TEXT,
    CollimatorAlignment   TEXT,
    RoomTemperature       REAL,
    RoomHumidity          REAL,
    PowerSupplyStatus     TEXT,
    InterlockFunctionality TEXT,
    WarningLights         INTEGER,
    EmergencyStopTest     INTEGER,
    CalibrationDueDate    DATE,
    Comments              TEXT,
    AuditorName           TEXT,
    FacilitySection       TEXT,
    FollowUpActions       TEXT
);

INSERT INTO RadiologySafetyChecklist VALUES (1,'2024-03-15',101,5001,'v1',1,'OK','Good','Aligned',22.5,45.0,'Stable','Operational',1,1,'2024-06-01','All good','JohnDoe','Imaging','None');
INSERT INTO RadiologySafetyChecklist VALUES (2,'2024-04-20',102,5002,'v1',0,'RepairNeeded','Fair','Misaligned',23.0,48.0,'Unstable','NeedsRepair',0,0,'2024-07-15','Leak observed','JaneSmith','Radiology','Repair scheduled');
INSERT INTO RadiologySafetyChecklist VALUES (3,'2024-05-10',103,5003,'v2',1,'OK','Excellent','Aligned',21.8,44.5,'Stable','Operational',1,1,'2024-08-01','No issues','MikeBrown','CT','None');

-- Funding records for clinical research projects
CREATE TABLE ClinicalResearchFunding
(
    FundingID               INTEGER PRIMARY KEY,
    GrantTitle              TEXT,
    FundingAgency           TEXT,
    Amount                  REAL,
    Currency                TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    PrincipalInvestigator  TEXT,
    Department              TEXT,
    AwardNumber             TEXT,
    FundingStatus           TEXT,
    PublicationRequirement TEXT,
    ReportingFrequency      TEXT,
    ContactEmail            TEXT,
    ContactPhone            TEXT,
    ReviewScore             INTEGER,
    EligibilityCriteria    TEXT,
    BudgetBreakdown         TEXT,
    PayableInInstallments   INTEGER,
    Notes                   TEXT
);

INSERT INTO ClinicalResearchFunding VALUES (1001,'HeartStudy','NationalHealth','250000','USD','2023-01-01','2025-12-31','DrAlice','Cardiology','H12345','Active','Two papers','Quarterly','alice@example.com','5551234',85,'Open to all','Detailed','1','Initial grant awarded');
INSERT INTO ClinicalResearchFunding VALUES (1002,'NeuroImaging','ScienceFoundation','180000','EUR','2022-06-15','2024-06-14','DrBob','Neurology','N98765','Completed','One paper','Annual','bob@example.com','5555678',90,'EU institutions only','Summary','0','Grant closed');
INSERT INTO ClinicalResearchFunding VALUES (1003,'OncologyTrial','CancerOrg','500000','USD','2024-02-01','2027-01-31','DrCarol','Oncology','C54321','Pending','Three papers','SemiAnnual','carol@example.com','5559012',78,'US institutions only','Itemized','1','Awaiting approval');

-- Biomechanical assessment of medical devices
CREATE TABLE BiomechanicalAssessment
(
    AssessmentID          INTEGER PRIMARY KEY,
    AssessmentDate        DATE,
    DeviceID              INTEGER,
    AssessmentLocation   TEXT,
    TechnicianName        TEXT,
    LoadCapacity          REAL,
    VibrationLevel        REAL,
    AlignmentError        REAL,
    TemperatureC          REAL,
    HumidityPercent       REAL,
    SafetyRating          INTEGER,
    Comments              TEXT,
    FollowUpRequired      INTEGER,
    NextAssessmentDate    DATE,
    CalibrationStatus     TEXT,
    FirmwareVersion       TEXT,
    PowerConsumption      REAL,
    OperatingHours        INTEGER,
    MaintenanceDueDate    DATE,
    RiskLevel             TEXT,
    AssessmentMethod      TEXT
);

INSERT INTO BiomechanicalAssessment VALUES (2001,'2024-01-12',3001,'ICU','TechA',1500.0,0.02,0.1,22.0,40.0,5,'All parameters within limits',0,'2025-01-12','Calibrated','v1.2',120.5,5000,'2024-12-01','Low','StaticLoad');
INSERT INTO BiomechanicalAssessment VALUES (2002,'2024-02-20',3002,'OR','TechB',2000.0,0.05,0.3,23.5,42.0,4,'Minor vibration increase',1,'2024-08-20','Pending','v2.0',130.0,3000,'2024-07-15','Medium','DynamicLoad');
INSERT INTO BiomechanicalAssessment VALUES (2003,'2024-03-05',3003,'Radiology','TechC',1800.0,0.01,0.05,21.5,38.0,5,'Excellent condition',0,'2025-03-05','Calibrated','v1.5',115.0,4000,'2025-02-01','Low','StaticLoad');

-- Audit of hospital infrastructure elements
CREATE TABLE HospitalInfrastructureAudit
(
    AuditID               INTEGER PRIMARY KEY,
    AuditDate             DATE,
    AuditorName           TEXT,
    BuildingWing          TEXT,
    FloorNumber           INTEGER,
    AreaSqM               REAL,
    StructuralIntegrity   INTEGER,
    ElectricalSystemStatus TEXT,
    HVACStatus            TEXT,
    FireSafetyCompliance  INTEGER,
    EmergencyExitCount    INTEGER,
    AccessibilityScore    INTEGER,
    LightingLevel         REAL,
    NoiseLevel            REAL,
    WaterPressure         REAL,
    EnergyConsumptionKWh  REAL,
    WasteManagementScore  INTEGER,
    SustainabilityScore   INTEGER,
    Recommendations       TEXT,
    FollowUpDate          DATE,
    OverallScore          INTEGER
);

INSERT INTO HospitalInfrastructureAudit VALUES (3001,'2024-04-01','LauraGreen','NorthWing',2,850.0,5,'Normal','Optimal',5,3,8,300.0,45.0,3.5,12000.0,7,9,'Upgrade filters','2024-07-01',85);
INSERT INTO HospitalInfrastructureAudit VALUES (3002,'2024-05-15','MarkWhite','SouthWing',3,1200.0,4,'Issues','Suboptimal',4,2,6,250.0,55.0,3.2,15000.0,5,7,'Replace HVAC units','2024-09-01',78);
INSERT INTO HospitalInfrastructureAudit VALUES (3003,'2024-06-20','EmilyBlue','EastWing',1,600.0,5,'Normal','Optimal',5,4,9,280.0,40.0,3.8,9000.0,8,9,'No action needed','2024-10-01',92);

-- Requests to exchange staff work shifts
CREATE TABLE StaffShiftExchange
(
    ExchangeID            INTEGER PRIMARY KEY,
    RequestDate           DATE,
    RequestingStaffID    INTEGER,
    RespondingStaffID    INTEGER,
    ShiftDate            DATE,
    OriginalShift        TEXT,
    RequestedShift       TEXT,
    Reason               TEXT,
    ApprovalStatus       TEXT,
    ApprovedBy           TEXT,
    ApprovalDate         DATE,
    ExchangeNotes        TEXT,
    DurationHours        REAL,
    Department           TEXT,
    Location             TEXT,
    ContactPhone         TEXT,
    ContactEmail         TEXT,
    RecurrencePattern    TEXT,
    ExchangeOutcome      TEXT,
    CancelledFlag        INTEGER
);

INSERT INTO StaffShiftExchange VALUES (4001,'2024-02-10',501,502,'2024-03-01','Night','Day','Family emergency','Approved','SupervisorA','2024-02-12','Swap approved','8','Emergency','MainWing','5551111','swap1@example.com','None','Completed',0);
INSERT INTO StaffShiftExchange VALUES (4002,'2024-03-05',503,504,'2024-03-15','Day','Night','Training course','Pending','',NULL,'Awaiting manager review','8','Surgery','SouthWing','5552222','swap2@example.com','Weekly','Pending',0);
INSERT INTO StaffShiftExchange VALUES (4003,'2024-04-01',505,506,'2024-04-10','Evening','Morning','Personal request','Rejected','SupervisorB','2024-04-02','Insufficient coverage','8','Pediatrics','EastWing','5553333','swap3@example.com','None','Rejected',0);

-- Log of errors occurring during pharmacy compounding
CREATE TABLE PharmacyCompoundingErrorLog
(
    ErrorLogID                INTEGER PRIMARY KEY,
    ErrorDate                 DATE,
    CompoundBatchID           INTEGER,
    MedicationName            TEXT,
    Strength                  TEXT,
    VolumeML                  REAL,
    ErrorType                 TEXT,
    DetectedBy                TEXT,
    DetectionMethod           TEXT,
    SeverityLevel             INTEGER,
    RootCause                 TEXT,
    CorrectiveAction          TEXT,
    ActionOwner               TEXT,
    CompletionDate            DATE,
    NotificationSent          INTEGER,
    RegulatoryReportSubmitted INTEGER,
    AdditionalNotes           TEXT,
    ImpactedPatients          INTEGER,
    RecallInitiated           INTEGER,
    Status                    TEXT
);

INSERT INTO PharmacyCompoundingErrorLog VALUES (5001,'2024-01-20',7001,'Amoxicillin','500mg',250.0,'ConcentrationError','PharmacistA','Visual','3','Mislabeling','Recompound','PharmacistA','2024-01-22',1,0,'Batch held','0','0','Open');
INSERT INTO PharmacyCompoundingErrorLog VALUES (5002,'2024-02-15',7002,'Heparin','1000U',100.0,'Contamination','TechB','MicrobialTest','4','Equipment failure','Discard batch','QualityTeam','2024-02-18',1,1,'Investigation ongoing','2','1','Closed');
INSERT INTO PharmacyCompoundingErrorLog VALUES (5003,'2024-03-10',7003,'Insulin','10U',50.0,'WrongVolume','PharmacistC','AutomatedCheck','2','Operator error','Adjust dosage','PharmacistC','2024-03-11',1,0,'No patient exposure','0','0','Resolved');

-- Preferred meals and dietary settings for hospitalized individuals
CREATE TABLE PatientMealPreference
(
    PreferenceID           INTEGER PRIMARY KEY,
    RecordDate             DATE,
    RoomNumber             TEXT,
    DietaryPlanID          INTEGER,
    PreferredCuisine       TEXT,
    DietaryRestrictions    TEXT,
    MealTimingPreference   TEXT,
    SnackPreference        TEXT,
    BeveragePreference     TEXT,
    AllergyInfo            TEXT,
    SodiumPreference       TEXT,
    SugarPreference        TEXT,
    FatPreference          TEXT,
    ProteinPreference      TEXT,
    CalorieTarget          INTEGER,
    VitaminSupplement      TEXT,
    Comments               TEXT,
    UpdatedBy              TEXT,
    UpdateTimestamp        DATETIME,
    Status                 TEXT
);

INSERT INTO PatientMealPreference VALUES (6001,'2024-02-01','A101',10,'Italian','LowSalt','Morning','Fruit','Water','None','Low','Medium','Low','High',1800,'VitaminC','No issues','DietitianA','2024-02-02 08:00:00','Active');
INSERT INTO PatientMealPreference VALUES (6002,'2024-03-05','B202',12,'Asian','GlutenFree','Evening','Nuts','Tea','Medium','Low','Medium','Medium',2000,'VitaminD','Prefers soft foods','DietitianB','2024-03-06 09:30:00','Active');
INSERT INTO PatientMealPreference VALUES (6003,'2024-04-10','C303',15,'Mexican','Diabetic','Afternoon','Yogurt','Juice','Lactose','Low','Low','Low','Low',1500,'None','Requires sugar monitoring','DietitianC','2024-04-11 10:15:00','Active');

-- Sustainability metrics collected across the facility
CREATE TABLE EnvironmentalSustainabilityMetric
(
    MetricID               INTEGER PRIMARY KEY,
    MetricDate             DATE,
    MetricName             TEXT,
    Unit                   TEXT,
    Value                  REAL,
    TargetValue            REAL,
    Variance               REAL,
    Department             TEXT,
    FacilitySection        TEXT,
    DataSource             TEXT,
    CollectedBy            TEXT,
    VerificationStatus     TEXT,
    Comments               TEXT,
    Year                   INTEGER,
    Quarter                INTEGER,
    Month                  INTEGER,
    Week                   INTEGER,
    SustainabilityGoal     TEXT,
    Initiative             TEXT,
    ResponsiblePerson      TEXT,
    LastUpdated            DATE
);

INSERT INTO EnvironmentalSustainabilityMetric VALUES (7001,'2024-01-31','EnergyUse','kWh',12000.0,11500.0,500.0,'Facilities','NorthWing','Meter','EngineerA','Verified','Slight increase','2024',1,1,5,'Reduce consumption','LEDUpgrade','ManagerA','2024-02-01');
INSERT INTO EnvironmentalSustainabilityMetric VALUES (7002,'2024-02-28','WaterUsage','Liters',350000.0,340000.0,10000.0,'Facilities','SouthWing','Meter','EngineerB','Verified','Leak fixed','2024',1,2,9,'Conserve water','LowFlowFittings','ManagerB','2024-03-01');
INSERT INTO EnvironmentalSustainabilityMetric VALUES (7003,'2024-03-31','WasteRecycled','Percent',78.0,80.0,2.0,'Facilities','EastWing','Audit','EngineerC','Pending','Improvement plan','2024',1,3,13,'Zero waste','CompostingProgram','ManagerC','2024-04-01');

-- Schedule for decommissioning outdated medical equipment
CREATE TABLE MedicalEquipmentDecommissionSchedule
(
    DecommissionID          INTEGER PRIMARY KEY,
    EquipmentID             INTEGER,
    EquipmentName           TEXT,
    DecommissionDate        DATE,
    Reason                  TEXT,
    ReplacementEquipmentID  INTEGER,
    ReplacementEquipmentName TEXT,
    CostEstimate            REAL,
    DeptResponsible         TEXT,
    ApprovalStatus          TEXT,
    ApprovedBy              TEXT,
    ApprovalDate            DATE,
    DecommissionNotes       TEXT,
    DisposalMethod          TEXT,
    RecyclingPartner        TEXT,
    HazardousMaterialFlag  INTEGER,
    NotificationSent        INTEGER,
    FollowUpInspectionDate  DATE,
    Status                  TEXT,
    LastUpdated             DATETIME
);

INSERT INTO MedicalEquipmentDecommissionSchedule VALUES (8001,9001,'XRayMachine','2024-06-30','Obsolete','9002','DigitalXRay','25000.0','Radiology','Approved','DirectorA','2024-04-15','Remove old unit','Scrap','EcoRecycle','1','1','2024-07-15','Completed','2024-04-20 12:00:00');
INSERT INTO MedicalEquipmentDecommissionSchedule VALUES (8002,9003,'OldVentilator','2025-01-15','Recall','9004','AdvancedVentilator','50000.0','ICU','Pending','',NULL,'Awaiting recall notice','Return','VendorRecycle','1','0',NULL,'Pending','2024-04-22 09:30:00');
INSERT INTO MedicalEquipmentDecommissionSchedule VALUES (8003,9005,'Defibrillator','2024-12-01','Upgrade','9006','SmartDefibrillator','15000.0','Emergency','Approved','DirectorB','2024-05-10','Install new unit first','Donate','CharityOrg','0','1','2024-12-15','Scheduled','2024-05-12 15:45:00');

-- Risk scores derived from clinical outcome analyses
CREATE TABLE ClinicalOutcomeRiskScore
(
    ScoreID               INTEGER PRIMARY KEY,
    AssessmentDate        DATE,
    PatientGroup          TEXT,
    Condition             TEXT,
    RiskScore             REAL,
    ScoreMethod           TEXT,
    DataSource            TEXT,
    SampleSize            INTEGER,
    ConfidenceIntervalLow REAL,
    ConfidenceIntervalHigh REAL,
    Interpretation        TEXT,
    RecommendedAction     TEXT,
    AnalystName           TEXT,
    ReviewDate            DATE,
    ValidationStatus      TEXT,
    ModelVersion           TEXT,
    Notes                 TEXT,
    UpdatedBy             TEXT,
    UpdateTimestamp       DATETIME,
    Status                TEXT
);

INSERT INTO ClinicalOutcomeRiskScore VALUES (9001,'2024-01-15','Adult','Hypertension',0.78,'LogisticRegression','EHR','1200',0.70,0.86,'High risk','Intensify monitoring','AnalystA','2024-01-20','Validated','v1.0','Model stable','ManagerA','2024-01-21 10:00:00','Active');
INSERT INTO ClinicalOutcomeRiskScore VALUES (9002,'2024-02-10','Pediatric','Asthma',0.45,'RandomForest','Registry','800',0.38,0.52,'Moderate risk','Adjust medication','AnalystB','2024-02-12','Validated','v1.1','Slight drift observed','ManagerB','2024-02-13 11:30:00','Active');
INSERT INTO ClinicalOutcomeRiskScore VALUES (9003,'2024-03-05','Senior','Diabetes',0.62,'NeuralNetwork','Claims','1500',0.55,0.69,'Elevated risk','Lifestyle counseling','AnalystC','2024-03-07','PendingReview','v2.0','Awaiting external validation','ManagerC','2024-03-08 09:45:00','Pending');