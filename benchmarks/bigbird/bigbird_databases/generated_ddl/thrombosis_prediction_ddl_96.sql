-- Building Inspection Report
CREATE TABLE BuildingInspectionReport (
    ReportID INTEGER PRIMARY KEY,
    BuildingID INTEGER,
    InspectionDate DATE,
    InspectorName TEXT,
    StructuralIntegrityScore INTEGER,
    RoofCondition TEXT,
    HVACCondition TEXT,
    FireSafetyScore INTEGER,
    ElectricalSafetyScore INTEGER,
    PlumbingScore INTEGER,
    ElevatorStatus TEXT,
    AccessibilityCompliance TEXT,
    LightingLevelLux INTEGER,
    NoiseLevelDb INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    EnergyEfficiencyRating TEXT,
    Remarks TEXT,
    FollowUpRequired INTEGER,
    FollowUpDate DATE,
    DocumentURL TEXT,
    CreatedAt DATETIME
);

INSERT INTO BuildingInspectionReport VALUES (1,101,'2023-03-15','Alice Smith',85,'Good','Excellent',90,88,80,'Operational','Compliant',500,45,22.5,40.0,'A','None',0,NULL,'http://example.com/report1.pdf','2023-03-15 09:00:00');
INSERT INTO BuildingInspectionReport VALUES (2,102,'2023-04-10','Bob Johnson',78,'Fair','Good',75,70,68,'Under Maintenance','Partial',450,50,21.0,38.5,'B','Minor roof leak',1,'2023-05-01','http://example.com/report2.pdf','2023-04-10 10:30:00');
INSERT INTO BuildingInspectionReport VALUES (3,103,'2023-05-22','Carol Lee',92,'Excellent','Excellent',95,93,90,'Operational','Compliant',550,40,23.0,42.0,'A+','All systems nominal',0,NULL,'http://example.com/report3.pdf','2023-05-22 14:15:00');

-- Water Quality Assessment
CREATE TABLE WaterQualityAssessment (
    AssessmentID INTEGER PRIMARY KEY,
    SiteID INTEGER,
    AssessmentDate DATE,
    pH REAL,
    TurbidityNTU REAL,
    Conductivity_us REAL,
    ChlorineMgL REAL,
    Lead_ppb REAL,
    Copper_ppb REAL,
    BacteriaCFU INTEGER,
    TemperatureC REAL,
    Alkalinity_mgL REAL,
    Hardness_mgL REAL,
    Nitrate_mgL REAL,
    Sulfate_mgL REAL,
    OrganicCarbon_mgL REAL,
    Fluoride_mgL REAL,
    SamplingMethod TEXT,
    AnalystName TEXT,
    ApprovedBy TEXT,
    Comments TEXT,
    RecordedBy TEXT,
    CreatedAt DATETIME
);

INSERT INTO WaterQualityAssessment VALUES (1,201,'2023-02-01',7.2,0.5,250.0,0.3,5.0,10.0,100,15.0,120.0,150.0,6.0,30.0,2.5,0.7,'Grab','Dana White','Emily Clark','Routine check','Frank Miller','2023-02-01 08:00:00');
INSERT INTO WaterQualityAssessment VALUES (2,202,'2023-03-12',6.8,1.2,300.0,0.5,12.0,8.0,250,14.5,110.0,140.0,8.5,35.0,3.0,0.9,'Composite','Grace Kim','Henry Lee','Slight turbidity increase','Irene Patel','2023-03-12 09:30:00');
INSERT INTO WaterQualityAssessment VALUES (3,203,'2023-04-20',7.5,0.3,230.0,0.2,2.0,5.0,80,16.2,130.0,160.0,4.5,28.0,1.8,0.5,'Grab','Jack Nguyen','Karen Zhou','All parameters within limits','Liam Torres','2023-04-20 11:15:00');

-- Security Access Log
CREATE TABLE SecurityAccessLog (
    LogID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    AccessPoint TEXT,
    BadgeID TEXT,
    EmployeeID INTEGER,
    AccessDate DATE,
    AccessTime TIME,
    AccessResult TEXT,
    Reason TEXT,
    DeviceID TEXT,
    CameraID TEXT,
    ValidationMethod TEXT,
    ZoneLevel INTEGER,
    Shift TEXT,
    Department TEXT,
    SupervisorID INTEGER,
    DurationSeconds INTEGER,
    EventSequence INTEGER,
    IPAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATETIME
);

