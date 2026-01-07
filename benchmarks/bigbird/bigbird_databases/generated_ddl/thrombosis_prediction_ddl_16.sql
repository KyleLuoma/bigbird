-- Hospital rooms and infrastructure
CREATE TABLE HospitalRoom (
    RoomID INTEGER PRIMARY KEY,
    Wing TEXT,
    Floor INTEGER,
    BedCount INTEGER,
    IsICU INTEGER,
    PhoneExt TEXT,
    HVACSystem TEXT,
    FireAlarmZone TEXT,
    CleaningSchedule TEXT,
    LastRenovationDate DATE,
    AccessControlLevel INTEGER,
    NurseStationID INTEGER,
    MaxOccupancy INTEGER,
    CurrentOccupancy INTEGER,
    ConstructionMaterial TEXT,
    WindowCount INTEGER,
    IsolationType TEXT,
    PowerCapacityKW REAL,
    WiFiSSID TEXT,
    MaintenanceVendor TEXT
);

INSERT INTO HospitalRoom VALUES (101,'NorthWing',2,2,0,'1234','VAV','ZoneA','Weekly','2022-05-01',3,2001,2,1,'Concrete',2,'None',5.5,'HospitalWiFi','CleanCo');
INSERT INTO HospitalRoom VALUES (102,'SouthWing',3,1,1,'5678','Chilled','ZoneB','Biweekly','2021-09-15',5,2002,1,0,'Brick',1,'Airborne',6.0,'HospWifi2','MaintainX');
INSERT INTO HospitalRoom VALUES (103,'EastWing',1,3,0,'9012','Standard','ZoneC','Monthly','2020-12-20',2,2003,3,2,'Steel',3,'Contact',4.8,'WiFiEast','VendorY');

-- Shipment tracking for supply chain
CREATE TABLE SupplyChainShipmentLog (
    ShipmentID INTEGER PRIMARY KEY,
    Carrier TEXT,
    TrackingNumber TEXT,
    OriginFacility TEXT,
    DestinationFacility TEXT,
    ShipDate DATE,
    ExpectedDeliveryDate DATE,
    ActualDeliveryDate DATE,
    WeightKG REAL,
    VolumeM3 REAL,
    ContainerType TEXT,
    HazardousMaterialFlag INTEGER,
    TemperatureControl INTEGER,
    PalletCount INTEGER,
    SealNumber TEXT,
    ReceivedBy TEXT,
    InspectionStatus TEXT,
    Comments TEXT,
    CostUSD REAL,
    FreightClass TEXT,
    CustomsDeclaredValue REAL
);

INSERT INTO SupplyChainShipmentLog VALUES (5001,'FastShip','TRK12345','MainWarehouse','RegionalClinic','2023-01-10','2023-01-12','2023-01-12',1500.5,12.3,'Reefer',0,1,20,'SN001','JohnDoe','Passed','NoIssues',2000.00,'Class50',25000.00);
INSERT INTO SupplyChainShipmentLog VALUES (5002,'QuickLogistics','TRK54321','RegionalClinic','LocalPharmacy','2023-02-05','2023-02-06','2023-02-06',300.0,2.5,'Box',1,0,5,'SN002','JaneSmith','Passed','HandledWithCare',500.00,'Class55',8000.00);
INSERT INTO SupplyChainShipmentLog VALUES (5003,'GlobalTrans','TRK98765','CentralDepot','EastHospital','2023-03-15','2023-03-18','2023-03-19',2500.0,20.0,'FlatRack',0,1,30,'SN003','MikeBrown','Failed','DamageObserved',3500.00,'Class45',40000.00);

-- Calibration records for imaging devices
CREATE TABLE ImagingDeviceCalibration (
    CalibrationID INTEGER PRIMARY KEY,
    DeviceSerial TEXT,
    DeviceModel TEXT,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    CalibrationResult TEXT,
    Notes TEXT,
    NextDueDate DATE,
    SoftwareVersion TEXT,
    CalibrationType TEXT,
    CenterX REAL,
    CenterY REAL,
    ScaleFactor REAL,
    Voltage REAL,
    Current REAL,
    TemperatureC REAL,
    HumidityPercent REAL,
    RadiationDose REAL,
    CalibrationCertificateNumber TEXT,
    ApprovalStatus TEXT,
    LabReference TEXT
);

