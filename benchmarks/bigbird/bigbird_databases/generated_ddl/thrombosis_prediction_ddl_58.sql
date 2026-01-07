-- ClinicalStaffTrainingRecord: records of staff training activities
CREATE TABLE ClinicalStaffTrainingRecord (
    RecordID INTEGER PRIMARY KEY,
    StaffID INTEGER NULL,
    TrainingProgramID INTEGER NULL,
    TrainingDate DATE NULL,
    CompletionDate DATE NULL,
    TrainerName TEXT NULL,
    TrainingType TEXT NULL,
    DurationHours REAL NULL,
    CreditsEarned INTEGER NULL,
    AssessmentScore REAL NULL,
    CertificateNumber TEXT NULL,
    Location TEXT NULL,
    Department TEXT NULL,
    CourseLevel TEXT NULL,
    Modality TEXT NULL,
    TopicsCovered TEXT NULL,
    EvaluationComments TEXT NULL,
    FollowUpRequired INTEGER NULL,
    FollowUpDate DATE NULL,
    Status TEXT NULL
);

INSERT INTO ClinicalStaffTrainingRecord (RecordID,StaffID,TrainingProgramID,TrainingDate,CompletionDate,TrainerName,TrainingType,DurationHours,CreditsEarned,AssessmentScore,CertificateNumber,Location,Department,CourseLevel,Modality,TopicsCovered,EvaluationComments,FollowUpRequired,FollowUpDate,Status) VALUES
(1,101,2001,'2023-02-10','2023-02-12','DrSmith','Safety','8.0',2,92.5,'CERT001','RoomA','Nursing','Advanced','InPerson','InfectionControl','Good',0,NULL,'Completed'),
(2,102,2002,'2023-03-05','2023-03-06','MsJones','Leadership','6.5',1,88.0,'CERT002','RoomB','Administration','Intermediate','Online','TeamManagement','Satisfactory',1,'2023-04-01','Pending'),
(3,103,2003,'2023-01-20','2023-01-22','DrLee','Clinical','12.0',3,95.0,'CERT003','RoomC','Medicine','Advanced','Hybrid','CardiologyUpdates','Excellent',0,NULL,'Completed');

-- MedicalSupplyShipment: details of incoming medical supply shipments
CREATE TABLE MedicalSupplyShipment (
    ShipmentID INTEGER PRIMARY KEY,
    SupplierID INTEGER NULL,
    ShipmentDate DATE NULL,
    ReceivedDate DATE NULL,
    CarrierName TEXT NULL,
    TrackingNumber TEXT NULL,
    DestinationFacility TEXT NULL,
    TotalItems INTEGER NULL,
    TotalWeight REAL NULL,
    TemperatureControlled INTEGER NULL,
    RequisitionOrderID INTEGER NULL,
    InvoiceNumber TEXT NULL,
    FreightCost REAL NULL,
    HazardousMaterial INTEGER NULL,
    HandlingInstructions TEXT NULL,
    ReceivedByStaffID INTEGER NULL,
    InspectionStatus TEXT NULL,
    InspectionNotes TEXT NULL,
    DelayReason TEXT NULL,
    AdditionalCharges REAL NULL
);

INSERT INTO MedicalSupplyShipment (ShipmentID,SupplierID,ShipmentDate,ReceivedDate,CarrierName,TrackingNumber,DestinationFacility,TotalItems,TotalWeight,TemperatureControlled,RequisitionOrderID,InvoiceNumber,FreightCost,HazardousMaterial,HandlingInstructions,ReceivedByStaffID,InspectionStatus,InspectionNotes,DelayReason,AdditionalCharges) VALUES
(5001,300,'2023-04-01','2023-04-02','FastFreight','TRK12345','MainHospital',1500,2500.5,1,7001,'INV9001',350.00,0,'KeepDry',401,'Passed','All good',NULL,0.00),
(5002,301,'2023-04-03','2023-04-05','QuickShip','TRK12346','NorthWing',800,1200.0,0,7002,'INV9002',180.00,1,'HandleWithCare',402,'Failed','Missing seals','Weather',45.00),
(5003,302,'2023-04-07','2023-04-07','RapidLogistics','TRK12347','EastWing',2000,3400.75,1,7003,'INV9003',500.00,0,'StoreFrozen',403,'Passed','No issues',NULL,0.00);

