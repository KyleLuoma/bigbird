-- Patient insurance coverage details
CREATE TABLE PatientInsuranceCoverage (
    PolicyID INTEGER,
    PatientID INTEGER,
    InsurerName TEXT,
    PolicyNumber TEXT,
    CoverageStartDate DATE,
    CoverageEndDate DATE,
    PlanType TEXT,
    PremiumAmount REAL,
    Deductible REAL,
    CoPay REAL,
    OutOfPocketMax REAL,
    NetworkType TEXT,
    PrimaryHolder TEXT,
    SecondaryHolder TEXT,
    GroupNumber TEXT,
    EmployerName TEXT,
    PolicyStatus TEXT,
    ClaimsSubmitted INTEGER,
    ClaimsApproved INTEGER,
    LastUpdated DATE
);

INSERT INTO PatientInsuranceCoverage (PolicyID,PatientID,InsurerName,PolicyNumber,CoverageStartDate,CoverageEndDate,PlanType,PremiumAmount,Deductible,CoPay,OutOfPocketMax,NetworkType,PrimaryHolder,SecondaryHolder,GroupNumber,EmployerName,PolicyStatus,ClaimsSubmitted,ClaimsApproved,LastUpdated)
VALUES (1,101,'HealthInsureCo','HIC123456','2022-01-01','2023-12-31','PPO',350.75,500,20,2000,'InNetwork','John Doe','Jane Doe','GRP001','Acme Corp','Active',3,2,'2023-10-10');

INSERT INTO PatientInsuranceCoverage (PolicyID,PatientID,InsurerName,PolicyNumber,CoverageStartDate,CoverageEndDate,PlanType,PremiumAmount,Deductible,CoPay,OutOfPocketMax,NetworkType,PrimaryHolder,SecondaryHolder,GroupNumber,EmployerName,PolicyStatus,ClaimsSubmitted,ClaimsApproved,LastUpdated)
VALUES (2,102,'MediGuard','MG987654','2021-06-15','2024-06-14','HMO',420.00,300,15,1500,'InNetwork','Alice Smith','','GRP002','Beta Industries','Active',1,1,'2023-09-05');

INSERT INTO PatientInsuranceCoverage (PolicyID,PatientID,InsurerName,PolicyNumber,CoverageStartDate,CoverageEndDate,PlanType,PremiumAmount,Deductible,CoPay,OutOfPocketMax,NetworkType,PrimaryHolder,SecondaryHolder,GroupNumber,EmployerName,PolicyStatus,ClaimsSubmitted,ClaimsApproved,LastUpdated)
VALUES (3,103,'SecureHealth','SH555555','2020-03-01','2025-02-28','EPO',299.99,400,25,2500,'OutOfNetwork','Bob Johnson','Mary Johnson','GRP003','Gamma LLC','Lapsed',0,0,'2023-08-20');

--------------------------------------------------------

-- Energy usage logs for each hospital facility
CREATE TABLE HospitalFacilityEnergyLog (
    LogID INTEGER,
    FacilityID INTEGER,
    LogDate DATE,
    ElectricityUsageKWh REAL,
    GasUsageTherms REAL,
    WaterUsageGallons REAL,
    RenewableEnergyKWh REAL,
    PeakDemandKW REAL,
    EnergyCostUSD REAL,
    CarbonEmissionsKg REAL,
    MaintenanceFlag INTEGER,
    OperatorName TEXT,
    Shift TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    PowerOutageFlag INTEGER,
    OutageDurationMinutes INTEGER,
    SolarGenerationKWh REAL,
    BatteryStorageKWh REAL,
    Comments TEXT
);

INSERT INTO HospitalFacilityEnergyLog (LogID,FacilityID,LogDate,ElectricityUsageKWh,GasUsageTherms,WaterUsageGallons,RenewableEnergyKWh,PeakDemandKW,EnergyCostUSD,CarbonEmissionsKg,MaintenanceFlag,OperatorName,Shift,TemperatureC,HumidityPercent,PowerOutageFlag,OutageDurationMinutes,SolarGenerationKWh,BatteryStorageKWh,Comments)
VALUES (1001,10,'2023-10-01',12500.5,800.2,45000.0,1500.0,450.0,3200.75,21000.0,0,'Emily Clark','Day',22.5,45.0,0,0,1450.0,200.0,'Normal operation');