INSERT INTO ImagingDeviceCalibration VALUES (9001,'IMG001','XRayModelA','2023-04-01',301,'Pass','AllGood','2024-04-01','v1.2','Geometric',0.0,0.0,1.0,120.0,5.0,22.5,45.0,0.0,'CERT123','Approved','LabA');
INSERT INTO ImagingDeviceCalibration VALUES (9002,'IMG002','MRIPro','2023-05-10',302,'Pass','MinorAdjust','2024-05-10','v3.5','Magnetic',0.1,0.1,0.98,200.0,10.0,21.0,40.0,0.5,'CERT124','Approved','LabB');
INSERT INTO ImagingDeviceCalibration VALUES (9003,'IMG003','CTScannerX','2023-06-20',303,'Fail','RecalibrationNeeded','2024-06-20','v2.0','CT',0.2,0.2,0.95,130.0,6.0,20.0,50.0,1.2,'CERT125','Pending','LabC');

-- Continuing education courses for staff
CREATE TABLE ContinuingEducationCourse (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT,
    Provider TEXT,
    StartDate DATE,
    EndDate DATE,
    Credits REAL,
    Modality TEXT,
    Audience TEXT,
    InstructorName TEXT,
    CourseCode TEXT,
    Language TEXT,
    MaxParticipants INTEGER,
    EnrollmentCount INTEGER,
    Location TEXT,
    CostUSD REAL,
    CertificationAwarded TEXT,
    PrerequisiteCourseID INTEGER,
    CourseDescription TEXT,
    EvaluationScoreAvg REAL,
    ScheduleURL TEXT
);

INSERT INTO ContinuingEducationCourse VALUES (2001,'AdvancedCardiology','MedInstitute','2023-07-01','2023-07-05',5.0,'InPerson','Cardiologists','DrSmith','ACARD01','English',30,25,'ConferenceHallA',1500.00,'CertificateAC',NULL,'Intensive course on cardiac care',4.5,'http://schedule1.com');
INSERT INTO ContinuingEducationCourse VALUES (2002,'PediatricNutrition','HealthOrg','2023-08-10','2023-08-12',3.0,'Online','Pediatricians','DrLee','PNUT02','Spanish',20,18,'VirtualRoom',800.00,'CertificatePN',2001,'Focus on child nutrition',4.2,'http://schedule2.com');
INSERT INTO ContinuingEducationCourse VALUES (2003,'EmergencyResponse','SafetyBoard','2023-09-15','2023-09-16',2.0,'Hybrid','EMS','DrKim','ERESP03','English',25,20,'TrainingCenter',600.00,'CertificateER',2002,'Emergency protocols',4.7,'http://schedule3.com');

-- Physical fitness assessments
CREATE TABLE PhysicalFitnessAssessment (
    AssessmentID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    AssessmentDate DATE,
    HeightCM REAL,
    WeightKG REAL,
    BMI REAL,
    BodyFatPercent REAL,
    VO2Max REAL,
    RestingHR INTEGER,
    BloodPressureSys INTEGER,
    BloodPressureDia INTEGER,
    FlexibilityScore INTEGER,
    StrengthScore INTEGER,
    BalanceScore INTEGER,
    EnduranceScore INTEGER,
    MobilityScore INTEGER,
    AssessmentNotes TEXT,
    AssessorID INTEGER,
    FollowUpDate DATE,
    GoalSetting TEXT
);

INSERT INTO PhysicalFitnessAssessment VALUES (3001,101,'2023-01-20',175.0,80.0,26.1,18.5,45.0,60,120,80,7,8,9,6,8,'GoodCondition',401,'2023-04-20','IncreaseStrength');
INSERT INTO PhysicalFitnessAssessment VALUES (3002,102,'2023-02-15',165.0,70.0,25.7,20.0,42.0,58,118,76,6,7,8,7,7,'Moderate',402,'2023-05-15','ImproveFlexibility');
INSERT INTO PhysicalFitnessAssessment VALUES (3003,103,'2023-03-10',180.0,90.0,27.8,22.0,40.0,65,130,85,5,6,5,5,6,'NeedsImprovement',403,'2023-06-10','WeightLoss');