-- HospitalEnergySourceMix: energy composition records for a facility
CREATE TABLE HospitalEnergySourceMix (
    RecordID INTEGER PRIMARY KEY,
    FacilityID INTEGER NULL,
    RecordDate DATE NULL,
    ElectricityPct REAL NULL,
    NaturalGasPct REAL NULL,
    SteamPct REAL NULL,
    SolarPct REAL NULL,
    WindPct REAL NULL,
    DieselPct REAL NULL,
    FuelCellPct REAL NULL,
    RenewableTotalPct REAL NULL,
    NonRenewableTotalPct REAL NULL,
    AvgVoltage REAL NULL,
    AvgCurrent REAL NULL,
    PeakDemand REAL NULL,
    LoadFactor REAL NULL,
    CO2Emissions REAL NULL,
    EnergyCost REAL NULL,
    OperatorName TEXT NULL,
    Shift TEXT NULL,
    Comments TEXT NULL
);

INSERT INTO HospitalEnergySourceMix (RecordID,FacilityID,RecordDate,ElectricityPct,NaturalGasPct,SteamPct,SolarPct,WindPct,DieselPct,FuelCellPct,RenewableTotalPct,NonRenewableTotalPct,AvgVoltage,AvgCurrent,PeakDemand,LoadFactor,CO2Emissions,EnergyCost,OperatorName,Shift,Comments) VALUES
(1,10,'2023-03-31',55.0,30.0,5.0,5.0,2.0,2.5,0.5,12.5,87.5,230.0,500.0,1200.0,0.75,3500.0,12000.0,'JohnDoe','Day','Monthly report'),
(2,10,'2023-04-30',58.0,28.0,4.0,6.0,1.5,2.0,0.5,13.5,86.5,231.0,520.0,1250.0,0.78,3400.0,11800.0,'JaneSmith','Day','Improved solar contribution'),
(3,11,'2023-04-30',45.0,35.0,10.0,4.0,3.0,2.0,1.0,12.0,88.0,228.0,480.0,1150.0,0.70,3600.0,12500.0,'MikeBrown','Night','Higher steam usage');

-- PatientTransportationSchedule: planned patient transport events
CREATE TABLE PatientTransportationSchedule (
    ScheduleID INTEGER PRIMARY KEY,
    PatientID INTEGER NULL,
    TransportDate DATE NULL,
    TransportTime TEXT NULL,
    PickupLocation TEXT NULL,
    DropoffLocation TEXT NULL,
    TransportMode TEXT NULL,
    VehicleID INTEGER NULL,
    DriverStaffID INTEGER NULL,
    RequestedByStaffID INTEGER NULL,
    ReasonForTransport TEXT NULL,
    UrgencyLevel INTEGER NULL,
    WheelchairAccessible INTEGER NULL,
    OxygenRequired INTEGER NULL,
    EscortRequired INTEGER NULL,
    EstimatedDurationMinutes INTEGER NULL,
    ActualDurationMinutes INTEGER NULL,
    TransportStatus TEXT NULL,
    CancellationReason TEXT NULL,
    Notes TEXT NULL
);

INSERT INTO PatientTransportationSchedule (ScheduleID,PatientID,TransportDate,TransportTime,PickupLocation,DropoffLocation,TransportMode,VehicleID,DriverStaffID,RequestedByStaffID,ReasonForTransport,UrgencyLevel,WheelchairAccessible,OxygenRequired,EscortRequired,EstimatedDurationMinutes,ActualDurationMinutes,TransportStatus,CancellationReason,Notes) VALUES
(10001,2001,'2023-05-01','08:30','Room101','Radiology','Wheelchair',301,501,601,'MRI Scan',2,1,0,1,30,28,'Completed',NULL,'No issues'),
(10002,2002,'2023-05-01','09:15','Room202','PhysicalTherapy','Stretcher',302,502,602,'Therapy Session',1,0,1,0,20,22,'Completed',NULL,'Oxygen support used'),
(10003,2003,'2023-05-02','10:00','Room303','Discharge','Ambulance',303,503,603,'Discharge Transfer',3,1,0,1,45,NULL,'Cancelled','Patient declined','Rescheduled for next day');

