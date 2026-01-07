-- Table storing inventory details of patient mobility devices such as walkers or wheelchairs
CREATE TABLE PatientMobilityDeviceInventory
(
    DeviceID                     INTEGER PRIMARY KEY,
    DeviceType                   TEXT,
    Manufacturer                 TEXT,
    ModelNumber                  TEXT,
    SerialNumber                 TEXT,
    PurchaseDate                 DATE,
    WarrantyEndDate              DATE,
    Location                     TEXT,
    Status                       TEXT,
    LastMaintenanceDate          DATE,
    MaintenanceIntervalDays      INTEGER,
    CalibrationDate              DATE,
    CalibrationDueDate           DATE,
    BatteryLifeHours            INTEGER,
    FirmwareVersion              TEXT,
    SoftwareVersion              TEXT,
    AssignedWardID               INTEGER,
    AllocationDate               DATE,
    DecommissionDate             DATE,
    Notes                        TEXT
);

INSERT INTO PatientMobilityDeviceInventory (DeviceID,DeviceType,Manufacturer,ModelNumber,SerialNumber,PurchaseDate,WarrantyEndDate,Location,Status,LastMaintenanceDate,MaintenanceIntervalDays,CalibrationDate,CalibrationDueDate,BatteryLifeHours,FirmwareVersion,SoftwareVersion,AssignedWardID,AllocationDate,DecommissionDate,Notes) VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,NULL,NULL,1000,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO PatientMobilityDeviceInventory (DeviceID,DeviceType,Manufacturer,ModelNumber,SerialNumber,PurchaseDate,WarrantyEndDate,Location,Status,LastMaintenanceDate,MaintenanceIntervalDays,CalibrationDate,CalibrationDueDate,BatteryLifeHours,FirmwareVersion,SoftwareVersion,AssignedWardID,AllocationDate,DecommissionDate,Notes) VALUES (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,365,NULL,NULL,800,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO PatientMobilityDeviceInventory (DeviceID,DeviceType,Manufacturer,ModelNumber,SerialNumber,PurchaseDate,WarrantyEndDate,Location,Status,LastMaintenanceDate,MaintenanceIntervalDays,CalibrationDate,CalibrationDueDate,BatteryLifeHours,FirmwareVersion,SoftwareVersion,AssignedWardID,AllocationDate,DecommissionDate,Notes) VALUES (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,90,NULL,NULL,1200,NULL,NULL,NULL,NULL,NULL,NULL);


-- Log of construction permits issued for hospital building projects
CREATE TABLE HospitalConstructionPermitLog
(
    PermitID                     INTEGER PRIMARY KEY,
    ProjectName                  TEXT,
    Contractor                   TEXT,
    PermitNumber                 TEXT,
    IssueDate                    DATE,
    ExpirationDate               DATE,
    PermitStatus                 TEXT,
    ZoneClassification           TEXT,
    EstimatedCost                REAL,
    ActualCost                   REAL,
    StartDate                    DATE,
    ExpectedCompletionDate       DATE,
    ActualCompletionDate         DATE,
    InspectedBy                  TEXT,
    InspectionDate               DATE,
    Remarks                      TEXT,
    GateAccessRequired           INTEGER,
    SafetyPlanSubmitted          INTEGER,
    EnvironmentalImpactSubmitted INTEGER,
    ComplianceScore              INTEGER
);

INSERT INTO HospitalConstructionPermitLog (PermitID,ProjectName,Contractor,PermitNumber,IssueDate,ExpirationDate,PermitStatus,ZoneClassification,EstimatedCost,ActualCost,StartDate,ExpectedCompletionDate,ActualCompletionDate,InspectedBy,InspectionDate,Remarks,GateAccessRequired,SafetyPlanSubmitted,EnvironmentalImpactSubmitted,ComplianceScore) VALUES (101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5000000,0,NULL,NULL,NULL,NULL,NULL,1,1,1,0);
INSERT INTO HospitalConstructionPermitLog (PermitID,ProjectName,Contractor,PermitNumber,IssueDate,ExpirationDate,PermitStatus,ZoneClassification,EstimatedCost,ActualCost,StartDate,ExpectedCompletionDate,ActualCompletionDate,InspectedBy,InspectionDate,Remarks,GateAccessRequired,SafetyPlanSubmitted,EnvironmentalImpactSubmitted,ComplianceScore) VALUES (102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1200000,0,NULL,NULL,NULL,NULL,NULL,0,1,0,0);
INSERT INTO HospitalConstructionPermitLog (PermitID,ProjectName,Contractor,PermitNumber,IssueDate,ExpirationDate,PermitStatus,ZoneClassification,EstimatedCost,ActualCost,StartDate,ExpectedCompletionDate,ActualCompletionDate,InspectedBy,InspectionDate,Remarks,GateAccessRequired,SafetyPlanSubmitted,EnvironmentalImpactSubmitted,ComplianceScore) VALUES (103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3000000,0,NULL,NULL,NULL,NULL,NULL,1,0,1,0);


-- Profile information for participants enrolled in clinical research studies
CREATE TABLE ClinicalResearchParticipantProfile
(
    ParticipantID                INTEGER PRIMARY KEY,
    StudyID                      INTEGER,
    EnrollmentDate               DATE,
    Age                          INTEGER,
    Sex                          TEXT,
    Ethnicity                    TEXT,
    HeightCm                     REAL,
    WeightKg                     REAL,
    BMI                          REAL,
    SmokingStatus                TEXT,
    AlcoholUse                   TEXT,
    MedicationUse                TEXT,
    Allergies                    TEXT,
    Comorbidities                TEXT,
    ConsentSigned                INTEGER,
    FollowUpVisitsPlanned        INTEGER,
    FollowUpVisitsCompleted      INTEGER,
    LastVisitDate                DATE,
    DataAccessLevel              TEXT,
    Notes                        TEXT
);

INSERT INTO ClinicalResearchParticipantProfile (ParticipantID,StudyID,EnrollmentDate,Age,Sex,Ethnicity,HeightCm,WeightKg,BMI,SmokingStatus,AlcoholUse,MedicationUse,Allergies,Comorbidities,ConsentSigned,FollowUpVisitsPlanned,FollowUpVisitsCompleted,LastVisitDate,DataAccessLevel,Notes) VALUES (1001,2001,NULL,45,NULL,NULL,175.0,80.0,26.1,NULL,NULL,NULL,NULL,NULL,1,5,2,NULL,NULL,NULL);
INSERT INTO ClinicalResearchParticipantProfile (ParticipantID,StudyID,EnrollmentDate,Age,Sex,Ethnicity,HeightCm,WeightKg,BMI,SmokingStatus,AlcoholUse,MedicationUse,Allergies,Comorbidities,ConsentSigned,FollowUpVisitsPlanned,FollowUpVisitsCompleted,LastVisitDate,DataAccessLevel,Notes) VALUES (1002,2002,NULL,60,NULL,NULL,168.0,70.0,24.8,NULL,NULL,NULL,NULL,NULL,1,8,8,NULL,NULL,NULL);
INSERT INTO ClinicalResearchParticipantProfile (ParticipantID,StudyID,EnrollmentDate,Age,Sex,Ethnicity,HeightCm,WeightKg,BMI,SmokingStatus,AlcoholUse,MedicationUse,Allergies,Comorbidities,ConsentSigned,FollowUpVisitsPlanned,FollowUpVisitsCompleted,LastVisitDate,DataAccessLevel,Notes) VALUES (1003,2003,NULL,30,NULL,NULL,182.0,90.0,27.2,NULL,NULL,NULL,NULL,NULL,1,3,1,NULL,NULL,NULL);


-- Collection of image annotation sets generated by radiologists
CREATE TABLE MedicalImagingAnnotationSet
(
    AnnotationSetID              INTEGER PRIMARY KEY,
    ImageStudyID                 INTEGER,
    AnnotatorID                  INTEGER,
    AnnotationDate               DATE,
    Modality                     TEXT,
    BodyPart                     TEXT,
    Findings                     TEXT,
    MeasurementValue             REAL,
    MeasurementUnit              TEXT,
    ConfidenceScore              REAL,
    ReviewStatus                 TEXT,
    ReviewDate                   DATE,
    Version                      INTEGER,
    Tags                         TEXT,
    IsPublic                     INTEGER,
    ExportFormat                 TEXT,
    FilePath                     TEXT,
    StorageLocation              TEXT,
    Notes                        TEXT,
    ArchiveFlag                  INTEGER
);

INSERT INTO MedicalImagingAnnotationSet (AnnotationSetID,ImageStudyID,AnnotatorID,AnnotationDate,Modality,BodyPart,Findings,MeasurementValue,MeasurementUnit,ConfidenceScore,ReviewStatus,ReviewDate,Version,Tags,IsPublic,ExportFormat,FilePath,StorageLocation,Notes,ArchiveFlag) VALUES (5001,9001,301,NULL,NULL,NULL,NULL,0.0,NULL,0.0,NULL,NULL,1,NULL,0,NULL,NULL,NULL,0);
INSERT INTO MedicalImagingAnnotationSet (AnnotationSetID,ImageStudyID,AnnotatorID,AnnotationDate,Modality,BodyPart,Findings,MeasurementValue,MeasurementUnit,ConfidenceScore,ReviewStatus,ReviewDate,Version,Tags,IsPublic,ExportFormat,FilePath,StorageLocation,Notes,ArchiveFlag) VALUES (5002,9002,302,NULL,NULL,NULL,NULL,0.0,NULL,0.0,NULL,NULL,1,NULL,1,NULL,NULL,NULL,0);
INSERT INTO MedicalImagingAnnotationSet (AnnotationSetID,ImageStudyID,AnnotatorID,AnnotationDate,Modality,BodyPart,Findings,MeasurementValue,MeasurementUnit,ConfidenceScore,ReviewStatus,ReviewDate,Version,Tags,IsPublic,ExportFormat,FilePath,StorageLocation,Notes,ArchiveFlag) VALUES (5003,9003,303,NULL,NULL,NULL,NULL,0.0,NULL,0.0,NULL,NULL,1,NULL,0,NULL,NULL,NULL,0);


-- Recipes used by the pharmacy for compounding sterile preparations
CREATE TABLE PharmacyCompoundingRecipe
(
    RecipeID                     INTEGER PRIMARY KEY,
    CompoundName                 TEXT,
    PharmacyID                   INTEGER,
    FormulationDate              DATE,
    Ingredient1                  TEXT,
    Ingredient1Qty               REAL,
    Ingredient1Unit              TEXT,
    Ingredient2                  TEXT,
    Ingredient2Qty               REAL,
    Ingredient2Unit              TEXT,
    Ingredient3                  TEXT,
    Ingredient3Qty               REAL,
    Ingredient3Unit              TEXT,
    PreparationMethod            TEXT,
    StabilityPeriodDays          INTEGER,
    ExpirationDate               DATE,
    BatchNumber                  TEXT,
    QualityCheckPassed           INTEGER,
    CompoundedBy                 INTEGER,
    Notes                        TEXT,
    StorageTemperatureC          REAL
);

INSERT INTO PharmacyCompoundingRecipe (RecipeID,CompoundName,PharmacyID,FormulationDate,Ingredient1,Ingredient1Qty,Ingredient1Unit,Ingredient2,Ingredient2Qty,Ingredient2Unit,Ingredient3,Ingredient3Qty,Ingredient3Unit,PreparationMethod,StabilityPeriodDays,ExpirationDate,BatchNumber,QualityCheckPassed,CompoundedBy,Notes,StorageTemperatureC) VALUES (8001,NULL,1,NULL,NULL,0.0,NULL,NULL,0.0,NULL,NULL,0.0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,0.0);
INSERT INTO PharmacyCompoundingRecipe (RecipeID,CompoundName,PharmacyID,FormulationDate,Ingredient1,Ingredient1Qty,Ingredient1Unit,Ingredient2,Ingredient2Qty,Ingredient2Unit,Ingredient3,Ingredient3Qty,Ingredient3Unit,PreparationMethod,StabilityPeriodDays,ExpirationDate,BatchNumber,QualityCheckPassed,CompoundedBy,Notes,StorageTemperatureC) VALUES (8002,NULL,2,NULL,NULL,0.0,NULL,NULL,0.0,NULL,NULL,0.0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0.0);
INSERT INTO PharmacyCompoundingRecipe (RecipeID,CompoundName,PharmacyID,FormulationDate,Ingredient1,Ingredient1Qty,Ingredient1Unit,Ingredient2,Ingredient2Qty,Ingredient2Unit,Ingredient3,Ingredient3Qty,Ingredient3Unit,PreparationMethod,StabilityPeriodDays,ExpirationDate,BatchNumber,QualityCheckPassed,CompoundedBy,Notes,StorageTemperatureC) VALUES (8003,NULL,3,NULL,NULL,0.0,NULL,NULL,0.0,NULL,NULL,0.0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,0.0);


-- Records of activities within the staff wellness program
CREATE TABLE StaffWellnessProgramActivity
(
    ActivityID                   INTEGER PRIMARY KEY,
    ProgramName                  TEXT,
    ActivityDate                 DATE,
    ActivityType                 TEXT,
    DurationMinutes              INTEGER,
    Location                     TEXT,
    FacilitatorID                INTEGER,
    ParticipantCount             INTEGER,
    CaloriesBurned               INTEGER,
    StressReductionScore        REAL,
    FeedbackScore                REAL,
    FollowUpRecommended          INTEGER,
    FollowUpDate                 DATE,
    ResourcesProvided            TEXT,
    CostPerParticipant           REAL,
    Sponsor                      TEXT,
    IsMandatory                  INTEGER,
    AttendanceRecord             TEXT,
    Notes                        TEXT,
    EvaluationCompleted          INTEGER
);

INSERT INTO StaffWellnessProgramActivity (ActivityID,ProgramName,ActivityDate,ActivityType,DurationMinutes,Location,FacilitatorID,ParticipantCount,CaloriesBurned,StressReductionScore,FeedbackScore,FollowUpRecommended,FollowUpDate,ResourcesProvided,CostPerParticipant,Sponsor,IsMandatory,AttendanceRecord,Notes,EvaluationCompleted) VALUES (301,NULL,NULL,NULL,60,NULL,0,15,500,8.5,9.0,0,NULL,NULL,0.0,NULL,0,NULL,NULL,0);
INSERT INTO StaffWellnessProgramActivity (ActivityID,ProgramName,ActivityDate,ActivityType,DurationMinutes,Location,FacilitatorID,ParticipantCount,CaloriesBurned,StressReductionScore,FeedbackScore,FollowUpRecommended,FollowUpDate,ResourcesProvided,CostPerParticipant,Sponsor,IsMandatory,AttendanceRecord,Notes,EvaluationCompleted) VALUES (302,NULL,NULL,NULL,45,NULL,0,8,300,7.0,8.2,1,NULL,NULL,0.0,NULL,1,NULL,NULL,0);
INSERT INTO StaffWellnessProgramActivity (ActivityID,ProgramName,ActivityDate,ActivityType,DurationMinutes,Location,FacilitatorID,ParticipantCount,CaloriesBurned,StressReductionScore,FeedbackScore,FollowUpRecommended,FollowUpDate,ResourcesProvided,CostPerParticipant,Sponsor,IsMandatory,AttendanceRecord,Notes,EvaluationCompleted) VALUES (303,NULL,NULL,NULL,30,NULL,0,20,200,9.0,9.5,0,NULL,NULL,0.0,NULL,0,NULL,NULL,0);


-- Assessments of environmental exposures within hospital facilities
CREATE TABLE EnvironmentalExposureAssessment
(
    AssessmentID                 INTEGER PRIMARY KEY,
    FacilityID                   INTEGER,
    AssessmentDate               DATE,
    ExposureType                 TEXT,
    MeasuredLevel                REAL,
    Unit                         TEXT,
    ThresholdLevel               REAL,
    ExceedsThreshold             INTEGER,
    CorrectiveActionTaken        INTEGER,
    ActionDate                   DATE,
    ResponsiblePersonID          INTEGER,
    Comments                     TEXT,
    FollowUpDate                 DATE,
    Status                       TEXT,
    RiskScore                    INTEGER,
    MonitoringFrequencyDays      INTEGER,
    SensorID                     INTEGER,
    CalibrationDate              DATE,
    DataSource                   TEXT,
    Archived                     INTEGER
);

INSERT INTO EnvironmentalExposureAssessment (AssessmentID,FacilityID,AssessmentDate,ExposureType,MeasuredLevel,Unit,ThresholdLevel,ExceedsThreshold,CorrectiveActionTaken,ActionDate,ResponsiblePersonID,Comments,FollowUpDate,Status,RiskScore,MonitoringFrequencyDays,SensorID,CalibrationDate,DataSource,Archived) VALUES (9001,10,NULL,NULL,0.0,NULL,0.0,0,0,NULL,0,NULL,NULL,NULL,0,0,0,NULL,NULL,0);
INSERT INTO EnvironmentalExposureAssessment (AssessmentID,FacilityID,AssessmentDate,ExposureType,MeasuredLevel,Unit,ThresholdLevel,ExceedsThreshold,CorrectiveActionTaken,ActionDate,ResponsiblePersonID,Comments,FollowUpDate,Status,RiskScore,MonitoringFrequencyDays,SensorID,CalibrationDate,DataSource,Archived) VALUES (9002,11,NULL,NULL,0.0,NULL,0.0,0,0,NULL,0,NULL,NULL,NULL,0,0,0,NULL,NULL,0);
INSERT INTO EnvironmentalExposureAssessment (AssessmentID,FacilityID,AssessmentDate,ExposureType,MeasuredLevel,Unit,ThresholdLevel,ExceedsThreshold,CorrectiveActionTaken,ActionDate,ResponsiblePersonID,Comments,FollowUpDate,Status,RiskScore,MonitoringFrequencyDays,SensorID,CalibrationDate,DataSource,Archived) VALUES (9003,12,NULL,NULL,0.0,NULL,0.0,0,0,NULL,0,NULL,NULL,NULL,0,0,0,NULL,NULL,0);


-- Locations where biobank samples are stored
CREATE TABLE BiobankSampleStorageLocation
(
    LocationID                   INTEGER PRIMARY KEY,
    FacilityName                 TEXT,
    FreezerID                    TEXT,
    RackID                       TEXT,
    ShelfNumber                  INTEGER,
    BoxID                        TEXT,
    PositionRow                  INTEGER,
    PositionColumn               INTEGER,
    TemperatureC                REAL,
    HumidityPercent             REAL,
    AccessControlLevel          INTEGER,
    LastInspectionDate          DATE,
    InspectionResult            TEXT,
    CapacitySamples             INTEGER,
    OccupiedSamples             INTEGER,
    SampleTypeSupported         TEXT,
    MaintenanceScheduleDays     INTEGER,
    ManagerID                   INTEGER,
    Notes                       TEXT,
    Archived                    INTEGER
);

INSERT INTO BiobankSampleStorageLocation (LocationID,FacilityName,FreezerID,RackID,ShelfNumber,BoxID,PositionRow,PositionColumn,TemperatureC,HumidityPercent,AccessControlLevel,LastInspectionDate,InspectionResult,CapacitySamples,OccupiedSamples,SampleTypeSupported,MaintenanceScheduleDays,ManagerID,Notes,Archived) VALUES (4001,NULL,NULL,NULL,0,NULL,0,0, -80.0,0.0,0,NULL,NULL,0,0,NULL,0,0,NULL,0);
INSERT INTO BiobankSampleStorageLocation (LocationID,FacilityName,FreezerID,RackID,ShelfNumber,BoxID,PositionRow,PositionColumn,TemperatureC,HumidityPercent,AccessControlLevel,LastInspectionDate,InspectionResult,CapacitySamples,OccupiedSamples,SampleTypeSupported,MaintenanceScheduleDays,ManagerID,Notes,Archived) VALUES (4002,NULL,NULL,NULL,0,NULL,0,0, -80.0,0.0,0,NULL,NULL,0,0,NULL,0,0,NULL,0);
INSERT INTO BiobankSampleStorageLocation (LocationID,FacilityName,FreezerID,RackID,ShelfNumber,BoxID,PositionRow,PositionColumn,TemperatureC,HumidityPercent,AccessControlLevel,LastInspectionDate,InspectionResult,CapacitySamples,OccupiedSamples,SampleTypeSupported,MaintenanceScheduleDays,ManagerID,Notes,Archived) VALUES (4003,NULL,NULL,NULL,0,NULL,0,0, -80.0,0.0,0,NULL,NULL,0,0,NULL,0,0,NULL,0);


-- Detailed line items for health insurance claims
CREATE TABLE HealthInsuranceClaimDetail
(
    ClaimDetailID                INTEGER PRIMARY KEY,
    ClaimID                      INTEGER,
    ServiceDate                  DATE,
    ProviderID                   INTEGER,
    ProcedureCode                TEXT,
    DiagnosisCode                TEXT,
    BilledAmount                 REAL,
    PaidAmount                   REAL,
    PatientResponsibility        REAL,
    ClaimStatus                  TEXT,
    AdjudicationDate             DATE,
    ReasonCode                   TEXT,
    AdjustmentAmount             REAL,
    PriorAuthorizationNumber    TEXT,
    ServiceLocation              TEXT,
    Units                        INTEGER,
    ModifierCode                 TEXT,
    CopayAmount                  REAL,
    DeductibleAmount             REAL,
    Notes                        TEXT
);

INSERT INTO HealthInsuranceClaimDetail (ClaimDetailID,ClaimID,ServiceDate,ProviderID,ProcedureCode,DiagnosisCode,BilledAmount,PaidAmount,PatientResponsibility,ClaimStatus,AdjudicationDate,ReasonCode,AdjustmentAmount,PriorAuthorizationNumber,ServiceLocation,Units,ModifierCode,CopayAmount,DeductibleAmount,Notes) VALUES (7001,3001,NULL,0,NULL,NULL,0.0,0.0,0.0,NULL,NULL,NULL,0.0,NULL,NULL,0,NULL,0.0,0.0,NULL);
INSERT INTO HealthInsuranceClaimDetail (ClaimDetailID,ClaimID,ServiceDate,ProviderID,ProcedureCode,DiagnosisCode,BilledAmount,PaidAmount,PatientResponsibility,ClaimStatus,AdjudicationDate,ReasonCode,AdjustmentAmount,PriorAuthorizationNumber,ServiceLocation,Units,ModifierCode,CopayAmount,DeductibleAmount,Notes) VALUES (7002,3002,NULL,0,NULL,NULL,0.0,0.0,0.0,NULL,NULL,NULL,0.0,NULL,NULL,0,NULL,0.0,0.0,NULL);
INSERT INTO HealthInsuranceClaimDetail (ClaimDetailID,ClaimID,ServiceDate,ProviderID,ProcedureCode,DiagnosisCode,BilledAmount,PaidAmount,PatientResponsibility,ClaimStatus,AdjudicationDate,ReasonCode,AdjustmentAmount,PriorAuthorizationNumber,ServiceLocation,Units,ModifierCode,CopayAmount,DeductibleAmount,Notes) VALUES (7003,3003,NULL,0,NULL,NULL,0.0,0.0,0.0,NULL,NULL,NULL,0.0,NULL,NULL,0,NULL,0.0,0.0,NULL);


-- Devices used during telemedicine sessions
CREATE TABLE TelemedicineSessionDevice
(
    SessionDeviceID              INTEGER PRIMARY KEY,
    SessionID                    INTEGER,
    DeviceType                   TEXT,
    DeviceModel                  TEXT,
    OSVersion                    TEXT,
    FirmwareVersion              TEXT,
    ConnectionType               TEXT,
    BandwidthMbps                REAL,
    LatencyMs                    INTEGER,
    VideoResolution              TEXT,
    AudioQuality                 TEXT,
    EncryptionEnabled            INTEGER,
    BatteryLevelPercent          INTEGER,
    DeviceLocation               TEXT,
    UserID                       INTEGER,
    SessionStart                 TIMESTAMP,
    SessionEnd                   TIMESTAMP,
    DataUsageMB                  REAL,
    ErrorCount                   INTEGER,
    Notes                        TEXT
);

INSERT INTO TelemedicineSessionDevice (SessionDeviceID,SessionID,DeviceType,DeviceModel,OSVersion,FirmwareVersion,ConnectionType,BandwidthMbps,LatencyMs,VideoResolution,AudioQuality,EncryptionEnabled,BatteryLevelPercent,DeviceLocation,UserID,SessionStart,SessionEnd,DataUsageMB,ErrorCount,Notes) VALUES (90001,5001,NULL,NULL,NULL,NULL,NULL,0.0,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0.0,0,NULL);
INSERT INTO TelemedicineSessionDevice (SessionDeviceID,SessionID,DeviceType,DeviceModel,OSVersion,FirmwareVersion,ConnectionType,BandwidthMbps,LatencyMs,VideoResolution,AudioQuality,EncryptionEnabled,BatteryLevelPercent,DeviceLocation,UserID,SessionStart,SessionEnd,DataUsageMB,ErrorCount,Notes) VALUES (90002,5002,NULL,NULL,NULL,NULL,NULL,0.0,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0.0,0,NULL);
INSERT INTO TelemedicineSessionDevice (SessionDeviceID,SessionID,DeviceType,DeviceModel,OSVersion,FirmwareVersion,ConnectionType,BandwidthMbps,LatencyMs,VideoResolution,AudioQuality,EncryptionEnabled,BatteryLevelPercent,DeviceLocation,UserID,SessionStart,SessionEnd,DataUsageMB,ErrorCount,Notes) VALUES (90003,5003,NULL,NULL,NULL,NULL,NULL,0.0,0,NULL,NULL,0,0,NULL,0,NULL,NULL,0.0,0,NULL);