-- Public health vaccination campaigns
CREATE TABLE PublicHealthVaccinationCampaign (
    CampaignID INTEGER PRIMARY KEY,
    Name TEXT,
    StartDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    VaccineType TEXT,
    DosesAdministered INTEGER,
    LocationsCount INTEGER,
    MobileUnitsUsed INTEGER,
    FundingSource TEXT,
    BudgetUSD REAL,
    AdverseEventsReported INTEGER,
    CoveragePercentage REAL,
    PublicAwarenessScore REAL,
    LogisticsPartner TEXT,
    StorageFacility TEXT,
    ColdChainMaintained INTEGER,
    QAInspectionDate DATE,
    LeadCoordinator TEXT,
    OutcomeSummary TEXT
);

INSERT INTO PublicHealthVaccinationCampaign VALUES (4001,'FluSeason2023','2023-10-01','2024-03-31','Adults','Influenza',50000,120,10,'GovGrant',750000.00,5,85.5,90.0,'LogiCo','ColdStoreA',1,'2023-09-20','AliceBrown','Successful');
INSERT INTO PublicHealthVaccinationCampaign VALUES (4002,'COVIDBooster2023','2023-09-15','2024-02-28','Seniors','mRNA',30000,80,5,'PharmaFunding',500000.00,2,78.0,85.0,'HealthLogistics','FreezerB',1,'2023-09-10','BobSmith','Moderate');
INSERT INTO PublicHealthVaccinationCampaign VALUES (4003,'HPVVaccine2024','2024-01-01','2024-06-30','Children','HPV',20000,60,3,'Charity',400000.00,1,70.0,80.0,'MediTrans','ColdVault',1,'2023-12-20','CarolLee','OnTrack');

-- Biohazard material tracking
CREATE TABLE BiohazardMaterialTracking (
    TrackingID INTEGER PRIMARY KEY,
    MaterialType TEXT,
    ContainerID TEXT,
    CollectionDate DATE,
    CollectedBy TEXT,
    TransportMethod TEXT,
    DestinationFacility TEXT,
    ArrivalDate DATE,
    DisposalMethod TEXT,
    DisposalDate DATE,
    HazardLevel INTEGER,
    BiohazardLabel TEXT,
    VolumeL REAL,
    WeightKG REAL,
    TemperatureDuringTransport REAL,
    ChainOfCustodyLog TEXT,
    RegulatoryComplianceStatus TEXT,
    Notes TEXT,
    PermitNumber TEXT,
    ComplianceOfficerID INTEGER
);

INSERT INTO BiohazardMaterialTracking VALUES (6001,'BloodSamples','CNT001','2023-04-05','NurseA','Refrigerated','LabX','2023-04-06','Incineration','2023-04-07',2,'B-2',5.0,4.5,4.0,'Log123','Compliant','NoIssues','PERM001',701);
INSERT INTO BiohazardMaterialTracking VALUES (6002,'TissueBlocks','CNT002','2023-05-10','TechB','Frozen','LabY','2023-05-11','Freezer','2023-05-12',3,'B-3',3.0,2.8,-20.0,'Log124','Compliant','HandledCarefully','PERM002',702);
INSERT INTO BiohazardMaterialTracking VALUES (6003,'PathogenCulture','CNT003','2023-06-15','ScientistC','DryIce','BioSafetyLab','2023-06-16','Autoclave','2023-06-17',4,'B-4',2.0,1.9,-80.0,'Log125','Pending','AwaitingApproval','PERM003',703);

-- Medical equipment purchase records
CREATE TABLE MedicalEquipmentPurchase (
    PurchaseID INTEGER PRIMARY KEY,
    EquipmentName TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    PurchasePriceUSD REAL,
    FundingSource TEXT,
    VendorName TEXT,
    ContractNumber TEXT,
    DeliveryDate DATE,
    InstallationDate DATE,
    InitialCalibrationDate DATE,
    AssignedDepartment TEXT,
    PrimaryUserID INTEGER,
    DepreciationMethod TEXT,
    DepreciationStartDate DATE,
    AssetTag TEXT,
    Status TEXT
);