INSERT INTO HospitalFacilityEnergyLog (LogID,FacilityID,LogDate,ElectricityUsageKWh,GasUsageTherms,WaterUsageGallons,RenewableEnergyKWh,PeakDemandKW,EnergyCostUSD,CarbonEmissionsKg,MaintenanceFlag,OperatorName,Shift,TemperatureC,HumidityPercent,PowerOutageFlag,OutageDurationMinutes,SolarGenerationKWh,BatteryStorageKWh,Comments)
VALUES (1002,11,'2023-10-01',9800.0,650.0,38000.0,1200.0,380.0,2600.00,17000.0,1,'Michael Lee','Night',19.8,50.0,1,45,1150.0,180.0,'Scheduled maintenance');

INSERT INTO HospitalFacilityEnergyLog (LogID,FacilityID,LogDate,ElectricityUsageKWh,GasUsageTherms,WaterUsageGallons,RenewableEnergyKWh,PeakDemandKW,EnergyCostUSD,CarbonEmissionsKg,MaintenanceFlag,OperatorName,Shift,TemperatureC,HumidityPercent,PowerOutageFlag,OutageDurationMinutes,SolarGenerationKWh,BatteryStorageKWh,Comments)
VALUES (1003,12,'2023-10-01',14300.2,900.5,52000.0,1700.0,510.0,3800.30,24000.0,0,'Sarah Patel','Day',23.1,40.0,0,0,1650.0,220.0,'Peak usage due to new wing opening');

--------------------------------------------------------

-- Summary of radiology readings
CREATE TABLE RadiologyReadingSummary (
    ReadingID INTEGER,
    StudyID INTEGER,
    PatientID INTEGER,
    RadiologistID INTEGER,
    ReadingDate DATE,
    Modality TEXT,
    BodyPart TEXT,
    FindingsSummary TEXT,
    Impression TEXT,
    FollowUpRecommended TEXT,
    UrgencyLevel TEXT,
    ReportStatus TEXT,
    ImageQualityScore INTEGER,
    RadiationDose_mGy REAL,
    ContrastUsedFlag INTEGER,
    ContrastType TEXT,
    ScanDurationMinutes INTEGER,
    EquipmentID INTEGER,
    PACSLocation TEXT,
    Notes TEXT
);

INSERT INTO RadiologyReadingSummary (ReadingID,StudyID,PatientID,RadiologistID,ReadingDate,Modality,BodyPart,FindingsSummary,Impression,FollowUpRecommended,UrgencyLevel,ReportStatus,ImageQualityScore,RadiationDose_mGy,ContrastUsedFlag,ContrastType,ScanDurationMinutes,EquipmentID,PACSLocation,Notes)
VALUES (5001,30001,101,201,'2023-09-20','CT','Chest','Multiple nodules noted','Likely benign','Repeat scan in 12 months','Routine','Final',85,5.2,1,'Iodine',12,4500,'PACS01','No further comment');

INSERT INTO RadiologyReadingSummary (ReadingID,StudyID,PatientID,RadiologistID,ReadingDate,Modality,BodyPart,FindingsSummary,Impression,FollowUpRecommended,UrgencyLevel,ReportStatus,ImageQualityScore,RadiationDose_mGy,ContrastUsedFlag,ContrastType,ScanDurationMinutes,EquipmentID,PACSLocation,Notes)
VALUES (5002,30002,102,202,'2023-09-21','MRI','Knee','Meniscal tear observed','Repair recommended','Orthopedic consult','Urgent','Preliminary',90,0.0,0,'',22,4520,'PACS02','Patient moved during acquisition');

INSERT INTO RadiologyReadingSummary (ReadingID,StudyID,PatientID,RadiologistID,ReadingDate,Modality,BodyPart,FindingsSummary,Impression,FollowUpRecommended,UrgencyLevel,ReportStatus,ImageQualityScore,RadiationDose_mGy,ContrastUsedFlag,ContrastType,ScanDurationMinutes,EquipmentID,PACSLocation,Notes)
VALUES (5003,30003,103,203,'2023-09-22','XRay','Abdomen','Normal study','No abnormality','None','Routine','Final',78,0.5,0,'',5,4530,'PACS03','Clear images');

