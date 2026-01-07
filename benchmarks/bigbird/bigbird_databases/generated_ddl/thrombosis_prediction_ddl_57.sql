-- Pharmacy cold storage monitoring
CREATE TABLE PharmacyColdStorage (
    ID INTEGER,
    StorageUnit TEXT,
    Temperature REAL,
    Humidity REAL,
    StartDate DATE,
    EndDate DATE,
    InspectionDate DATE,
    InspectorName TEXT,
    CapacityLiters INTEGER,
    CurrentLoadLiters INTEGER,
    AlarmStatus TEXT,
    MaintenanceDueDate DATE,
    LastMaintenanceDate DATE,
    PowerSource TEXT,
    BackupGeneratorStatus TEXT,
    Sensor1Status TEXT,
    Sensor2Status TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO PharmacyColdStorage VALUES (1,'UnitA',4.5,55,'2023-01-01','2025-12-31','2023-06-01','John Doe',1000,850,'Normal','2023-12-01','2023-05-15','Electric','Operational','OK','OK','Routine check','2023-01-01','2023-06-01');
INSERT INTO PharmacyColdStorage VALUES (2,'UnitB',-2.0,60,'2022-05-15','2024-05-14','2023-04-20','Emily Smith','800','600','Normal','2023-11-01','2023-04-10','Diesel','Operational','OK','OK','Temperature stable','2022-05-15','2023-04-20');
INSERT INTO PharmacyColdStorage VALUES (3,'UnitC',5.0,50,'2024-03-01','2026-02-28','2024-03-15','Michael Lee','1200','1100','Normal','2024-09-01','2024-03-10','Electric','Operational','OK','OK','No issues','2024-03-01','2024-03-15');

-- Clinical genomics annotation records
CREATE TABLE ClinicalGenomicsAnnotation (
    AnnotationID INTEGER,
    PatientID INTEGER,
    GeneSymbol TEXT,
    VariantID TEXT,
    VariantType TEXT,
    Chromosome TEXT,
    Position INTEGER,
    ReferenceAllele TEXT,
    AlternateAllele TEXT,
    AlleleFrequency REAL,
    ClinicalSignificance TEXT,
    ReviewStatus TEXT,
    InterpretationDate DATE,
    InterpreterName TEXT,
    SourceDatabase TEXT,
    AnnotationVersion TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsValidated INTEGER
);

INSERT INTO ClinicalGenomicsAnnotation VALUES (101,2001,'BRCA1','rs80357713','SNV','17',41276045,'C','T',0.001,'Pathogenic','Reviewed','2023-07-12','Alice Green','ClinVar','v2.1','No additional notes','2023-07-12','2023-07-12',1);
INSERT INTO ClinicalGenomicsAnnotation VALUES (102,2002,'CFTR','rs113993960','Deletion','7',117199644,'ΔF508','ΔF508',0.002,'Likely pathogenic','Pending','2023-08-01','Bob White','dbSNP','v2.0','Requires confirmation','2023-08-01','2023-08-01',0);
INSERT INTO ClinicalGenomicsAnnotation VALUES (103,2003,'APOE','rs429358','SNV','19',45412079,'C','T',0.15,'Benign','Reviewed','2023-06-20','Carol Black','Ensembl','v1.9','Common in population','2023-06-20','2023-06-20',1);

-- Patient mobility assistive devices
CREATE TABLE PatientMobilityDevice (
    DeviceID INTEGER,
    PatientID INTEGER,
    DeviceType TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    AcquisitionDate DATE,
    ImplantDate DATE,
    RemovalDate DATE,
    Status TEXT,
    BatteryLifeHours INTEGER,
    FirmwareVersion TEXT,
    LastCheckDate DATE,
    NextCheckDue DATE,
    Location TEXT,
    AssignedBy TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    IsActive INTEGER
);

INSERT INTO PatientMobilityDevice VALUES (301,2001,'Wheelchair','Invacare','IC100','SN12345','2022-01-10','NULL','NULL','In use',0,'v3.2','2023-05-10','2024-05-10','Room302','Dr Adams','Regular maintenance','2022-01-10','2023-05-10',1);
INSERT INTO PatientMobilityDevice VALUES (302,2002,'Walking Cane','Drive','C200','SN67890','2021-09-05','NULL','NULL','In use',0,'v1.0','2023-04-01','2024-04-01','Room104','Nurse Kelly','Grip replacement needed','2021-09-05','2023-04-01',1);
INSERT INTO PatientMobilityDevice VALUES (303,2003,'Powered Scooter','Permobil','S300','SN54321','2023-02-15','NULL','NULL','In repair',4,'v2.5','2023-06-20','2024-06-20','Maintenance Bay','Tech John','Battery diagnostic','2023-02-15','2023-06-20',0);

-- Hospital energy consumption forecasts
CREATE TABLE HospitalEnergyForecast (
    ForecastID INTEGER,
    ForecastDate DATE,
    PredictedConsumptionKWh REAL,
    PredictedPeakKW REAL,
    WeatherCondition TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    DayOfWeek TEXT,
    IsHoliday INTEGER,
    RenewableSharePercent REAL,
    EstimatedCost REAL,
    AdjustedForecastKWh REAL,
    CreatedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    Comments TEXT,
    ValidationStatus TEXT,
    ConfidenceLevel REAL,
    Scenario TEXT,
    Region TEXT
);

INSERT INTO HospitalEnergyForecast VALUES (401,'2023-12-01',250000,1200,'Sunny',22.5,45,'Friday',0,30.5,50000,255000,'EnergyTeam','2023-11-20','2023-11-20','Year end peak expected','Validated',0.95,'Base','NorthWing');
INSERT INTO HospitalEnergyForecast VALUES (402,'2024-01-15',230000,1100,'Snow', -3.0,70,'Monday',0,25.0,46000,235000,'EnergyTeam','2023-12-30','2023-12-30','Cold weather increase','Pending',0.90,'Winter','EastWing');
INSERT INTO HospitalEnergyForecast VALUES (403,'2024-07-04',270000,1300,'Rain',18.0,80,'Thursday',0,35.0,54000,275000,'EnergyTeam','2024-06-20','2024-06-20','High humidity impact','Validated',0.92,'Summer','SouthWing');

-- Laboratory sample tracking
CREATE TABLE LabSampleTracking (
    SampleID INTEGER,
    PatientID INTEGER,
    SampleType TEXT,
    CollectionDate DATE,
    CollectionTime TEXT,
    CollectorName TEXT,
    TubeType TEXT,
    VolumeML REAL,
    Barcode TEXT,
    StorageLocation TEXT,
    TemperatureC REAL,
    ReceivedDate DATE,
    ReceivedBy TEXT,
    ProcessedDate DATE,
    ProcessedBy TEXT,
    Status TEXT,
    TestRequested TEXT,
    PriorityLevel TEXT,
    Remarks TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO LabSampleTracking VALUES (501,2001,'Blood','2023-06-01','08:15','Nurse Amy','EDTA',5.0,'BC123456','Freezer1',-80,'2023-06-01','LabTech Tom','2023-06-02','LabTech Sam','Received','CBC','Routine','No issues','2023-06-01','2023-06-02');
INSERT INTO LabSampleTracking VALUES (502,2002,'Urine','2023-06-03','09:40','Nurse Ben','Sterile','30.0','UR789012','Refrigerator2',4,'2023-06-03','LabTech Lisa','2023-06-04','LabTech Mark','Received','Culture','Urgent','Sample hemolyzed','2023-06-03','2023-06-04');
INSERT INTO LabSampleTracking VALUES (503,2003,'Tissue','2023-06-05','11:00','PathTech Carol','Formalin','0.5','TS345678','PathRoom','RoomTemp','2023-06-05','LabTech Nina','2023-06-07','LabTech Owen','Processing','Histology','Routine','Embedded successfully','2023-06-05','2023-06-07');

-- Immunology panel test results
CREATE TABLE ImmunologyPanel (
    PanelID INTEGER,
    PatientID INTEGER,
    TestDate DATE,
    IgGLevel REAL,
    IgMLevel REAL,
    IgALevel REAL,
    ComplementC3 REAL,
    ComplementC4 REAL,
    AntiNuclearAntibody INTEGER,
    ENAProfile TEXT,
    RFLevel REAL,
    CRPLevel REAL,
    ESR REAL,
    LymphocyteCount REAL,
    NeutrophilCount REAL,
    EosinophilCount REAL,
    BasophilCount REAL,
    DiagnosisSuggestion TEXT,
    PerformedBy TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO ImmunologyPanel VALUES (601,2001,'2023-07-10',12.5,1.2,3.4,95,18,0,'Negative',15.0,5.0,12,1.8,4.2,0.3,0.0,'Normal','Dr Clark','2023-07-10','2023-07-10');
INSERT INTO ImmunologyPanel VALUES (602,2002,'2023-07-12',8.0,0.8,2.1,70,12,1,'Positive',45.0,20.0,30,2.5,6.0,0.6,0.1,'Possible autoimmune','Dr Lee','2023-07-12','2023-07-12');
INSERT INTO ImmunologyPanel VALUES (603,2003,'2023-07-15',15.0,2.0,4.0,110,22,0,'Negative',10.0,2.0,8,1.5,3.5,0.2,0.0,'Within normal limits','Dr Patel','2023-07-15','2023-07-15');

-- Radiology contrast agent usage log
CREATE TABLE RadiologyContrastAgentLog (
    LogID INTEGER,
    StudyID INTEGER,
    AgentName TEXT,
    VolumeML REAL,
    InjectionRateMLperSec REAL,
    StartTime TEXT,
    EndTime TEXT,
    PatientWeightKG REAL,
    PatientAge INTEGER,
    ContrastQuality TEXT,
    AdverseReaction TEXT,
    RadiologistName TEXT,
    TechnologistName TEXT,
    Comments TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    DosageCalcMethod TEXT,
    ContrastBatchNumber TEXT,
    StorageTempC REAL,
    ExpiryDate DATE
);

INSERT INTO RadiologyContrastAgentLog VALUES (701,3001,'Iohexol',80,3.5,'10:05','10:08',70,45,'Good','None','Dr Nguyen','Tech Sara','No issues','2023-08-01','2023-08-01','Weight based','BCH202308','5','2024-12-31');
INSERT INTO RadiologyContrastAgentLog VALUES (702,3002,'Gadobutrol',12,1.2,'14:20','14:23',60,52,'Excellent','Mild nausea','Dr Kim','Tech Leo','Patient observed for 15 mins','2023-08-02','2023-08-02','Standard','BCH202307','4','2025-01-15');
INSERT INTO RadiologyContrastAgentLog VALUES (703,3003,'Iopamidol',60,2.8,'09:15','09:18',85,38,'Good','None','Dr Smith','Tech Maya','Contrast administered without incident','2023-08-03','2023-08-03','Weight based','BCH202306','6','2024-11-20');

-- Surgical instrument inventory management
CREATE TABLE SurgicalInstrumentInventory (
    InstrumentID INTEGER,
    InstrumentName TEXT,
    Category TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    SterilizationMethod TEXT,
    SterilizationDate DATE,
    SterilizationStatus TEXT,
    CurrentLocation TEXT,
    Quantity INTEGER,
    MaintenanceDueDate DATE,
    LastMaintenanceDate DATE,
    InspectionStatus TEXT,
    AssignedTo TEXT,
    UsageCount INTEGER,
    ReplacementDue INTEGER,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO SurgicalInstrumentInventory VALUES (801,'Scalpel','Cutting','Medline','S100','SN001','Autoclave','2023-07-20','Completed','OR1',50,'2024-01-01','2023-07-20','Pass','Dr Allen',120,0,'Sharp blades replaced','2023-01-01','2023-07-20');
INSERT INTO SurgicalInstrumentInventory VALUES (802,'Forceps','Grasping','Bard','F200','SN002','Steam','2023-07-18','Completed','OR2',30,'2024-06-15','2023-07-18','Pass','Dr Baker',95,0,'Handles inspected','2023-01-10','2023-07-18');
INSERT INTO SurgicalInstrumentInventory VALUES (803,'Retractor','Retracting','Aesculap','R300','SN003','EO','2023-07-22','Completed','StorageA',15,'2024-03-30','2023-07-22','Pass','Dr Clark',40,0,'No issues','2023-02-05','2023-07-22');

-- Outpatient prescription logging
CREATE TABLE OutpatientPrescriptionLog (
    PrescriptionID INTEGER,
    PatientID INTEGER,
    PrescribedDate DATE,
    MedicationName TEXT,
    Dosage TEXT,
    Frequency TEXT,
    DurationDays INTEGER,
    PrescriberID INTEGER,
    PharmacyID INTEGER,
    RefillCount INTEGER,
    Status TEXT,
    DispensedDate DATE,
    DispensedBy TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE,
    ApprovalFlag INTEGER,
    InsuranceCovered INTEGER,
    CopayAmount REAL,
    PharmacyContact TEXT
);

INSERT INTO OutpatientPrescriptionLog VALUES (901,2001,'2023-09-01','Lisinopril','10 mg','Once daily',30,101,501,2,'Active','2023-09-02','PharmTech Alex','Patient instructed on side effects','2023-09-01','2023-09-02',1,1,5.00,'555-1234');
INSERT INTO OutpatientPrescriptionLog VALUES (902,2002,'2023-09-03','Metformin','500 mg','Twice daily',90,102,502,3,'Active','2023-09-04','PharmTech Beth','Monitor blood glucose','2023-09-03','2023-09-04',1,1,7.50,'555-5678');
INSERT INTO OutpatientPrescriptionLog VALUES (903,2003,'2023-09-05','Atorvastatin','20 mg','Once nightly',180,103,503,1,'Pending','NULL','NULL','Awaiting insurance approval','2023-09-05','2023-09-05',0,0,0.00,'555-9101');

-- Comprehensive health risk assessments
CREATE TABLE HealthRiskAssessment (
    AssessmentID INTEGER,
    PatientID INTEGER,
    AssessmentDate DATE,
    RiskScore REAL,
    Age INTEGER,
    BMI REAL,
    SmokingStatus TEXT,
    AlcoholUse TEXT,
    PhysicalActivityLevel TEXT,
    DietQuality TEXT,
    FamilyHistory TEXT,
    BloodPressureSystolic INTEGER,
    BloodPressureDiastolic INTEGER,
    CholesterolTotal REAL,
    GlucoseLevel REAL,
    HbA1c REAL,
    CardiovascularRisk TEXT,
    DiabetesRisk TEXT,
    CancerRisk TEXT,
    Recommendations TEXT,
    AssessorName TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO HealthRiskAssessment VALUES (1001,2001,'2023-10-01',3.2,45,27.5,'Never','Moderate','Low','Average','None',120,78,190,95,5.4,'Low','Low','Low','Continue current lifestyle','Nurse Clara','2023-10-01','2023-10-01');
INSERT INTO HealthRiskAssessment VALUES (1002,2002,'2023-10-02',7.8,58,32.1,'Current','Heavy','Low','Poor','Heart disease',145,92,240,130,7.2,'High','High','Moderate','Enroll in weight management program','Nurse David','2023-10-02','2023-10-02');
INSERT INTO HealthRiskAssessment VALUES (1003,2003,'2023-10-03',5.0,62,29.0,'Former','Low','Moderate','Good','Diabetes',135,85,210,110,6.0,'Medium','Medium','Low','Schedule follow-up labs in 3 months','Nurse Eva','2023-10-03','2023-10-03');