INSERT INTO SecurityAccessLog VALUES (1,301,'MainEntrance','B12345',1001,'2023-06-01','08:15:00','Granted','Normal entry','D001','C001','Badge','1','Day','Administration',500,5,1001,'192.168.1.10',40.7128,-74.0060,'2023-06-01 08:15:00');
INSERT INTO SecurityAccessLog VALUES (2,301,'ServerRoom','B54321',1002,'2023-06-01','22:45:00','Denied','Restricted area','D002','C002','PIN','3','Night','IT',501,0,1002,'192.168.1.11',40.7129,-74.0061,'2023-06-01 22:45:00');
INSERT INTO SecurityAccessLog VALUES (3,302,'Pharmacy','B67890',1003,'2023-06-02','13:30:00','Granted','Medication pickup','D003','C003','Badge','2','Day','Pharmacy',502,7,1003,'192.168.2.20',34.0522,-118.2437,'2023-06-02 13:30:00');

-- Medical Device Firmware Update Log
CREATE TABLE MedicalDeviceFirmwareUpdateLog (
    UpdateID INTEGER PRIMARY KEY,
    DeviceSerial TEXT,
    DeviceType TEXT,
    FirmwareVersionOld TEXT,
    FirmwareVersionNew TEXT,
    UpdateDate DATE,
    UpdatedBy TEXT,
    ValidationStatus TEXT,
    RollbackNeeded INTEGER,
    RollbackDate DATE,
    Notes TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    Department TEXT,
    Location TEXT,
    UpdateMethod TEXT,
    DurationMinutes INTEGER,
    PreUpdateChecksum TEXT,
    PostUpdateChecksum TEXT,
    ChangeLogURL TEXT,
    CreatedAt DATETIME
);

INSERT INTO MedicalDeviceFirmwareUpdateLog VALUES (1,'SN001','InfusionPump','1.0.3','1.1.0','2023-05-10','TechA','Passed',0,NULL,'Routine security patch','MedTech','IP-200','ICU','Room101','Remote',15,'ABC123','DEF456','http://example.com/changelog1','2023-05-10 10:00:00');
INSERT INTO MedicalDeviceFirmwareUpdateLog VALUES (2,'SN002','Ventilator','2.5.1','2.6.0','2023-05-12','TechB','Passed',0,NULL,'Critical update for compliance','HealthCorp','VT-500','ER','Room202','Onsite',30,'XYZ789','UVW012','http://example.com/changelog2','2023-05-12 14:30:00');
INSERT INTO MedicalDeviceFirmwareUpdateLog VALUES (3,'SN003','ECGMachine','3.2.0','3.2.5','2023-05-15','TechC','Failed',1,'2023-05-16','Update caused data loss, rollback performed','CardioInc','ECG-100','Cardiology','Room303','Remote',20,'LMN345','OPQ678','http://example.com/changelog3','2023-05-15 09:45:00');

-- Staff Training Attendance Record
CREATE TABLE StaffTrainingAttendanceRecord (
    AttendanceID INTEGER PRIMARY KEY,
    StaffID INTEGER,
    TrainingProgramID INTEGER,
    TrainingDate DATE,
    TrainerName TEXT,
    TrainingType TEXT,
    DurationHours REAL,
    CompletionStatus TEXT,
    CertificateIssued INTEGER,
    CertificateID TEXT,
    Score REAL,
    FeedbackScore INTEGER,
    Comments TEXT,
    Department TEXT,
    Location TEXT,
    FundingSource TEXT,
    Cost REAL,
    ApprovedBy TEXT,
    CreatedAt DATETIME,
    TrainingMode TEXT,
    AttendanceMethod TEXT
);

INSERT INTO StaffTrainingAttendanceRecord VALUES (1,1101,2001,'2023-04-01','Laura Green','Safety','8.0','Completed',1,'CERT1001',95.5,5,'Excellent participation','Nursing','RoomA','HospitalBudget',150.00,'Dr. Smith','2023-04-01 08:00:00','InPerson','OnSite');
INSERT INTO StaffTrainingAttendanceRecord VALUES (2,1102,2002,'2023-04-15','Mark Brown','Leadership','6.0','Completed',1,'CERT1002',88.0,4,'Good interaction','Administration','RoomB','Grant2023',200.00,'Ms. Davis','2023-04-15 09:30:00','Virtual','Online');
INSERT INTO StaffTrainingAttendanceRecord VALUES (3,1103,2003,'2023-05-05','Nina Patel','Technical','4.0','Incomplete',0,NULL,70.0,3,'Needs more practice','Radiology','RoomC','HospitalBudget',120.00,'Dr. Lee','2023-05-05 13:15:00','InPerson','OnSite');