--------------------------------------------------------

-- Tracking of pathology specimens
CREATE TABLE PathologySpecimenTracking (
    SpecimenID INTEGER,
    PatientID INTEGER,
    CollectionDate DATE,
    SpecimenType TEXT,
    AnatomicalSite TEXT,
    FixationMethod TEXT,
    TransportTemperatureC REAL,
    TransportTimeMinutes INTEGER,
    ReceivedDate DATE,
    LaboratoryID INTEGER,
    AccessionNumber TEXT,
    ProcessingStatus TEXT,
    StainType TEXT,
    SlideNumber INTEGER,
    PathologistID INTEGER,
    DiagnosisCode TEXT,
    ReportDate DATE,
    ReportID INTEGER,
    QualityControlFlag INTEGER,
    Comments TEXT
);

INSERT INTO PathologySpecimenTracking (SpecimenID,PatientID,CollectionDate,SpecimenType,AnatomicalSite,FixationMethod,TransportTemperatureC,TransportTimeMinutes,ReceivedDate,LaboratoryID,AccessionNumber,ProcessingStatus,StainType,SlideNumber,PathologistID,DiagnosisCode,ReportDate,ReportID,QualityControlFlag,Comments)
VALUES (7001,101,'2023-09-15','Biopsy','Liver','Formalin',4.0,30,'2023-09-15',31,'ACC001','InProcess','H&E',12,401,'D50','2023-09-20',9001,0,'Awaiting final review');

INSERT INTO PathologySpecimenTracking (SpecimenID,PatientID,CollectionDate,SpecimenType,AnatomicalSite,FixationMethod,TransportTemperatureC,TransportTimeMinutes,ReceivedDate,LaboratoryID,AccessionNumber,ProcessingStatus,StainType,SlideNumber,PathologistID,DiagnosisCode,ReportDate,ReportID,QualityControlFlag,Comments)
VALUES (7002,102,'2023-09-16','Cytology','Bronchial','Alcohol',6.0,45,'2023-09-16',32,'ACC002','Completed','Pap',5,402,'C34','2023-09-22',9002,1,'QC passed');

INSERT INTO PathologySpecimenTracking (SpecimenID,PatientID,CollectionDate,SpecimenType,AnatomicalSite,FixationMethod,TransportTemperatureC,TransportTimeMinutes,ReceivedDate,LaboratoryID,AccessionNumber,ProcessingStatus,StainType,SlideNumber,PathologistID,DiagnosisCode,ReportDate,ReportID,QualityControlFlag,Comments)
VALUES (7003,103,'2023-09-17','Surgical','Skin','Formalin',5.0,20,'2023-09-17',33,'ACC003','InProcess','PAS',3,403,'L40','2023-09-25',9003,0,'Delayed due to equipment maintenance');

--------------------------------------------------------

-- Outcomes recorded for physiotherapy sessions
CREATE TABLE PhysiotherapyOutcome (
    SessionID INTEGER,
    PatientID INTEGER,
    TherapistID INTEGER,
    SessionDate DATE,
    TherapyType TEXT,
    DurationMinutes INTEGER,
    ExerciseCode TEXT,
    PainScorePre INTEGER,
    PainScorePost INTEGER,
    MobilityScorePre INTEGER,
    MobilityScorePost INTEGER,
    RangeOfMotionDegrees REAL,
    StrengthScore INTEGER,
    PatientFeedback TEXT,
    FollowUpNeeded INTEGER,
    SessionNotes TEXT,
    EquipmentUsed TEXT,
    SessionOutcome TEXT,
    BillingCode TEXT,
    InsuranceApprovedFlag INTEGER
);