INSERT INTO MedicalEquipmentPurchase VALUES (7001,'MRI Scanner','Siemens','MAGNETOM','SN12345','2022-01-15','2027-01-15',2500000.00,'Budget','MediSupply','CN1001','2022-02-01','2022-02-10','2022-02-15','Radiology',801,'StraightLine','2022-01-15','AT7001','Active');
INSERT INTO MedicalEquipmentPurchase VALUES (7002,'Ventilator','GE','Carescape','SN67890','2023-03-20','2028-03-20',150000.00,'Grant','HealthEquip','CN2002','2023-04-05','2023-04-07','2023-04-08','ICU',802,'DecliningBalance','2023-03-20','AT7002','Active');
INSERT INTO MedicalEquipmentPurchase VALUES (7003,'Ultrasound','Philips','EPIQ','SN54321','2021-06-10','2026-06-10',350000.00,'Donations','MedDevices','CN3003','2021-07-01','2021-07-03','2021-07-04','Cardiology',803,'UnitsOfProduction','2021-06-10','AT7003','Retired');

-- Hospital energy metrics
CREATE TABLE HospitalEnergyMetric (
    MetricID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    DateRecorded DATE,
    ElectricityKWh REAL,
    GasTherms REAL,
    SteamPounds REAL,
    RenewablePercentage REAL,
    PeakDemandKW REAL,
    AvgDemandKW REAL,
    CO2EmissionsKg REAL,
    EnergyCostUSD REAL,
    WeatherTemperatureC REAL,
    HumidityPercent REAL,
    OccupancyRate REAL,
    LightingEfficiency REAL,
    HVACEfficiency REAL,
    BackupGeneratorRuntimeHours REAL,
    SolarGenerationKWh REAL,
    EnergySavingInitiative TEXT,
    MetricNotes TEXT
);

INSERT INTO HospitalEnergyMetric VALUES (8001,1,'2023-12-31',1200000.0,50000.0,20000.0,30.0,800.0,600.0,250000.0,150000.0,5.0,45.0,95.0,85.0,80.0,12.0,300000.0,'LEDUpgrade','AllGood');
INSERT INTO HospitalEnergyMetric VALUES (8002,2,'2023-12-31',800000.0,30000.0,15000.0,25.0,600.0,450.0,180000.0,100000.0,4.5,50.0,90.0,80.0,75.0,8.0,200000.0,'HVACOptimization','ImprovementSeen');
INSERT INTO HospitalEnergyMetric VALUES (8003,3,'2023-12-31',950000.0,40000.0,18000.0,28.0,700.0,500.0,210000.0,120000.0,5.5,48.0,92.0,82.0,78.0,10.0,250000.0,'InsulationUpgrade','Stable');

-- Clinical outcome metrics
CREATE TABLE ClinicalOutcomeMetric (
    OutcomeID INTEGER PRIMARY KEY,
    PatientID INTEGER,
    EncounterID INTEGER,
    MetricDate DATE,
    MortalityFlag INTEGER,
    ReadmissionWithin30Days INTEGER,
    LengthOfStayDays INTEGER,
    ComplicationCount INTEGER,
    PainScore INTEGER,
    MobilityScore INTEGER,
    DischargeDisposition TEXT,
    FollowUpScheduled INTEGER,
    SatisfactionScore REAL,
    FunctionalStatusScore INTEGER,
    InfectionFlag INTEGER,
    SepsisFlag INTEGER,
    ICUTransferFlag INTEGER,
    VentilatorDays INTEGER,
    MedicationAdherenceScore REAL,
    OutcomeSummary TEXT
);

INSERT INTO ClinicalOutcomeMetric VALUES (9001,101,5001,'2023-04-10',0,0,5,1,3,7,'Home',1,4.5,80,0,0,0,0,95.0,'PositiveRecovery');
INSERT INTO ClinicalOutcomeMetric VALUES (9002,102,5002,'2023-05-20',0,1,8,2,5,5,'Rehab',1,3.8,70,1,0,1,2,85.0,'ComplicatedRecovery');
INSERT INTO ClinicalOutcomeMetric VALUES (9003,103,5003,'2023-06-15',1,0,10,3,8,4,'Deceased',0,0.0,0,1,1,1,12,60.0,'UnfavorableOutcome');