-- ClinicalGuidelineFeedback: staff feedback on clinical guidelines
CREATE TABLE ClinicalGuidelineFeedback (
    FeedbackID INTEGER PRIMARY KEY,
    GuidelineID INTEGER NULL,
    StaffID INTEGER NULL,
    FeedbackDate DATE NULL,
    Rating INTEGER NULL,
    Comments TEXT NULL,
    SuggestedChange TEXT NULL,
    Department TEXT NULL,
    ImplementationStatus TEXT NULL,
    FollowUpAction TEXT NULL,
    FollowUpDueDate DATE NULL,
    ReviewLevel INTEGER NULL,
    EvidenceReference TEXT NULL,
    PriorityLevel INTEGER NULL,
    ImpactScore REAL NULL,
    ApprovedByStaffID INTEGER NULL,
    ApprovalDate DATE NULL,
    RevisionNumber INTEGER NULL,
    Category TEXT NULL,
    Tags TEXT NULL
);

INSERT INTO ClinicalGuidelineFeedback (FeedbackID,GuidelineID,StaffID,FeedbackDate,Rating,Comments,SuggestedChange,Department,ImplementationStatus,FollowUpAction,FollowUpDueDate,ReviewLevel,EvidenceReference,PriorityLevel,ImpactScore,ApprovedByStaffID,ApprovalDate,RevisionNumber,Category,Tags) VALUES
(1,4001,701,'2023-04-15',4,'Clear and concise','Add pediatric dosing table','Pharmacy','Implemented','Monitor outcomes','2023-05-01',2,'REF123',1,8.5,801,'2023-04-20',2,'Medication','dose,pediatric'),
(2,4002,702,'2023-04-18',3,'Too complex','Simplify flowchart','Surgery','Pending','Form workgroup','2023-05-15',1,'REF456',2,7.0,802,'2023-04-22',1,'Surgical','flowchart,simplify'),
(3,4003,703,'2023-04-20',5,'Excellent guidance','None needed','Cardiology','Implemented','Annual review','2024-01-01',3,'REF789',1,9.2,803,'2023-04-25',3,'Cardiology','guideline,review');

-- MedicalDeviceRecallLog: records of medical device recalls
CREATE TABLE MedicalDeviceRecallLog (
    RecallID INTEGER PRIMARY KEY,
    DeviceID INTEGER NULL,
    Manufacturer TEXT NULL,
    RecallDate DATE NULL,
    RecallReason TEXT NULL,
    SeverityLevel INTEGER NULL,
    AffectedBatch TEXT NULL,
    NotificationMethod TEXT NULL,
    RecallStatus TEXT NULL,
    ActionTaken TEXT NULL,
    FollowUpDate DATE NULL,
    RegulatoryAgency TEXT NULL,
    ContactPerson TEXT NULL,
    ContactPhone TEXT NULL,
    ReplacementDeviceID INTEGER NULL,
    RefundAmount REAL NULL,
    Disposition TEXT NULL,
    Notes TEXT NULL,
    UpdatedByStaffID INTEGER NULL,
    UpdateTimestamp DATE NULL
);

INSERT INTO MedicalDeviceRecallLog (RecallID,DeviceID,Manufacturer,RecallDate,RecallReason,SeverityLevel,AffectedBatch,NotificationMethod,RecallStatus,ActionTaken,FollowUpDate,RegulatoryAgency,ContactPerson,ContactPhone,ReplacementDeviceID,RefundAmount,Disposition,Notes,UpdatedByStaffID,UpdateTimestamp) VALUES
(9001,15001,'MedTech','2023-03-10','Battery overheating','2','BATCHA1','Email','Closed','Replaced units','2023-04-01','FDA','AliceWhite','5551234',15002,0.0,'Replaced','All units swapped','501','2023-04-02'),
(9002,15002,'HealthCorp','2023-04-05','Software glitch','3','BATCHB2','Letter','Open','Software patch pending','2023-05-15','EMA','BobGreen','5555678',NULL,0.0,'Pending','Patch under development','502','2023-04-06'),
(9003,15003,'BioEquip','2023-04-20','Sterilization failure','1','BATCHC3','Phone','Closed','Device discarded','2023-04-30','HealthCanada','CarolBlue','5559012',NULL,1500.0,'Disposed','Batch destroyed','503','2023-04-21');