INSERT INTO PhysiotherapyOutcome (SessionID,PatientID,TherapistID,SessionDate,TherapyType,DurationMinutes,ExerciseCode,PainScorePre,PainScorePost,MobilityScorePre,MobilityScorePost,RangeOfMotionDegrees,StrengthScore,PatientFeedback,FollowUpNeeded,SessionNotes,EquipmentUsed,SessionOutcome,BillingCode,InsuranceApprovedFlag)
VALUES (9001,101,501,'2023-09-18','ManualTherapy',45,'EX001',6,3,4,7,85.0,8,'Felt improvement',1,'Increase stretch duration', 'TheraBand', 'Improved', 'PT001',1);

INSERT INTO PhysiotherapyOutcome (SessionID,PatientID,TherapistID,SessionDate,TherapyType,DurationMinutes,ExerciseCode,PainScorePre,PainScorePost,MobilityScorePre,MobilityScorePost,RangeOfMotionDegrees,StrengthScore,PatientFeedback,FollowUpNeeded,SessionNotes,EquipmentUsed,SessionOutcome,BillingCode,InsuranceApprovedFlag)
VALUES (9002,102,502,'2023-09-19','Aquatic',60,'EX002',8,5,5,8,70.0,7,'Less pain after water therapy',0,'No further session needed', 'Pool', 'Stable', 'PT002',1);

INSERT INTO PhysiotherapyOutcome (SessionID,PatientID,TherapistID,SessionDate,TherapyType,DurationMinutes,ExerciseCode,PainScorePre,PainScorePost,MobilityScorePre,MobilityScorePost,RangeOfMotionDegrees,StrengthScore,PatientFeedback,FollowUpNeeded,SessionNotes,EquipmentUsed,SessionOutcome,BillingCode,InsuranceApprovedFlag)
VALUES (9003,103,503,'2023-09-20','Electrotherapy',30,'EX003',5,4,6,9,95.0,9,'Very satisfied',0,'Continue current plan', 'TENS', 'Excellent', 'PT003',1);

--------------------------------------------------------

-- Log of patient nutrition supplement intake
CREATE TABLE NutritionSupplementIntakeLog (
    IntakeID INTEGER,
    PatientID INTEGER,
    SupplementName TEXT,
    DoseMg REAL,
    FrequencyPerDay INTEGER,
    StartDate DATE,
    EndDate DATE,
    PrescribedBy TEXT,
    PharmacyID INTEGER,
    AdministrationRoute TEXT,
    ComplianceScore INTEGER,
    SideEffectsObserved TEXT,
    LabMonitoringDate DATE,
    LabResult TEXT,
    NutritionistID INTEGER,
    Comments TEXT,
    LastUpdated DATE,
    RecordStatus TEXT,
    BatchNumber TEXT,
    Manufacturer TEXT,
    StorageCondition TEXT
);

INSERT INTO NutritionSupplementIntakeLog (IntakeID,PatientID,SupplementName,DoseMg,FrequencyPerDay,StartDate,EndDate,PrescribedBy,PharmacyID,AdministrationRoute,ComplianceScore,SideEffectsObserved,LabMonitoringDate,LabResult,NutritionistID,Comments,LastUpdated,RecordStatus,BatchNumber,Manufacturer,StorageCondition)
VALUES (11001,101,'Vitamin D',1000,1,'2023-09-01','2024-08-31','Dr Smith',201,'Oral',95,'None','2023-09-15','25(OH)D: 45 ng/mL',301,'Patient reports good energy', '2023-09-20','Active','BATCH123','HealthCorp','RoomTemp');

INSERT INTO NutritionSupplementIntakeLog (IntakeID,PatientID,SupplementName,DoseMg,FrequencyPerDay,StartDate,EndDate,PrescribedBy,PharmacyID,AdministrationRoute,ComplianceScore,SideEffectsObserved,LabMonitoringDate,LabResult,NutritionistID,Comments,LastUpdated,RecordStatus,BatchNumber,Manufacturer,StorageCondition)
VALUES (11002,102,'Omega 3',2000,2,'2023-09-05','2024-09-04','Dr Lee',202,'Oral',88,'Mild fishy aftertaste','2023-09-18','EPA/DHA ratio: 3:2',302,'Recommend continuation', '2023-09-22','Active','BATCH124','OmegaHealth','CoolDark');

