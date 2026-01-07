-- Facility energy benchmark data
CREATE TABLE FacilityEnergyBenchmark
(
    BenchmarkID          INTEGER PRIMARY KEY,
    FacilityID           INTEGER,
    BenchmarkDate        DATE,
    ElectricityKWh       REAL,
    GasTherms            REAL,
    WaterLiters          REAL,
    CO2EmissionsKg      REAL,
    EnergyCostUSD        REAL,
    PeakDemandKW         REAL,
    RenewablePct         REAL,
    HVACEfficiency       REAL,
    LightingEfficiency   REAL,
    OccupancyRate        REAL,
    TemperatureAvgC      REAL,
    HumidityAvg          REAL,
    NoiseLevelDb         REAL,
    MaintenanceScore     INTEGER,
    CertificationLevel   TEXT,
    AuditorName          TEXT,
    Comments             TEXT,
    CreatedAt            DATE
);

INSERT INTO FacilityEnergyBenchmark VALUES (1,101,'2023-01-15',1200.5,350.2,45000.0,850.3,15000.0,75.0,12.5,0.92,0.88,0.85,22.5,45.0,55.0,88,Gold,JohnDoe,InitialBenchmark,'2023-01-16');
INSERT INTO FacilityEnergyBenchmark VALUES (2,102,'2023-04-20',1320.0,370.0,47000.0,900.0,15800.0,78.0,13.0,0.91,0.87,0.84,23.0,46.0,54.5,90,Platinum,JaneSmith,QuarterlyUpdate,'2023-04-21');
INSERT INTO FacilityEnergyBenchmark VALUES (3,103,'2023-07-10',1250.3,360.5,46000.0,870.2,15400.0,76.5,12.8,0.93,0.89,0.86,22.8,45.5,55.2,89,Silver,MikeBrown,MidYearReview,'2023-07-11');

-- Medication adherence records
CREATE TABLE MedicationAdherenceRecord
(
    RecordID          INTEGER PRIMARY KEY,
    PatientID         INTEGER,
    MedicationID      INTEGER,
    PrescriptionDate  DATE,
    DosageMg          REAL,
    FrequencyPerDay   INTEGER,
    StartDate         DATE,
    EndDate           DATE,
    AdherencePct      REAL,
    MissedDoses       INTEGER,
    SideEffects       TEXT,
    PhysicianID       INTEGER,
    PharmacyID        INTEGER,
    RefillCount       INTEGER,
    NextRefillDate    DATE,
    Notes             TEXT,
    CreatedBy         TEXT,
    CreatedAt         DATE,
    UpdatedAt         DATE,
    Status            TEXT
);

INSERT INTO MedicationAdherenceRecord VALUES (1001,2001,3001,'2023-02-01',50.0,2,'2023-02-02','2023-08-02',95.5,2,Nausea,401,501,3,'2023-07-30',AllGood,Admin,'2023-02-01','2023-06-01',Active);
INSERT INTO MedicationAdherenceRecord VALUES (1002,2002,3002,'2023-03-10',25.0,1,'2023-03-11','2023-09-11',88.0,5,Headache,402,502,2,'2023-08-15',MonitorSideEffects,Admin,'2023-03-10','2023-07-15',Active);
INSERT INTO MedicationAdherenceRecord VALUES (1003,2003,3003,'2023-01-20',10.0,3,'2023-01-21','2023-07-21',99.0,0,None,403,503,4,'2023-07-10',ExcellentAdherence,Admin,'2023-01-20','2023-04-20',Active);

-- Clinical staff roster
CREATE TABLE ClinicalStaffRoster
(
    RosterID          INTEGER PRIMARY KEY,
    StaffID           INTEGER,
    Department        TEXT,
    ShiftDate         DATE,
    ShiftStart        TIME,
    ShiftEnd          TIME,
    Role              TEXT,
    OnCallFlag        INTEGER,
    AssignedWard      TEXT,
    SupervisorID      INTEGER,
    HoursWorked       REAL,
    OvertimeHours     REAL,
    BreakMinutes      INTEGER,
    AttendanceStatus  TEXT,
    Notes             TEXT,
    CreatedAt         DATE,
    UpdatedBy         TEXT,
    Version           INTEGER,
    ScheduleSource    TEXT,
    IsDeleted         INTEGER
);