-- HealthInsurancePlanBenefit: detailed benefit definitions for insurance plans
CREATE TABLE HealthInsurancePlanBenefit (
    BenefitID INTEGER PRIMARY KEY,
    PlanID INTEGER NULL,
    BenefitName TEXT NULL,
    CoverageType TEXT NULL,
    CoverageLimit REAL NULL,
    CopayAmount REAL NULL,
    DeductibleAmount REAL NULL,
    OutOfPocketMax REAL NULL,
    EligibilityCriteria TEXT NULL,
    EffectiveDate DATE NULL,
    EndDate DATE NULL,
    PreAuthorizationRequired INTEGER NULL,
    NetworkType TEXT NULL,
    TierLevel INTEGER NULL,
    ServiceCategory TEXT NULL,
    LimitPeriod TEXT NULL,
    PriorAuthorizationForm TEXT NULL,
    ExclusionNotes TEXT NULL,
    BenefitStatus TEXT NULL,
    LastUpdated DATE NULL
);

INSERT INTO HealthInsurancePlanBenefit (BenefitID,PlanID,BenefitName,CoverageType,CoverageLimit,CopayAmount,DeductibleAmount,OutOfPocketMax,EligibilityCriteria,EffectiveDate,EndDate,PreAuthorizationRequired,NetworkType,TierLevel,ServiceCategory,LimitPeriod,PriorAuthorizationForm,ExclusionNotes,BenefitStatus,LastUpdated) VALUES
(3001,400,'Inpatient Hospitalization','Full','50000',100,5000,20000,'All members','2023-01-01','2023-12-31',1,'InNetwork',2,'Hospital','Annual','FormA','None','Active','2023-03-01'),
(3002,401,'Outpatient Physical Therapy','Partial','2000',20,0,5000,'Adults over 18','2023-02-01','2024-01-31',0,'Preferred',1,'Therapy','Yearly','FormB','Excludes experimental','Active','2023-04-15'),
(3003,402,'Prescription Drugs','Tiered','10000',10,0,3000,'All members','2023-01-15','2023-12-31',1,'Broad',3,'Pharmacy','Annual','FormC','Excludes non-formulary','Active','2023-05-10');

-- SurgicalTeamAssignment: assignment of staff to surgical procedures
CREATE TABLE SurgicalTeamAssignment (
    AssignmentID INTEGER PRIMARY KEY,
    SurgeryID INTEGER NULL,
    SurgeonID INTEGER NULL,
    AssistantSurgeonID INTEGER NULL,
    AnesthesiologistID INTEGER NULL,
    ScrubNurseID INTEGER NULL,
    CirculatingNurseID INTEGER NULL,
    PerfusionistID INTEGER NULL,
    FirstAssistantID INTEGER NULL,
    SecondAssistantID INTEGER NULL,
    PrimaryProcedure TEXT NULL,
    SecondaryProcedure TEXT NULL,
    ScheduledStart TEXT NULL,
    ScheduledEnd TEXT NULL,
    OperatingRoom TEXT NULL,
    TeamLeadID INTEGER NULL,
    TeamNotes TEXT NULL,
    ConfirmationStatus TEXT NULL,
    ConfirmationDate DATE NULL,
    UpdatedByStaffID INTEGER NULL
);

INSERT INTO SurgicalTeamAssignment (AssignmentID,SurgeryID,SurgeonID,AssistantSurgeonID,AnesthesiologistID,ScrubNurseID,CirculatingNurseID,PerfusionistID,FirstAssistantID,SecondAssistantID,PrimaryProcedure,SecondaryProcedure,ScheduledStart,ScheduledEnd,OperatingRoom,TeamLeadID,TeamNotes,ConfirmationStatus,ConfirmationDate,UpdatedByStaffID) VALUES
(8001,9001,1101,1102,1201,1301,1302,1401,1501,1502,'Heart Bypass','Valve Repair','2023-05-05 07:30','2023-05-05 12:45','OR12',1100,'All equipment checked','Confirmed','2023-04-20',501),
(8002,9002,1110,1111,1210,1310,1311,1410,1510,1511,'Knee Replacement','Arthroscopy','2023-05-06 08:00','2023-05-06 10:30','OR5',1110,'Patient consent obtained','Confirmed','2023-04-22',502),
(8003,9003,1120,NULL,1220,1320,1321,NULL,1520,NULL,'Appendectomy',NULL,'2023-05-07 09:15','2023-05-07 10:45','OR3',1120,'Standard procedure','Pending','2023-04-25',503);