INSERT INTO NutritionSupplementIntakeLog (IntakeID,PatientID,SupplementName,DoseMg,FrequencyPerDay,StartDate,EndDate,PrescribedBy,PharmacyID,AdministrationRoute,ComplianceScore,SideEffectsObserved,LabMonitoringDate,LabResult,NutritionistID,Comments,LastUpdated,RecordStatus,BatchNumber,Manufacturer,StorageCondition)
VALUES (11003,103,'Calcium',500,1,'2023-09-10','2024-09-09','Dr Patel',203,'Oral',92,'None','2023-09-20','Serum Ca: 9.2 mg/dL',303,'No changes needed', '2023-09-25','Active','BATCH125','CalciPlus','RoomTemp');

--------------------------------------------------------

-- Certificates for medical device calibrations
CREATE TABLE MedicalDeviceCalibrationCertificate (
    CertificateID INTEGER,
    DeviceID INTEGER,
    CalibrationDate DATE,
    TechnicianID INTEGER,
    CalibrationLab TEXT,
    CertificateNumber TEXT,
    ValidFrom DATE,
    ValidTo DATE,
    CalibrationMethod TEXT,
    StandardReference TEXT,
    TemperatureC REAL,
    HumidityPercent REAL,
    PressureKPa REAL,
    PassFailStatus TEXT,
    Notes TEXT,
    NextDueDate DATE,
    CalibrationCostUSD REAL,
    EquipmentType TEXT,
    SerialNumber TEXT,
    Manufacturer TEXT
);

INSERT INTO MedicalDeviceCalibrationCertificate (CertificateID,DeviceID,CalibrationDate,TechnicianID,CalibrationLab,CertificateNumber,ValidFrom,ValidTo,CalibrationMethod,StandardReference,TemperatureC,HumidityPercent,PressureKPa,PassFailStatus,Notes,NextDueDate,CalibrationCostUSD,EquipmentType,SerialNumber,Manufacturer)
VALUES (2001,501,'2023-08-01',601,'MetroLab','CERT1001','2023-08-01','2024-08-01','Electrical','NIST-XYZ',22.0,45.0,101.3,'Pass','All parameters within tolerance','2024-08-01',150.00,'InfusionPump','SN12345','MediTech');

INSERT INTO MedicalDeviceCalibrationCertificate (CertificateID,DeviceID,CalibrationDate,TechnicianID,CalibrationLab,CertificateNumber,ValidFrom,ValidTo,CalibrationMethod,StandardReference,TemperatureC,HumidityPercent,PressureKPa,PassFailStatus,Notes,NextDueDate,CalibrationCostUSD,EquipmentType,SerialNumber,Manufacturer)
VALUES (2002,502,'2023-08-15',602,'HealthCal','CERT1002','2023-08-15','2024-08-15','Mechanical','ISO-ABC',21.5,40.0,100.8,'Pass','No deviation observed','2024-08-15',200.00,'Ventilator','SN54321','LifeVent');

INSERT INTO MedicalDeviceCalibrationCertificate (CertificateID,DeviceID,CalibrationDate,TechnicianID,CalibrationLab,CertificateNumber,ValidFrom,ValidTo,CalibrationMethod,StandardReference,TemperatureC,HumidityPercent,PressureKPa,PassFailStatus,Notes,NextDueDate,CalibrationCostUSD,EquipmentType,SerialNumber,Manufacturer)
VALUES (2003,503,'2023-09-01',603,'BioLab','CERT1003','2023-09-01','2024-09-01','Optical','ASTM-OPQ',20.0,42.0,101.0,'Fail','Alignment error detected','2024-09-01',250.00,'MRI','SN98765','ImagoMedical');

--------------------------------------------------------

-- Schedule of visits for clinical trial participants
CREATE TABLE ClinicalTrialVisitSchedule (
    VisitID INTEGER,
    TrialID INTEGER,
    PatientID INTEGER,
    VisitNumber INTEGER,
    PlannedDate DATE,
    WindowStartDate DATE,
    WindowEndDate DATE,
    VisitType TEXT,
    PrimaryInvestigatorID INTEGER,
    SiteID INTEGER,
    RequiredProcedures TEXT,
    EstimatedDurationMinutes INTEGER,
    ConsentStatus TEXT,
    VisitStatus TEXT,
    RoomNumber TEXT,
    NurseID INTEGER,
    CoordinatorID INTEGER,
    DocumentsPreparedFlag INTEGER,
    ReminderSentFlag INTEGER,
    Comments TEXT
);