INSERT INTO ClinicalStaffRoster VALUES (5001,6001,Cardiology,'2023-08-01','07:00:00','15:00:00',Nurse,1,WardA,7001,8.0,0.5,30,Present,Notes1,'2023-08-01','System',1,Auto,0);
INSERT INTO ClinicalStaffRoster VALUES (5002,6002,Oncology,'2023-08-01','15:00:00','23:00:00',Technician,0,WardB,7002,8.0,1.0,30,Present,Notes2,'2023-08-01','System',1,Auto,0);
INSERT INTO ClinicalStaffRoster VALUES (5003,6003,Emergency,'2023-08-01','23:00:00','07:00:00',Physician,1,WardC,7003,8.0,0.0,30,Present,Notes3,'2023-08-01','System',1,Auto,0);

-- Patient room cleaning schedule
CREATE TABLE PatientRoomCleaningSchedule
(
    ScheduleID        INTEGER PRIMARY KEY,
    RoomNumber        TEXT,
    CleaningDate      DATE,
    Shift             TEXT,
    CleanerID         INTEGER,
    SupervisorID      INTEGER,
    ChecklistCompleted INTEGER,
    DisinfectantType  TEXT,
    DurationMinutes   INTEGER,
    IssuesFound       TEXT,
    FollowUpRequired  INTEGER,
    FollowUpDate      DATE,
    Comments          TEXT,
    CreatedAt         DATE,
    UpdatedAt         DATE,
    CreatedBy         TEXT,
    UpdatedBy         TEXT,
    Status            TEXT,
    CleaningScore     INTEGER,
    EquipmentUsed     TEXT
);

INSERT INTO PatientRoomCleaningSchedule VALUES (8001,'101A','2023-08-02','Morning',9001,9101,1,Chlorine,45,None,0,NULL,NoIssues,'2023-08-02','2023-08-02',Admin,Admin,Completed,95,Vacuum);
INSERT INTO PatientRoomCleaningSchedule VALUES (8002,'102B','2023-08-02','Evening',9002,9102,1,Alcohol,40,StainOnCarpet,1,'2023-08-04',AppliedSpotCleaner,'2023-08-02','2023-08-04',Admin,Admin,Completed,88,SteamCleaner);
INSERT INTO PatientRoomCleaningSchedule VALUES (8003,'103C','2023-08-03','Night',9003,9103,0,None,0,None,0,NULL,NotStarted,'2023-08-03','2023-08-03',Admin,Admin,Pending,0,Null);

-- Biomedical equipment service record
CREATE TABLE BiomedicalEquipmentServiceRecord
(
    ServiceID          INTEGER PRIMARY KEY,
    EquipmentID        INTEGER,
    ServiceDate        DATE,
    ServiceType        TEXT,
    TechnicianID       INTEGER,
    VendorID           INTEGER,
    PartsReplaced      TEXT,
    ServiceCost        REAL,
    DowntimeHours      REAL,
    CalibrationPerformed INTEGER,
    CalibrationResult  TEXT,
    FirmwareVersion    TEXT,
    SoftwareVersion    TEXT,
    ServiceNotes       TEXT,
    NextServiceDue     DATE,
    WarrantyStatus     TEXT,
    ServiceLocation    TEXT,
    CreatedAt          DATE,
    UpdatedAt          DATE,
    Status             TEXT
);

INSERT INTO BiomedicalEquipmentServiceRecord VALUES (9001,10001,'2023-07-15','Preventive',1101,1201,'Filter,Valve',250.0,2.0,1,Pass,1.2.3,4.5.6,AllGood,'2024-07-15',Valid,LabA,'2023-07-15','2023-07-15',Completed);
INSERT INTO BiomedicalEquipmentServiceRecord VALUES (9002,10002,'2023-06-20','Repair',1102,1202,'Pump',500.0,5.0,0,Fail,2.1.0,5.0.1,ReplacedPump,'2024-06-20',Expired,LabB,'2023-06-20','2023-06-21',Completed);
INSERT INTO BiomedicalEquipmentServiceRecord VALUES (9003,10003,'2023-08-01','Calibration',1103,1203,'None',150.0,1.0,1,Pass,3.0.0,6.2.0,CalibratedSensors,'2025-08-01',Valid,LabC,'2023-08-01','2023-08-01',Completed);