-- OutpatientProcedureLog: log of outpatient procedures performed
CREATE TABLE OutpatientProcedureLog (
    LogID INTEGER PRIMARY KEY,
    PatientID INTEGER NULL,
    ProcedureDate DATE NULL,
    ProcedureCode TEXT NULL,
    ProcedureDescription TEXT NULL,
    PerformingProviderID INTEGER NULL,
    FacilityID INTEGER NULL,
    DurationMinutes INTEGER NULL,
    AnesthesiaType TEXT NULL,
    Outcome TEXT NULL,
    FollowUpRequired INTEGER NULL,
    FollowUpDate DATE NULL,
    Complications TEXT NULL,
    BillingCode TEXT NULL,
    ChargeAmount REAL NULL,
    InsuranceApproved INTEGER NULL,
    Notes TEXT NULL,
    ReferringProviderID INTEGER NULL,
    ProcedureStatus TEXT NULL,
    LastModified DATE NULL
);

INSERT INTO OutpatientProcedureLog (LogID,PatientID,ProcedureDate,ProcedureCode,ProcedureDescription,PerformingProviderID,FacilityID,DurationMinutes,AnesthesiaType,Outcome,FollowUpRequired,FollowUpDate,Complications,BillingCode,ChargeAmount,InsuranceApproved,Notes,ReferringProviderID,ProcedureStatus,LastModified) VALUES
(40001,2501,'2023-04-10','OP001','Colonoscopy',2101,10,45,'Sedation','Successful',1,'2023-04-20','None','B001',800.0,1,'No issues',2201,'Completed','2023-04-11'),
(40002,2502,'2023-04-12','OP002','Dermatology Excision',2102,11,30,'None','Successful',0,NULL,'Minor bleeding','B002',350.0,1,'Patient healed well',2202,'Completed','2023-04-13'),
(40003,2503,'2023-04-15','OP003','Physical Therapy Session',2103,12,60,'None','Improved mobility',1,'2023-04-22','None','B003',150.0,1,'Patient reports less pain',2203,'Completed','2023-04-16');

-- EnvironmentalHazardReport: reports of environmental hazards within facilities
CREATE TABLE EnvironmentalHazardReport (
    ReportID INTEGER PRIMARY KEY,
    FacilityID INTEGER NULL,
    ReportDate DATE NULL,
    HazardType TEXT NULL,
    Description TEXT NULL,
    SeverityLevel INTEGER NULL,
    DetectedByStaffID INTEGER NULL,
    Location TEXT NULL,
    ImmediateActionTaken TEXT NULL,
    ContainmentStatus TEXT NULL,
    CorrectiveActionPlan TEXT NULL,
    PlannedCompletionDate DATE NULL,
    FollowUpInspectionDate DATE NULL,
    Status TEXT NULL,
    RootCauseAnalysis TEXT NULL,
    ResponsibleDepartment TEXT NULL,
    RegulatoryNotification INTEGER NULL,
    NotificationDate DATE NULL,
    Comments TEXT NULL,
    UpdatedByStaffID INTEGER NULL
);

INSERT INTO EnvironmentalHazardReport (ReportID,FacilityID,ReportDate,HazardType,Description,SeverityLevel,DetectedByStaffID,Location,ImmediateActionTaken,ContainmentStatus,CorrectiveActionPlan,PlannedCompletionDate,FollowUpInspectionDate,Status,RootCauseAnalysis,ResponsibleDepartment,RegulatoryNotification,NotificationDate,Comments,UpdatedByStaffID) VALUES
(7001,15,'2023-03-20','Chemical Spill','Spill of disinfectant in lab',2,601,'Lab A','Area evacuated','Contained','Replace floor sealant', '2023-04-01','2023-04-10','Closed','Improper storage','Facilities','1','2023-03-21','No further issues',701),
(7002,16,'2023-04-05','Air Quality','Elevated CO2 levels in ward',3,602,'Ward 3','Ventilation increased','Mitigated','Upgrade HVAC filters', '2023-05-15','2023-05-20','Open','Filter maintenance overdue','Engineering','0',NULL,'Monitoring continues',702),
(7003,17,'2023-04-12','Biological','Mold growth in storage',1,603,'Supply Closet','Area isolated','Pending','Remove mold and remediate', '2023-04-30','2023-05-05','Open','Water leak not fixed','Maintenance','0',NULL,'Awaiting contractor',703);