INSERT INTO ClinicalTrialVisitSchedule (VisitID,TrialID,PatientID,VisitNumber,PlannedDate,WindowStartDate,WindowEndDate,VisitType,PrimaryInvestigatorID,SiteID,RequiredProcedures,EstimatedDurationMinutes,ConsentStatus,VisitStatus,RoomNumber,NurseID,CoordinatorID,DocumentsPreparedFlag,ReminderSentFlag,Comments)
VALUES (3001,401,101,1,'2023-10-15','2023-10-10','2023-10-20','Baseline',701,801,'BloodDraw;ECG',120,'Signed','Scheduled','R101',901,1001,1,1,'First study visit');

INSERT INTO ClinicalTrialVisitSchedule (VisitID,TrialID,PatientID,VisitNumber,PlannedDate,WindowStartDate,WindowEndDate,VisitType,PrimaryInvestigatorID,SiteID,RequiredProcedures,EstimatedDurationMinutes,ConsentStatus,VisitStatus,RoomNumber,NurseID,CoordinatorID,DocumentsPreparedFlag,ReminderSentFlag,Comments)
VALUES (3002,401,102,2,'2023-11-15','2023-11-10','2023-11-20','FollowUp',702,802,'MRI;BloodDraw',150,'Signed','Pending','R202',902,1002,0,0,'Awaiting confirmation');

INSERT INTO ClinicalTrialVisitSchedule (VisitID,TrialID,PatientID,VisitNumber,PlannedDate,WindowStartDate,WindowEndDate,VisitType,PrimaryInvestigatorID,SiteID,RequiredProcedures,EstimatedDurationMinutes,ConsentStatus,VisitStatus,RoomNumber,NurseID,CoordinatorID,DocumentsPreparedFlag,ReminderSentFlag,Comments)
VALUES (3003,401,103,3,'2023-12-15','2023-12-10','2023-12-20','EndOfStudy',703,803,'Biopsy;LabTests',180,'Signed','Completed','R303',903,1003,1,1,'Final assessment completed');

--------------------------------------------------------

-- Records of staff travel for conferences and training
CREATE TABLE HospitalStaffTravelRecord (
    TravelID INTEGER,
    StaffID INTEGER,
    TravelDate DATE,
    Destination TEXT,
    Purpose TEXT,
    ModeOfTransport TEXT,
    DepartureTime TEXT,
    ArrivalTime TEXT,
    AccommodationProvided INTEGER,
    TravelCostUSD REAL,
    ApprovalStatus TEXT,
    SupervisorID INTEGER,
    TravelDurationHours REAL,
    Mileage INTEGER,
    PerDiemUSD REAL,
    ExpensesSubmittedFlag INTEGER,
    ReceiptCount INTEGER,
    TravelAgency TEXT,
    FlightNumber TEXT,
    HotelName TEXT,
    Notes TEXT
);

INSERT INTO HospitalStaffTravelRecord (TravelID,StaffID,TravelDate,Destination,Purpose,ModeOfTransport,DepartureTime,ArrivalTime,AccommodationProvided,TravelCostUSD,ApprovalStatus,SupervisorID,TravelDurationHours,Mileage,PerDiemUSD,ExpensesSubmittedFlag,ReceiptCount,TravelAgency,FlightNumber,HotelName,Notes)
VALUES (4001,601,'2023-09-20','Chicago','Conference','Air','08:00','12:30',1,750.00,'Approved',701,4.5,1200,150.00,1,5,'TravelCo','AA123','GrandHotel','Presented research poster');