-- Environmental Compliance Audit
CREATE TABLE EnvironmentalComplianceAudit (
    AuditID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    AuditDate DATE,
    AuditorName TEXT,
    AirQualityScore INTEGER,
    WaterQualityScore INTEGER,
    WasteManagementScore INTEGER,
    NoiseLevelScore INTEGER,
    EnergyUseScore INTEGER,
    EmissionLevelScore INTEGER,
    ComplianceStatus TEXT,
    FindingsSummary TEXT,
    CorrectiveActionsNeeded INTEGER,
    FollowUpDate DATE,
    DocumentLink TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    Remarks TEXT,
    TotalScore INTEGER,
    AuditScope TEXT
);

INSERT INTO EnvironmentalComplianceAudit VALUES (1,301,'2023-03-20','Olivia Reed',85,90,80,75,88,82,'Compliant','Overall good, minor water sampling issue','1','2023-04-15','http://example.com/audit1.pdf','2023-03-20 10:00:00','2023-03-20 10:00:00','No major issues',84,'FullFacility');
INSERT INTO EnvironmentalComplianceAudit VALUES (2,302,'2023-04-10','Peter Quinn',70,65,60,68,72,70,'Non-Compliant','Significant waste segregation problems','2','2023-05-05','http://example.com/audit2.pdf','2023-04-10 11:30:00','2023-04-10 11:30:00','Follow‑up required for waste processes',66,'ProductionArea');
INSERT INTO EnvironmentalComplianceAudit VALUES (3,303,'2023-05-05','Rachel Gomez',92,95,90,88,94,93,'Compliant','All metrics exceed thresholds','0',NULL,'http://example.com/audit3.pdf','2023-05-05 09:15:00','2023-05-05 09:15:00','Excellent performance',92,'LaboratoryWing');

-- Power Supply Detail
CREATE TABLE PowerSupplyDetail (
    DetailID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    Timestamp DATETIME,
    VoltageV REAL,
    CurrentA REAL,
    PowerKW REAL,
    FrequencyHz REAL,
    Phase INTEGER,
    LoadPercentage REAL,
    BackupStatus TEXT,
    GeneratorRunning INTEGER,
    BatteryLevelPercent REAL,
    UPSStatus TEXT,
    PowerQualityScore INTEGER,
    TemperatureC REAL,
    HumidityPercent REAL,
    EventCode INTEGER,
    EventDescription TEXT,
    OperatorID INTEGER,
    CreatedAt DATETIME
);

INSERT INTO PowerSupplyDetail VALUES (1,301,'2023-06-01 00:00:00',240.0,15.2,3.64,60.0,1,45.0,'Normal',0,95.0,'Active',88,22.5,40.0,0,'No event',500,'2023-06-01 00:00:00');
INSERT INTO PowerSupplyDetail VALUES (2,301,'2023-06-01 12:00:00',235.0,16.0,3.76,59.8,1,55.0,'Normal',0,93.0,'Active',90,23.0,42.0,1,'Minor voltage dip',501,'2023-06-01 12:00:00');
INSERT INTO PowerSupplyDetail VALUES (3,301,'2023-06-01 23:59:00',242.0,14.8,3.58,60.2,1,40.0,'Normal',0,96.0,'Active',87,22.0,38.0,0,'No event',502,'2023-06-01 23:59:00');

-- Waste Management Log
CREATE TABLE WasteManagementLog (
    LogID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    WasteType TEXT,
    CollectionDate DATE,
    QuantityKg REAL,
    ContainerID TEXT,
    DisposalMethod TEXT,
    HazardLevel TEXT,
    ApprovedBy TEXT,
    ContractorName TEXT,
    TicketNumber TEXT,
    Notes TEXT,
    TemperatureC REAL,
    SealStatus TEXT,
    ComplianceFlag INTEGER,
    RecordedBy TEXT,
    RecordTimestamp DATETIME,
    Location TEXT,
    WasteCategory TEXT,
    DisposalSite TEXT,
    CreatedAt DATETIME
);