-- Pharmacy supplier audit
CREATE TABLE PharmacySupplierAudit
(
    AuditID           INTEGER PRIMARY KEY,
    SupplierID        INTEGER,
    AuditDate         DATE,
    AuditorName       TEXT,
    ComplianceScore   INTEGER,
    DocumentationScore INTEGER,
    DeliveryScore     INTEGER,
    QualityScore      INTEGER,
    IssueCount        INTEGER,
    IssuesReported    TEXT,
    CorrectiveActionPlan TEXT,
    FollowUpDate      DATE,
    OverallRating     TEXT,
    Notes             TEXT,
    CreatedAt         DATE,
    UpdatedAt         DATE,
    CreatedBy         TEXT,
    UpdatedBy         TEXT,
    AuditType         TEXT,
    IsCritical        INTEGER,
    RatingComments    TEXT
);

INSERT INTO PharmacySupplierAudit VALUES (11001,20001,'2023-05-10','AliceWhite',85,90,88,92,2,'LateDelivery;PackagingIssue','ImproveLogistics','2023-06-10','B+',FirstAudit,'2023-05-10','2023-05-10',Admin,Admin,Annual,1,'GoodPotential');
INSERT INTO PharmacySupplierAudit VALUES (11002,20002,'2023-07-12','BobGreen',80,85,80,84,3,'TemperatureExcursion;LabelError','Revise SOPs','2023-08-12','B',FollowUp,'2023-07-12','2023-07-12',Admin,Admin,Quarterly,0,'Satisfactory');
INSERT INTO PharmacySupplierAudit VALUES (11003,20003,'2023-09-01','CarolBlue',90,95,93,97,0,'None','N/A','2023-10-01','A',Excellent,'2023-09-01','2023-09-01',Admin,Admin,Annual,0,'Outstanding');

-- Research study funding
CREATE TABLE ResearchStudyFunding
(
    FundingID            INTEGER PRIMARY KEY,
    StudyID              INTEGER,
    FundingAgency        TEXT,
    GrantNumber          TEXT,
    AwardDate            DATE,
    AmountUSD            REAL,
    FundingPeriodMonths  INTEGER,
    PrincipalInvestigatorID INTEGER,
    CoInvestigatorIDs    TEXT,
    FundingStatus        TEXT,
    AllocationPurpose    TEXT,
    ReportingFrequency   TEXT,
    LastReportDate       DATE,
    ContactPerson        TEXT,
    ContactEmail         TEXT,
    CreatedAt            DATE,
    UpdatedAt            DATE,
    CreatedBy            TEXT,
    UpdatedBy            TEXT,
    Notes                TEXT,
    IsActive             INTEGER
);

INSERT INTO ResearchStudyFunding VALUES (12001,30001,'NIH','R01ABC123','2023-01-15',500000.0,36,4001,'4002,4003',Active,Research,'Annual','2023-12-01','DrSmith','smith@example.com','2023-01-15','2023-06-01',Admin,Admin,'Phase1Funding',1);
INSERT INTO ResearchStudyFunding VALUES (12002,30002,'NSF','CDA789456','2022-07-20',250000.0,24,4004,'4005',Completed,Equipment,'SemiAnnual','2023-05-15','DrJones','jones@example.com','2022-07-20','2023-05-15',Admin,Admin,'CompletedProject',0);
INSERT INTO ResearchStudyFunding VALUES (12003,30003,'EUROPEAN','H2020XYZ','2023-03-01',750000.0,48,4006,'4007,4008,4009',Pending,Travel,'Quarterly','2023-09-01','DrLee','lee@example.com','2023-03-01','2023-03-01',Admin,Admin,'PendingApproval',1);

-- Ambulance dispatch record
CREATE TABLE AmbulanceDispatchRecord
(
    DispatchID          INTEGER PRIMARY KEY,
    AmbulanceID         INTEGER,
    DispatchTime        DATETIME,
    ArrivalTime         DATETIME,
    PatientID           INTEGER,
    DestinationHospitalID INTEGER,
    ReasonCode          TEXT,
    CrewLeaderID        INTEGER,
    CrewMemberIDs       TEXT,
    PriorityLevel       INTEGER,
    TransportMode       TEXT,
    EstimatedDurationMinutes INTEGER,
    ActualDurationMinutes INTEGER,
    Remarks             TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    CreatedBy           TEXT,
    UpdatedBy           TEXT,
    Status              TEXT,
    FollowUpRequired    INTEGER,
    FollowUpNotes       TEXT
);