INSERT INTO HospitalStaffTravelRecord (TravelID,StaffID,TravelDate,Destination,Purpose,ModeOfTransport,DepartureTime,ArrivalTime,AccommodationProvided,TravelCostUSD,ApprovalStatus,SupervisorID,TravelDurationHours,Mileage,PerDiemUSD,ExpensesSubmittedFlag,ReceiptCount,TravelAgency,FlightNumber,HotelName,Notes)
VALUES (4002,602,'2023-10-05','Boston','Training','Rail','09:15','15:45',0,300.00,'Pending',702,6.5,0,120.00,0,0,'','',,'CityInn','Attending advanced coding workshop');

INSERT INTO HospitalStaffTravelRecord (TravelID,StaffID,TravelDate,Destination,Purpose,ModeOfTransport,DepartureTime,ArrivalTime,AccommodationProvided,TravelCostUSD,ApprovalStatus,SupervisorID,TravelDurationHours,Mileage,PerDiemUSD,ExpensesSubmittedFlag,ReceiptCount,TravelAgency,FlightNumber,HotelName,Notes)
VALUES (4003,603,'2023-11-12','SanFrancisco','ResearchCollab','Air','07:45','11:20',1,900.00,'Approved',703,3.5,1500,200.00,1,4,'FlyHigh','UA456','BayView','Collaborated on multicenter trial');

--------------------------------------------------------

-- Assignments of patient care coordinators
CREATE TABLE PatientCareCoordinator (
    AssignmentID INTEGER,
    PatientID INTEGER,
    CoordinatorID INTEGER,
    AssignmentStartDate DATE,
    AssignmentEndDate DATE,
    PrimaryPhysicianID INTEGER,
    CarePlanID INTEGER,
    CommunicationMethod TEXT,
    FrequencyPerWeek INTEGER,
    Notes TEXT,
    Status TEXT,
    LastContactDate DATE,
    EscalationFlag INTEGER,
    FollowUpRequired INTEGER,
    RiskLevel TEXT,
    InsuranceCoordinatorFlag INTEGER,
    ContactPhone TEXT,
    ContactEmail TEXT,
    EmergencyContactID INTEGER,
    ReviewDate DATE
);

INSERT INTO PatientCareCoordinator (AssignmentID,PatientID,CoordinatorID,AssignmentStartDate,AssignmentEndDate,PrimaryPhysicianID,CarePlanID,CommunicationMethod,FrequencyPerWeek,Notes,Status,LastContactDate,EscalationFlag,FollowUpRequired,RiskLevel,InsuranceCoordinatorFlag,ContactPhone,ContactEmail,EmergencyContactID,ReviewDate)
VALUES (5001,101,801,'2023-09-01','2024-08-31',901,1001,'Phone',2,'Initial setup completed','Active','2023-09-20',0,0,'Low',0,'5551234567','coordinator1@hospital.org',1101,'2023-12-01');

INSERT INTO PatientCareCoordinator (AssignmentID,PatientID,CoordinatorID,AssignmentStartDate,AssignmentEndDate,PrimaryPhysicianID,CarePlanID,CommunicationMethod,FrequencyPerWeek,Notes,Status,LastContactDate,EscalationFlag,FollowUpRequired,RiskLevel,InsuranceCoordinatorFlag,ContactPhone,ContactEmail,EmergencyContactID,ReviewDate)
VALUES (5002,102,802,'2023-09-05','2024-09-04',902,1002,'Email',3,'Patient requested weekly updates','Active','2023-09-22',0,1,'Medium',1,'5559876543','coordinator2@hospital.org',1102,'2024-01-15');

INSERT INTO PatientCareCoordinator (AssignmentID,PatientID,CoordinatorID,AssignmentStartDate,AssignmentEndDate,PrimaryPhysicianID,CarePlanID,CommunicationMethod,FrequencyPerWeek,Notes,Status,LastContactDate,EscalationFlag,FollowUpRequired,RiskLevel,InsuranceCoordinatorFlag,ContactPhone,ContactEmail,EmergencyContactID,ReviewDate)
VALUES (5003,103,803,'2023-09-10','2024-09-09',903,1003,'SecurePortal',1,'High risk due to comorbidities','Active','2023-09-25',1,1,'High',1,'5555551212','coordinator3@hospital.org',1103,'2024-02-20');