-- GenomicSequencingRun
CREATE TABLE GenomicSequencingRun
(
    RunID               INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    SampleID            TEXT,
    RunDate             DATE,
    Platform            TEXT,
    FlowCellID          TEXT,
    ReadLength          INTEGER,
    PairedEnd           INTEGER,
    CoverageDepth       REAL,
    LibraryPrepKit     TEXT,
    IndexSequence       TEXT,
    LaneCount           INTEGER,
    RawDataSizeGB       REAL,
    ProcessedDataSizeGB REAL,
    VariantCount        INTEGER,
    SNPCount            INTEGER,
    IndelCount          INTEGER,
    StructuralVariantCount INTEGER,
    QCMetric1           REAL,
    QCMetric2           REAL,
    QCMetric3           REAL,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
        ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO GenomicSequencingRun (RunID, PatientID, SampleID, RunDate, Platform, FlowCellID, ReadLength, PairedEnd, CoverageDepth, LibraryPrepKit, IndexSequence, LaneCount, RawDataSizeGB, ProcessedDataSizeGB, VariantCount, SNPCount, IndelCount, StructuralVariantCount, QCMetric1, QCMetric2, QCMetric3) VALUES (1, 101, SAMP001, '2023-05-12', Illumina, FC001, 150, 1, 30.5, KitA, IDX001, 8, 120.0, 85.3, 2540, 2100, 340, 100, 0.98, 0.95, 0.99);
INSERT INTO GenomicSequencingRun (RunID, PatientID, SampleID, RunDate, Platform, FlowCellID, ReadLength, PairedEnd, CoverageDepth, LibraryPrepKit, IndexSequence, LaneCount, RawDataSizeGB, ProcessedDataSizeGB, VariantCount, SNPCount, IndelCount, StructuralVariantCount, QCMetric1, QCMetric2, QCMetric3) VALUES (2, 102, SAMP002, '2023-06-01', Illumina, FC002, 100, 0, 45.2, KitB, IDX002, 4, 95.0, 70.1, 3120, 2700, 380, 120, 0.97, 0.94, 0.96);
INSERT INTO GenomicSequencingRun (RunID, PatientID, SampleID, RunDate, Platform, FlowCellID, ReadLength, PairedEnd, CoverageDepth, LibraryPrepKit, IndexSequence, LaneCount, RawDataSizeGB, ProcessedDataSizeGB, VariantCount, SNPCount, IndelCount, StructuralVariantCount, QCMetric1, QCMetric2, QCMetric3) VALUES (3, 103, SAMP003, '2023-06-15', Nanopore, FC003, 10000, 0, 20.0, KitC, IDX003, 1, 200.0, 150.0, 1800, 1600, 200, 80, 0.92, 0.90, 0.93);

-- PharmacyCompoundingLog
CREATE TABLE PharmacyCompoundingLog
(
    CompoundingID      INTEGER PRIMARY KEY,
    PrescriptionID     INTEGER,
    CompoundDate       DATE,
    CompounderName     TEXT,
    CompoundMethod     TEXT,
    BaseDrugCode       TEXT,
    BaseDrugQtyMg      REAL,
    Additive1Code      TEXT,
    Additive1QtyMg     REAL,
    Additive2Code      TEXT,
    Additive2QtyMg     REAL,
    DiluentCode        TEXT,
    DiluentVolumeMl    REAL,
    FinalVolumeMl      REAL,
    StabilityHours     INTEGER,
    StorageTempC       REAL,
    BatchNumber        TEXT,
    QCResult           TEXT,
    ApprovalStatus     TEXT,
    Notes              TEXT,
    CreatedTimestamp   DATE,
    ModifiedTimestamp  DATE
);
INSERT INTO PharmacyCompoundingLog (CompoundingID, PrescriptionID, CompoundDate, CompounderName, CompoundMethod, BaseDrugCode, BaseDrugQtyMg, Additive1Code, Additive1QtyMg, Additive2Code, Additive2QtyMg, DiluentCode, DiluentVolumeMl, FinalVolumeMl, StabilityHours, StorageTempC, BatchNumber, QCResult, ApprovalStatus, Notes, CreatedTimestamp, ModifiedTimestamp) VALUES (1, 5001, '2023-07-01', AliceSmith, Manual, DRG001, 50.0, ADD001, 5.0, ADD002, 2.5, DIL001, 10.0, 20.0, 48, 4.0, BATCHA1, Pass, Approved, NoIssues, '2023-07-01', '2023-07-01');
INSERT INTO PharmacyCompoundingLog (CompoundingID, PrescriptionID, CompoundDate, CompounderName, CompoundMethod, BaseDrugCode, BaseDrugQtyMg, Additive1Code, Additive1QtyMg, Additive2Code, Additive2QtyMg, DiluentCode, DiluentVolumeMl, FinalVolumeMl, StabilityHours, StorageTempC, BatchNumber, QCResult, ApprovalStatus, Notes, CreatedTimestamp, ModifiedTimestamp) VALUES (2, 5002, '2023-07-03', BobJones, Automated, DRG002, 30.0, ADD003, 3.0, ADD004, 1.0, DIL002, 5.0, 12.0, 72, 2.0, BATCHB2, Pass, Approved, CheckedByQC, '2023-07-03', '2023-07-04');
INSERT INTO PharmacyCompoundingLog (CompoundingID, PrescriptionID, CompoundDate, CompounderName, CompoundMethod, BaseDrugCode, BaseDrugQtyMg, Additive1Code, Additive1QtyMg, Additive2Code, Additive2QtyMg, DiluentCode, DiluentVolumeMl, FinalVolumeMl, StabilityHours, StorageTempC, BatchNumber, QCResult, ApprovalStatus, Notes, CreatedTimestamp, ModifiedTimestamp) VALUES (3, 5003, '2023-07-05', CarolLee, Manual, DRG003, 20.0, ADD005, 2.0, ADD006, 0.5, DIL003, 8.0, 15.0, 36, 5.0, BATCHC3, Fail, Pending, ReworkNeeded, '2023-07-05', '2023-07-06');

-- MedicalDeviceMaintenanceLog
CREATE TABLE MedicalDeviceMaintenanceLog
(
    MaintenanceID        INTEGER PRIMARY KEY,
    DeviceID             TEXT,
    MaintenanceDate      DATE,
    TechnicianName       TEXT,
    MaintenanceType      TEXT,
    CycleCount           INTEGER,
    FirmwareVersion      TEXT,
    CalibrationPerformed INTEGER,
    CalibrationResult    TEXT,
    PartsReplacedCount   INTEGER,
    Part1Code            TEXT,
    Part1Serial          TEXT,
    Part2Code            TEXT,
    Part2Serial          TEXT,
    DowntimeMinutes      INTEGER,
    NextMaintenanceDue   DATE,
    ServiceContractID    TEXT,
    CostUSD              REAL,
    ApprovalStatus       TEXT,
    Comments             TEXT,
    CreatedTimestamp     DATE,
    ModifiedTimestamp    DATE
);
INSERT INTO MedicalDeviceMaintenanceLog (MaintenanceID, DeviceID, MaintenanceDate, TechnicianName, MaintenanceType, CycleCount, FirmwareVersion, CalibrationPerformed, CalibrationResult, PartsReplacedCount, Part1Code, Part1Serial, Part2Code, Part2Serial, DowntimeMinutes, NextMaintenanceDue, ServiceContractID, CostUSD, ApprovalStatus, Comments, CreatedTimestamp, ModifiedTimestamp) VALUES (1, DEV001, '2023-04-10', DaveMiller, Preventive, 1200, v1.2.3, 1, Pass, 1, PARTA, SN001, NULL, NULL, 30, '2023-10-10', SC001, 250.00, Approved, RoutineCheck, '2023-04-10', '2023-04-10');
INSERT INTO MedicalDeviceMaintenanceLog (MaintenanceID, DeviceID, MaintenanceDate, TechnicianName, MaintenanceType, CycleCount, FirmwareVersion, CalibrationPerformed, CalibrationResult, PartsReplacedCount, Part1Code, Part1Serial, Part2Code, Part2Serial, DowntimeMinutes, NextMaintenanceDue, ServiceContractID, CostUSD, ApprovalStatus, Comments, CreatedTimestamp, ModifiedTimestamp) VALUES (2, DEV002, '2023-05-15', EmmaClark, Corrective, 800, v2.0.1, 0, NULL, 2, PARTB, SN002, PARTC, SN003, 90, '2023-11-15', SC002, 480.50, Pending, NeedsFollowup, '2023-05-15', '2023-05-16');
INSERT INTO MedicalDeviceMaintenanceLog (MaintenanceID, DeviceID, MaintenanceDate, TechnicianName, MaintenanceType, CycleCount, FirmwareVersion, CalibrationPerformed, CalibrationResult, PartsReplacedCount, Part1Code, Part1Serial, Part2Code, Part2Serial, DowntimeMinutes, NextMaintenanceDue, ServiceContractID, CostUSD, ApprovalStatus, Comments, CreatedTimestamp, ModifiedTimestamp) VALUES (3, DEV003, '2023-06-20', FrankLee, Preventive, 1500, v1.5.0, 1, Fail, 0, NULL, NULL, NULL, NULL, 45, '2024-01-20', SC003, 300.00, Rejected, CalibrationIssue, '2023-06-20', '2023-06-21');

-- ClinicalResearchSample
CREATE TABLE ClinicalResearchSample
(
    SampleRecordID      INTEGER PRIMARY KEY,
    StudyID             TEXT,
    PatientID           INTEGER,
    CollectionDate      DATE,
    SampleType          TEXT,
    VolumeMl            REAL,
    StorageLocation     TEXT,
    FreezeTempC         REAL,
    TubeID              TEXT,
    OperatorName        TEXT,
    ProcessingStatus    TEXT,
    AliquotCount        INTEGER,
    Aliquot1ID          TEXT,
    Aliquot2ID          TEXT,
    Aliquot3ID          TEXT,
    QCScore             REAL,
    ConsentGiven        INTEGER,
    ShippingMethod      TEXT,
    ShippingDate        DATE,
    ReceivedDate        DATE,
    Remarks             TEXT,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO ClinicalResearchSample (SampleRecordID, StudyID, PatientID, CollectionDate, SampleType, VolumeMl, StorageLocation, FreezeTempC, TubeID, OperatorName, ProcessingStatus, AliquotCount, Aliquot1ID, Aliquot2ID, Aliquot3ID, QCScore, ConsentGiven, ShippingMethod, ShippingDate, ReceivedDate, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (1, ST001, 101, '2023-03-01', Blood, 5.0, FreezerA, -80.0, TUBE001, NancyKim, Processed, 3, ALIQ001, ALIQ002, ALIQ003, 0.95, 1, Courier, '2023-03-02', '2023-03-04', None, '2023-03-01', '2023-03-01');
INSERT INTO ClinicalResearchSample (SampleRecordID, StudyID, PatientID, CollectionDate, SampleType, VolumeMl, StorageLocation, FreezeTempC, TubeID, OperatorName, ProcessingStatus, AliquotCount, Aliquot1ID, Aliquot2ID, Aliquot3ID, QCScore, ConsentGiven, ShippingMethod, ShippingDate, ReceivedDate, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (2, ST002, 102, '2023-03-05', Plasma, 3.2, FreezerB, -70.0, TUBE002, OmarYun, Pending, 2, ALIQ004, ALIQ005, NULL, 0.00, 0, FedEx, '2023-03-06', NULL, SampleDamaged, '2023-03-05', '2023-03-05');
INSERT INTO ClinicalResearchSample (SampleRecordID, StudyID, PatientID, CollectionDate, SampleType, VolumeMl, StorageLocation, FreezeTempC, TubeID, OperatorName, ProcessingStatus, AliquotCount, Aliquot1ID, Aliquot2ID, Aliquot3ID, QCScore, ConsentGiven, ShippingMethod, ShippingDate, ReceivedDate, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (3, ST003, 103, '2023-03-10', Urine, 10.0, FreezerC, -20.0, TUBE003, PriyaDesai, Processed, 1, ALIQ006, NULL, NULL, 0.98, 1, Mail, '2023-03-11', '2023-03-12', None, '2023-03-10', '2023-03-10');

-- HospitalEnergyMeterReading
CREATE TABLE HospitalEnergyMeterReading
(
    ReadingID           INTEGER PRIMARY KEY,
    FacilityID          TEXT,
    MeterID             TEXT,
    ReadingDate         DATE,
    EnergyKWh           REAL,
    PeakDemandKW        REAL,
    VoltageV            REAL,
    CurrentA            REAL,
    PowerFactor         REAL,
    ReactiveKVAR        REAL,
    FrequencyHz         REAL,
    Phase               TEXT,
    MeterStatus         TEXT,
    OperatorID          TEXT,
    Shift               TEXT,
    TemperatureC        REAL,
    HumidityPercent     REAL,
    CO2LevelPPM         REAL,
    Remarks             TEXT,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE
);
INSERT INTO HospitalEnergyMeterReading (ReadingID, FacilityID, MeterID, ReadingDate, EnergyKWh, PeakDemandKW, VoltageV, CurrentA, PowerFactor, ReactiveKVAR, FrequencyHz, Phase, MeterStatus, OperatorID, Shift, TemperatureC, HumidityPercent, CO2LevelPPM, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (1, FAC001, MTR001, '2023-07-01', 12500.5, 850.0, 230.0, 15.5, 0.96, 120.0, 60.0, A, Active, OP001, Day, 22.5, 45.0, 400, None, '2023-07-01', '2023-07-01');
INSERT INTO HospitalEnergyMeterReading (ReadingID, FacilityID, MeterID, ReadingDate, EnergyKWh, PeakDemandKW, VoltageV, CurrentA, PowerFactor, ReactiveKVAR, FrequencyHz, Phase, MeterStatus, OperatorID, Shift, TemperatureC, HumidityPercent, CO2LevelPPM, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (2, FAC002, MTR002, '2023-07-01', 9800.3, 720.0, 230.0, 13.2, 0.94, 110.0, 60.0, B, Active, OP002, Night, 21.0, 48.0, 420, None, '2023-07-01', '2023-07-01');
INSERT INTO HospitalEnergyMeterReading (ReadingID, FacilityID, MeterID, ReadingDate, EnergyKWh, PeakDemandKW, VoltageV, CurrentA, PowerFactor, ReactiveKVAR, FrequencyHz, Phase, MeterStatus, OperatorID, Shift, TemperatureC, HumidityPercent, CO2LevelPPM, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (3, FAC003, MTR003, '2023-07-01', 14320.8, 1020.0, 230.0, 17.8, 0.97, 130.0, 60.0, C, Maintenance, OP003, Day, 23.0, 42.0, 390, MeterCalibrated, '2023-07-01', '2023-07-01');

-- PatientActivityLog
CREATE TABLE PatientActivityLog
(
    ActivityLogID       INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    ActivityDate        DATE,
    ActivityType        TEXT,
    StartTime           TEXT,
    EndTime             TEXT,
    DurationMinutes     INTEGER,
    Location            TEXT,
    StaffInvolved       TEXT,
    Notes               TEXT,
    StepsCount          INTEGER,
    DistanceMeters      REAL,
    CaloriesBurned      REAL,
    HeartRateAvgBPM     INTEGER,
    BloodOxygenSatPct   REAL,
    MoodScore           INTEGER,
    PainLevel           INTEGER,
    MedicationTaken     TEXT,
    FallRiskScore       INTEGER,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO PatientActivityLog (ActivityLogID, PatientID, ActivityDate, ActivityType, StartTime, EndTime, DurationMinutes, Location, StaffInvolved, Notes, StepsCount, DistanceMeters, CaloriesBurned, HeartRateAvgBPM, BloodOxygenSatPct, MoodScore, PainLevel, MedicationTaken, FallRiskScore, CreatedTimestamp, ModifiedTimestamp) VALUES (1, 101, '2023-08-01', Walking, '09:00', '09:30', 30, WardA, NurseA, None, 3500, 2800.0, 120.5, 78, 95.0, 8, 2, None, 3, '2023-08-01', '2023-08-01');
INSERT INTO PatientActivityLog (ActivityLogID, PatientID, ActivityDate, ActivityType, StartTime, EndTime, DurationMinutes, Location, StaffInvolved, Notes, StepsCount, DistanceMeters, CaloriesBurned, HeartRateAvgBPM, BloodOxygenSatPct, MoodScore, PainLevel, MedicationTaken, FallRiskScore, CreatedTimestamp, ModifiedTimestamp) VALUES (2, 102, '2023-08-01', PhysicalTherapy, '10:15', '11:00', 45, PTRoom1, TherapistB, SessionFocusedOnLegs, 0, 0.0, 200.0, 85, 96.0, 7, 1, Analgesic, 2, '2023-08-01', '2023-08-01');
INSERT INTO PatientActivityLog (ActivityLogID, PatientID, ActivityDate, ActivityType, StartTime, EndTime, DurationMinutes, Location, StaffInvolved, Notes, StepsCount, DistanceMeters, CaloriesBurned, HeartRateAvgBPM, BloodOxygenSatPct, MoodScore, PainLevel, MedicationTaken, FallRiskScore, CreatedTimestamp, ModifiedTimestamp) VALUES (3, 103, '2023-08-01', Rest, '12:00', '12:00', 0, Room203, None, Sleeping, 0, 0.0, 0.0, 65, 98.0, 5, 0, None, 1, '2023-08-01', '2023-08-01');

-- SupplyChainShipmentDetail
CREATE TABLE SupplyChainShipmentDetail
(
    ShipmentDetailID    INTEGER PRIMARY KEY,
    ShipmentID          TEXT,
    ItemCode            TEXT,
    ItemDescription     TEXT,
    QuantityOrdered     INTEGER,
    QuantityReceived    INTEGER,
    UnitCostUSD         REAL,
    TotalCostUSD        REAL,
    SupplierID          TEXT,
    CarrierID           TEXT,
    DispatchDate        DATE,
    ArrivalDate         DATE,
    ReceivingDock       TEXT,
    ConditionOnArrival  TEXT,
    BatchNumber         TEXT,
    ExpirationDate      DATE,
    StorageRequirement  TEXT,
    CustomsClearance    INTEGER,
    InspectionStatus    TEXT,
    Remarks             TEXT,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE
);
INSERT INTO SupplyChainShipmentDetail (ShipmentDetailID, ShipmentID, ItemCode, ItemDescription, QuantityOrdered, QuantityReceived, UnitCostUSD, TotalCostUSD, SupplierID, CarrierID, DispatchDate, ArrivalDate, ReceivingDock, ConditionOnArrival, BatchNumber, ExpirationDate, StorageRequirement, CustomsClearance, InspectionStatus, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (1, SHIP001, ITEM001, SurgicalGloves, 500, 500, 0.25, 125.00, SUP001, CAR001, '2023-06-01', '2023-06-05', DockA, Good, BATCH001, '2025-06-01', RoomTemp, 1, Passed, None, '2023-06-05', '2023-06-05');
INSERT INTO SupplyChainShipmentDetail (ShipmentDetailID, ShipmentID, ItemCode, ItemDescription, QuantityOrdered, QuantityReceived, UnitCostUSD, TotalCostUSD, SupplierID, CarrierID, DispatchDate, ArrivalDate, ReceivingDock, ConditionOnArrival, BatchNumber, ExpirationDate, StorageRequirement, CustomsClearance, InspectionStatus, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (2, SHIP002, ITEM002, IVFluids, 200, 198, 5.00, 990.00, SUP002, CAR002, '2023-06-10', '2023-06-14', DockB, MinorDamages, BATCH002, '2024-12-31', Refrigerated, 1, Passed, DamagedSeal, '2023-06-14', '2023-06-14');
INSERT INTO SupplyChainShipmentDetail (ShipmentDetailID, ShipmentID, ItemCode, ItemDescription, QuantityOrdered, QuantityReceived, UnitCostUSD, TotalCostUSD, SupplierID, CarrierID, DispatchDate, ArrivalDate, ReceivingDock, ConditionOnArrival, BatchNumber, ExpirationDate, StorageRequirement, CustomsClearance, InspectionStatus, Remarks, CreatedTimestamp, ModifiedTimestamp) VALUES (3, SHIP003, ITEM003, AntibioticPowder, 100, 100, 15.00, 1500.00, SUP003, CAR003, '2023-06-20', '2023-06-25', DockC, Good, BATCH003, '2026-01-01', ColdChain, 1, Pending, AwaitingQC, '2023-06-25', '2023-06-25');

-- EnvironmentalHealthInspection
CREATE TABLE EnvironmentalHealthInspection
(
    InspectionID        INTEGER PRIMARY KEY,
    FacilityID          TEXT,
    InspectionDate      DATE,
    InspectorName       TEXT,
    AreaInspected       TEXT,
    TemperatureC        REAL,
    HumidityPercent     REAL,
    NoiseLevelDB        REAL,
    AirQualityIndex     INTEGER,
    LeadLevelPPM        REAL,
    AsbestosPresence    INTEGER,
    MoldPresence        INTEGER,
    WasteSegregationScore INTEGER,
    PestControlStatus   TEXT,
    FireExtinguisherStatus TEXT,
    EmergencyExitStatus TEXT,
    HandWashCompliance INTEGER,
    PPECompliance       INTEGER,
    Comments            TEXT,
    FollowUpRequired    INTEGER,
    FollowUpDate        DATE,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE
);
INSERT INTO EnvironmentalHealthInspection (InspectionID, FacilityID, InspectionDate, InspectorName, AreaInspected, TemperatureC, HumidityPercent, NoiseLevelDB, AirQualityIndex, LeadLevelPPM, AsbestosPresence, MoldPresence, WasteSegregationScore, PestControlStatus, FireExtinguisherStatus, EmergencyExitStatus, HandWashCompliance, PPECompliance, Comments, FollowUpRequired, FollowUpDate, CreatedTimestamp, ModifiedTimestamp) VALUES (1, FAC001, '2023-05-01', JohnDoe, ICU, 22.5, 45.0, 55.0, 42, 0.02, 0, 0, 95, Good, Checked, Clear, 98, 99, None, 0, NULL, '2023-05-01', '2023-05-01');
INSERT INTO EnvironmentalHealthInspection (InspectionID, FacilityID, InspectionDate, InspectorName, AreaInspected, TemperatureC, HumidityPercent, NoiseLevelDB, AirQualityIndex, LeadLevelPPM, AsbestosPresence, MoldPresence, WasteSegregationScore, PestControlStatus, FireExtinguisherStatus, EmergencyExitStatus, HandWashCompliance, PPECompliance, Comments, FollowUpRequired, FollowUpDate, CreatedTimestamp, ModifiedTimestamp) VALUES (2, FAC002, '2023-05-15', JaneSmith, Pharmacy, 20.0, 40.0, 60.0, 55, 0.01, 0, 1, 88, NeedsImprovement, Expired, Blocked, 85, 80, MinorMoldSpots, 1, '2023-06-01', '2023-05-15', '2023-05-15');
INSERT INTO EnvironmentalHealthInspection (InspectionID, FacilityID, InspectionDate, InspectorName, AreaInspected, TemperatureC, HumidityPercent, NoiseLevelDB, AirQualityIndex, LeadLevelPPM, AsbestosPresence, MoldPresence, WasteSegregationScore, PestControlStatus, FireExtinguisherStatus, EmergencyExitStatus, HandWashCompliance, PPECompliance, Comments, FollowUpRequired, FollowUpDate, CreatedTimestamp, ModifiedTimestamp) VALUES (3, FAC003, '2023-05-20', MikeBrown, Laboratory, 19.0, 35.0, 50.0, 38, 0.00, 0, 0, 92, Good, Checked, Clear, 95, 97, None, 0, NULL, '2023-05-20', '2023-05-20');

-- CommunityHealthSurveyResponse
CREATE TABLE CommunityHealthSurveyResponse
(
    SurveyResponseID    INTEGER PRIMARY KEY,
    SurveyID            TEXT,
    RespondentID        TEXT,
    ResponseDate        DATE,
    Age                 INTEGER,
    Gender              TEXT,
    ZipCode             TEXT,
    EducationLevel      TEXT,
    EmploymentStatus    TEXT,
    HouseholdIncomeUSD  INTEGER,
    HasChronicDisease  INTEGER,
    SmokingStatus       TEXT,
    AlcoholUseFrequency TEXT,
    PhysicalActivityLevel TEXT,
    DietQualityScore    INTEGER,
    MentalHealthScore   INTEGER,
    AccessToCareScore   INTEGER,
    VaccinationStatus   TEXT,
    HealthInsuranceType TEXT,
    SatisfactionScore   INTEGER,
    Comments            TEXT,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE
);
INSERT INTO CommunityHealthSurveyResponse (SurveyResponseID, SurveyID, RespondentID, ResponseDate, Age, Gender, ZipCode, EducationLevel, EmploymentStatus, HouseholdIncomeUSD, HasChronicDisease, SmokingStatus, AlcoholUseFrequency, PhysicalActivityLevel, DietQualityScore, MentalHealthScore, AccessToCareScore, VaccinationStatus, HealthInsuranceType, SatisfactionScore, Comments, CreatedTimestamp, ModifiedTimestamp) VALUES (1, SURV001, RESP001, '2023-04-10', 45, Female, 12345, College, Employed, 55000, 1, FormerSmoker, Weekly, Moderate, 78, 82, 90, FullyVaccinated, Private, 85, None, '2023-04-10', '2023-04-10');
INSERT INTO CommunityHealthSurveyResponse (SurveyResponseID, SurveyID, RespondentID, ResponseDate, Age, Gender, ZipCode, EducationLevel, EmploymentStatus, HouseholdIncomeUSD, HasChronicDisease, SmokingStatus, AlcoholUseFrequency, PhysicalActivityLevel, DietQualityScore, MentalHealthScore, AccessToCareScore, VaccinationStatus, HealthInsuranceType, SatisfactionScore, Comments, CreatedTimestamp, ModifiedTimestamp) VALUES (2, SURV001, RESP002, '2023-04-12', 30, Male, 67890, HighSchool, Unemployed, 30000, 0, Never, Monthly, Low, 55, 70, 65, PartiallyVaccinated, Medicaid, 68, NeedsMoreInfo, '2023-04-12', '2023-04-12');
INSERT INTO CommunityHealthSurveyResponse (SurveyResponseID, SurveyID, RespondentID, ResponseDate, Age, Gender, ZipCode, EducationLevel, EmploymentStatus, HouseholdIncomeUSD, HasChronicDisease, SmokingStatus, AlcoholUseFrequency, PhysicalActivityLevel, DietQualityScore, MentalHealthScore, AccessToCareScore, VaccinationStatus, HealthInsuranceType, SatisfactionScore, Comments, CreatedTimestamp, ModifiedTimestamp) VALUES (3, SURV001, RESP003, '2023-04-15', 62, Female, 24680, Graduate, Retired, 72000, 1, FormerSmoker, None, Low, 60, 60, 70, FullyVaccinated, Medicare, 75, GoodService, '2023-04-15', '2023-04-15');

-- TelemedicineEncounter
CREATE TABLE TelemedicineEncounter
(
    EncounterID         INTEGER PRIMARY KEY,
    PatientID           INTEGER,
    ProviderID          INTEGER,
    EncounterDate       DATE,
    StartTime           TEXT,
    EndTime             TEXT,
    Modality            TEXT,
    Platform            TEXT,
    ReasonForVisit      TEXT,
    DiagnosisCode       TEXT,
    PrescriptionGiven   TEXT,
    FollowUpScheduled   INTEGER,
    FollowUpDate        DATE,
    DurationMinutes     INTEGER,
    VideoQualityScore   REAL,
    AudioQualityScore   REAL,
    ConnectivityIssues  INTEGER,
    PatientSatisfaction INTEGER,
    ProviderNotes       TEXT,
    BillingCode         TEXT,
    CreatedTimestamp    DATE,
    ModifiedTimestamp   DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(ID)
);
INSERT INTO TelemedicineEncounter (EncounterID, PatientID, ProviderID, EncounterDate, StartTime, EndTime, Modality, Platform, ReasonForVisit, DiagnosisCode, PrescriptionGiven, FollowUpScheduled, FollowUpDate, DurationMinutes, VideoQualityScore, AudioQualityScore, ConnectivityIssues, PatientSatisfaction, ProviderNotes, BillingCode, CreatedTimestamp, ModifiedTimestamp) VALUES (1, 101, 201, '2023-07-20', '10:00', '10:30', Video, Zoom, Checkup, D001, None, 1, '2023-08-15', 30, 0.9, 0.95, 0, 9, PatientStable, B001, '2023-07-20', '2023-07-20');
INSERT INTO TelemedicineEncounter (EncounterID, PatientID, ProviderID, EncounterDate, StartTime, EndTime, Modality, Platform, ReasonForVisit, DiagnosisCode, PrescriptionGiven, FollowUpScheduled, FollowUpDate, DurationMinutes, VideoQualityScore, AudioQualityScore, ConnectivityIssues, PatientSatisfaction, ProviderNotes, BillingCode, CreatedTimestamp, ModifiedTimestamp) VALUES (2, 102, 202, '2023-07-22', '14:15', '14:45', Audio, Teams, Followup, D002, Analgesic, 0, NULL, 30, 0.8, 0.85, 1, 7, DiscussedPainManagement, B002, '2023-07-22', '2023-07-22');
INSERT INTO TelemedicineEncounter (EncounterID, PatientID, ProviderID, EncounterDate, StartTime, EndTime, Modality, Platform, ReasonForVisit, DiagnosisCode, PrescriptionGiven, FollowUpScheduled, FollowUpDate, DurationMinutes, VideoQualityScore, AudioQualityScore, ConnectivityIssues, PatientSatisfaction, ProviderNotes, BillingCode, CreatedTimestamp, ModifiedTimestamp) VALUES (3, 103, 203, '2023-07-25', '09:00', '09:20', Video, Webex, LabResultReview, D003, None, 0, NULL, 20, 0.95, 0.97, 0, 10, ResultsNormal, B003, '2023-07-25', '2023-07-25');