INSERT INTO WasteManagementLog VALUES (1,301,'Biological','2023-05-20',250.5,'CONT001','Incineration','High','Dr. Allen','CleanInc','TCK1001','Handled per protocol',45.0,'Sealed',1,'Nurse Joy','2023-05-20 08:30:00','LabA','Biohazard','Incinerator1','2023-05-20 08:30:00');
INSERT INTO WasteManagementLog VALUES (2,302,'Chemical','2023-05-22',120.0,'CONT002','ChemicalDisposal','Medium','Dr. Baker','SafeChem','TCK1002','Spill contained',30.0,'Sealed',1,'Tech Mike','2023-05-22 09:45:00','Pharmacy','ChemHaz','ChemicalPlant','2023-05-22 09:45:00');
INSERT INTO WasteManagementLog VALUES (3,303,'General','2023-05-25',80.0,'CONT003','Landfill','Low','Dr. Clark','WasteCorp','TCK1003','No issues',20.0,'Open',1,'Janet','2023-05-25 07:15:00','Cafeteria','NonHazard','LandfillSiteA','2023-05-25 07:15:00');

-- Supply Chain Vendor Scorecard
CREATE TABLE SupplyChainVendorScorecard (
    ScorecardID INTEGER PRIMARY KEY,
    VendorID INTEGER,
    EvaluationDate DATE,
    OnTimeDeliveryPct REAL,
    QualityScore INTEGER,
    CostComplianceScore INTEGER,
    ResponsivenessScore INTEGER,
    InnovationScore INTEGER,
    SustainabilityScore INTEGER,
    ContractCompliance TEXT,
    AuditedBy TEXT,
    OverallRating TEXT,
    Comments TEXT,
    ScorecardVersion TEXT,
    ApprovedBy TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME,
    FollowUpActions TEXT,
    RiskLevel TEXT,
    EvaluationPeriod TEXT
);

INSERT INTO SupplyChainVendorScorecard VALUES (1,9001,'2023-04-01',98.5,90,85,88,70,75,'Yes','AuditorA','A','Consistently high performance','v1.0','DirectorX','2023-04-01 10:00:00','2023-04-01 10:00:00','None','Low','2023Q1');
INSERT INTO SupplyChainVendorScorecard VALUES (2,9002,'2023-04-15',85.0,70,65,60,55,60,'No','AuditorB','B','Needs improvement in timeliness','v1.0','DirectorY','2023-04-15 11:30:00','2023-04-15 11:30:00','Develop corrective plan','Medium','2023Q1');
INSERT INTO SupplyChainVendorScorecard VALUES (3,9003,'2023-04-30',92.0,80,78,82,68,70,'Yes','AuditorC','A-','Good overall, monitor sustainability','v1.0','DirectorZ','2023-04-30 14:45:00','2023-04-30 14:45:00','Quarterly review','Low','2023Q1');

-- HVAC System Status
CREATE TABLE HVACSystemStatus (
    StatusID INTEGER PRIMARY KEY,
    SystemID TEXT,
    FacilityID INTEGER,
    CheckTimestamp DATETIME,
    SupplyAirTempC REAL,
    ReturnAirTempC REAL,
    SupplyAirFlowCFM REAL,
    ReturnAirFlowCFM REAL,
    FilterCondition TEXT,
    CoolingCoilCondition TEXT,
    HeatingCoilCondition TEXT,
    FanSpeedRPM INTEGER,
    MotorCurrentA REAL,
    PowerKW REAL,
    FaultCode INTEGER,
    FaultDescription TEXT,
    OperationalMode TEXT,
    MaintenanceDueDate DATE,
    TechnicianID INTEGER,
    Notes TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO HVACSystemStatus VALUES (1,'HVAC-01',301,'2023-06-01 08:00:00',22.5,18.0,1200.0,1100.0,'Good','Good','Good',1450,3.2,4.5,0,'None','Auto',NULL,501,'System operating normally','2023-06-01 08:00:00','2023-06-01 08:00:00');
INSERT INTO HVACSystemStatus VALUES (2,'HVAC-02',302,'2023-06-01 09:30:00',24.0,19.5,1300.0,1200.0,'Fair','Minor leak','Good',1500,3.5,5.0,101,'Filter pressure drop high','Auto','2023-07-15',502,'Filter replacement needed','2023-06-01 09:30:00','2023-06-01 09:30:00');
INSERT INTO HVACSystemStatus VALUES (3,'HVAC-03',303,'2023-06-01 11:15:00',21.0,17.5,1150.0,1050.0,'Excellent','Good','Excellent',1400,3.0,4.2,0,'None','Manual','2023-08-01',503,'Routine check completed','2023-06-01 11:15:00','2023-06-01 11:15:00');