INSERT INTO AmbulanceDispatchRecord VALUES (13001,5001,'2023-08-05 08:15:00','2023-08-05 08:35:00',2001,6001,'CardiacArrest',7001,'7011,7012,7013',1,Ground,20,20,Stable,'2023-08-05','2023-08-05',Admin,Admin,Completed,0,NULL);
INSERT INTO AmbulanceDispatchRecord VALUES (13002,5002,'2023-08-05 09:45:00','2023-08-05 10:10:00',2002,6002,'Trauma',7002,'7021,7022,7023',2,Air,25,25,ConditionImproved,'2023-08-05','2023-08-05',Admin,Admin,Completed,1,'ScheduleFollowUp');
INSERT INTO AmbulanceDispatchRecord VALUES (13003,5003,'2023-08-05 11:20:00','2023-08-05 11:50:00',2003,6003,'Stroke',7003,'7031,7032',1,Ground,30,30,TransferredToICU,'2023-08-05','2023-08-05',Admin,Admin,Completed,0,NULL);

-- Health screening campaign
CREATE TABLE HealthScreeningCampaign
(
    CampaignID          INTEGER PRIMARY KEY,
    CampaignName        TEXT,
    StartDate           DATE,
    EndDate             DATE,
    TargetPopulation    TEXT,
    Location            TEXT,
    Organizer           TEXT,
    NumberPlanned       INTEGER,
    NumberCompleted     INTEGER,
    ScreeningTypes      TEXT,
    CostPerScreening    REAL,
    TotalCost           REAL,
    FundingSource       TEXT,
    ContactPhone        TEXT,
    ContactEmail        TEXT,
    OutcomeSummary      TEXT,
    CreatedAt           DATE,
    UpdatedAt           DATE,
    CreatedBy           TEXT,
    UpdatedBy           TEXT,
    Status              TEXT,
    Notes               TEXT
);

INSERT INTO HealthScreeningCampaign VALUES (14001,'FluVaccination2023','2023-09-01','2023-09-30','Adults','CommunityCenterA','HealthDept',1000,950,'FluVaccine',15.0,14250.0,'GovGrant','5551234','contact@health.org','HighCoverage','2023-08-20','2023-09-01',Admin,Admin,Completed,'Successful');
INSERT INTO HealthScreeningCampaign VALUES (14002,'BloodPressureCheck','2023-10-01','2023-10-31','Seniors','SeniorCenterB','NonProfitOrg',800,750,'BPCheck',5.0,3750.0,'Donations','5555678','info@nonprofit.org','PositiveFeedback','2023-09-15','2023-10-01',Admin,Admin,Completed,'WellReceived');
INSERT INTO HealthScreeningCampaign VALUES (14003,'DiabetesScreening','2023-11-01','2023-11-30','Adults','ClinicC','HealthDept',1200,0,'HbA1c',20.0,0.0,'GovBudget','5559876','diabetes@health.org','Pending','2023-10-20','2023-11-01',Admin,Admin,Planned,'PendingLaunch');

-- Medical equipment decommission
CREATE TABLE MedicalEquipmentDecommission
(
    DecommissionID          INTEGER PRIMARY KEY,
    EquipmentID             INTEGER,
    DecommissionDate        DATE,
    Reason                  TEXT,
    DisposalMethod          TEXT,
    VendorID                INTEGER,
    ReceivedByStaffID       INTEGER,
    DecommissionCost        REAL,
    EnvironmentalImpactScore INTEGER,
    DocumentationComplete   INTEGER,
    ApprovedBy              TEXT,
    ApprovalDate            DATE,
    Notes                   TEXT,
    CreatedAt               DATE,
    UpdatedAt               DATE,
    CreatedBy               TEXT,
    UpdatedBy               TEXT,
    Status                  TEXT,
    AssetRecoveryValue      REAL,
    WarrantyRemainingMonths INTEGER
);

INSERT INTO MedicalEquipmentDecommission VALUES (15001,20001,'2023-06-15','Obsolete','Recycle',3001,4001,1200.0,85,1,'JohnManager','2023-06-10','DisposedAccordingToPolicy','2023-06-15','2023-06-15',Admin,Admin,Completed,500.0,0);
INSERT INTO MedicalEquipmentDecommission VALUES (15002,20002,'2023-07-20','Damaged','Incinerate',3002,4002,1800.0,70,1,'JaneSupervisor','2023-07-18','SevereDamage','2023-07-20','2023-07-20',Admin,Admin,Completed,0.0,0);
INSERT INTO MedicalEquipmentDecommission VALUES (15003,20003,'2023-08-05','Upgrade','Donate',3003,4003,0.0,90,1,'MikeDirector','2023-08-01','DonatedToPartner','2023-08-05','2023-08-05',Admin,Admin,Completed,1500.0,12);