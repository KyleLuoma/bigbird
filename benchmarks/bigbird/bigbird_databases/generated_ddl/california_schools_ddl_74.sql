```sql
/* --------------------------------------------------------------
   Table: school_bus_route_schedules
   Description: Daily schedule information for each school bus route.
   -------------------------------------------------------------- */
CREATE TABLE school_bus_route_schedules
(
    RouteID                TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode          TEXT NULL,
    DayOfWeek              TEXT NULL,
    DepartureTime          TEXT NULL,         -- HH:MM (24h)
    ArrivalTime            TEXT NULL,         -- HH:MM (24h)
    DriverID               TEXT NULL,
    BusID                  TEXT NULL,
    Capacity               INTEGER NULL,
    EstimatedRideMinutes   INTEGER NULL,
    StopCount              INTEGER NULL,
    FirstStopName          TEXT NULL,
    LastStopName           TEXT NULL,
    RouteDistanceMiles     REAL NULL,
    FuelType               TEXT NULL,
    MaintenanceFlag        INTEGER NULL,      -- 0 = No, 1 = Yes
    ScheduleEffectiveDate  DATE NULL,
    ScheduleExpirationDate DATE NULL,
    Notes                  TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL,
    IsActive               INTEGER NULL       -- 0 = Inactive, 1 = Active
);

INSERT INTO school_bus_route_schedules
(RouteID,SchoolCDSCode,DayOfWeek,DepartureTime,ArrivalTime,DriverID,BusID,Capacity,EstimatedRideMinutes,StopCount,FirstStopName,LastStopName,RouteDistanceMiles,FuelType,MaintenanceFlag,ScheduleEffectiveDate,ScheduleExpirationDate,Notes,CreatedAt,UpdatedAt,IsActive)
VALUES
('R001','001234567','Monday','07:00','07:45','D001','B100',48,45,12,'Maple St','Pine Ave',12.5,'Diesel',0,'2023-09-01','2024-06-30','Morning route','2023-08-15 08:00:00','2023-08-15 08:00:00',1);

INSERT INTO school_bus_route_schedules
(RouteID,SchoolCDSCode,DayOfWeek,DepartureTime,ArrivalTime,DriverID,BusID,Capacity,EstimatedRideMinutes,StopCount,FirstStopName,LastStopName,RouteDistanceMiles,FuelType,MaintenanceFlag,ScheduleEffectiveDate,ScheduleExpirationDate,Notes,CreatedAt,UpdatedAt,IsActive)
VALUES
('R002','001234568','Tuesday','15:30','16:15','D002','B101',48,45,10,'Oak St','Cedar Rd',10.2,'Electric',0,'2023-09-01','2024-06-30','Afternoon route','2023-08-16 09:15:00','2023-08-16 09:15:00',1);

INSERT INTO school_bus_route_schedules
(RouteID,SchoolCDSCode,DayOfWeek,DepartureTime,ArrivalTime,DriverID,BusID,Capacity,EstimatedRideMinutes,StopCount,FirstStopName,LastStopName,RouteDistanceMiles,FuelType,MaintenanceFlag,ScheduleEffectiveDate,ScheduleExpirationDate,Notes,CreatedAt,UpdatedAt,IsActive)
VALUES
('R003','001234569','Wednesday','07:10','07:55','D003','B102',48,45,14,'Elm St','Birch Ln',13.8,'Diesel',1,'2023-09-01','2024-06-30','Requires extra stop for special education','2023-08-17 10:30:00','2023-08-17 10:30:00',1);


/* --------------------------------------------------------------
   Table: district_infrastructure_inventory_details
   Description: Detailed inventory of district-owned infrastructure assets.
   -------------------------------------------------------------- */
CREATE TABLE district_infrastructure_inventory_details
(
    AssetID                TEXT NOT NULL PRIMARY KEY,
    AssetType              TEXT NULL,
    AssetName              TEXT NULL,
    LocationDescription    TEXT NULL,
    Latitude               REAL NULL,
    Longitude              REAL NULL,
    AcquisitionDate        DATE NULL,
    CostUSD                REAL NULL,
    ConditionRating        INTEGER NULL,   -- 1 (poor) to 5 (excellent)
    LastInspectionDate     DATE NULL,
    WarrantyExpiration     DATE NULL,
    DepreciationYears      INTEGER NULL,
    CurrentValueUSD        REAL NULL,
    ResponsibleDept        TEXT NULL,
    AssetTag               TEXT NULL,
    SerialNumber           TEXT NULL,
    Manufacturer           TEXT NULL,
    ModelNumber            TEXT NULL,
    PowerSource            TEXT NULL,
    InstallationYear       INTEGER NULL,
    Status                 TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL
);

INSERT INTO district_infrastructure_inventory_details
(AssetID,AssetType,AssetName,LocationDescription,Latitude,Longitude,AcquisitionDate,CostUSD,ConditionRating,LastInspectionDate,WarrantyExpiration,DepreciationYears,CurrentValueUSD,ResponsibleDept,AssetTag,SerialNumber,Manufacturer,ModelNumber,PowerSource,InstallationYear,Status,CreatedAt,UpdatedAt)
VALUES
('A001','Building','Central Office','123 Main St',34.0567,-118.2475,'2010-06-15',12000000,4,'2023-05-10','2025-06-15',30,8500000,'Facilities','TAG001','SN001','Acme Constructions','CX-200','Electric',2010,'Active','2023-01-01 08:00:00','2023-08-01 08:00:00');

INSERT INTO district_infrastructure_inventory_details
(AssetID,AssetType,AssetName,LocationDescription,Latitude,Longitude,AcquisitionDate,CostUSD,ConditionRating,LastInspectionDate,WarrantyExpiration,DepreciationYears,CurrentValueUSD,ResponsibleDept,AssetTag,SerialNumber,Manufacturer,ModelNumber,PowerSource,InstallationYear,Status,CreatedAt,UpdatedAt)
VALUES
('A002','Vehicle','School Bus 45','Depot 5',34.0660,-118.2500,'2018-03-22',250000,5,'2023-04-12','2029-03-22',12,225000,'Transportation','TAG045','SN045','BusMakers','B45','Diesel',2018,'Active','2023-02-15 09:30:00','2023-08-10 09:30:00');

INSERT INTO district_infrastructure_inventory_details
(AssetID,AssetType,AssetName,LocationDescription,Latitude,Longitude,AcquisitionDate,CostUSD,ConditionRating,LastInspectionDate,WarrantyExpiration,DepreciationYears,CurrentValueUSD,ResponsibleDept,AssetTag,SerialNumber,Manufacturer,ModelNumber,PowerSource,InstallationYear,Status,CreatedAt,UpdatedAt)
VALUES
('A003','Solar Panel','Rooftop Array','North Wing Roof',34.0575,-118.2460,'2021-09-01',500000,5,'2023-06-01','2031-09-01',20,470000,'Energy','SOL001','SN_SOL001','SolarTech','RT-3000','Solar',2021,'Operational','2023-03-20 10:15:00','2023-08-15 10:15:00');


/* --------------------------------------------------------------
   Table: student_device_loan_records
   Description: Records of school-owned devices loaned to students.
   -------------------------------------------------------------- */
CREATE TABLE student_device_loan_records
(
    LoanID                 TEXT NOT NULL PRIMARY KEY,
    StudentID              TEXT NULL,
    DeviceSerial           TEXT NULL,
    DeviceType             TEXT NULL,
    Brand                  TEXT NULL,
    Model                  TEXT NULL,
    LoanStartDate          DATE NULL,
    LoanEndDate            DATE NULL,
    ConditionOnLoan        TEXT NULL,
    ConditionOnReturn      TEXT NULL,
    AssignedByStaffID      TEXT NULL,
    PickupLocation         TEXT NULL,
    ReturnLocation         TEXT NULL,
    IsOverdue              INTEGER NULL,      -- 0 = No, 1 = Yes
    OverdueDays            INTEGER NULL,
    FineAmountUSD          REAL NULL,
    WarrantyStatus         TEXT NULL,
    OSVersion              TEXT NULL,
    BatteryHealthPercent   INTEGER NULL,
    Notes                  TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL
);

INSERT INTO student_device_loan_records
(LoanID,StudentID,DeviceSerial,DeviceType,Brand,Model,LoanStartDate,LoanEndDate,ConditionOnLoan,ConditionOnReturn,AssignedByStaffID,PickupLocation,ReturnLocation,IsOverdue,OverdueDays,FineAmountUSD,WarrantyStatus,OSVersion,BatteryHealthPercent,Notes,CreatedAt,UpdatedAt)
VALUES
('L001','STU1001','SN12345','Laptop','Dell','Latitude 5400','2023-09-01','2024-05-31','Good','Good','STF200','Main Office','Main Office',0,NULL,0.00,'Active','Windows 11',95,'First semester loan','2023-08-20 08:45:00','2023-08-20 08:45:00');

INSERT INTO student_device_loan_records
(LoanID,StudentID,DeviceSerial,DeviceType,Brand,Model,LoanStartDate,LoanEndDate,ConditionOnLoan,ConditionOnReturn,AssignedByStaffID,PickupLocation,ReturnLocation,IsOverdue,OverdueDays,FineAmountUSD,WarrantyStatus,OSVersion,BatteryHealthPercent,Notes,CreatedAt,UpdatedAt)
VALUES
('L002','STU1002','SN67890','Tablet','Apple','iPad Air','2023-11-15','2024-06-15','Excellent','Excellent','STF201','Tech Lab','Tech Lab',0,NULL,0.00,'Active','iOS 16',100,'Summer program','2023-11-01 09:30:00','2023-11-01 09:30:00');

INSERT INTO student_device_loan_records
(LoanID,StudentID,DeviceSerial,DeviceType,Brand,Model,LoanStartDate,LoanEndDate,ConditionOnLoan,ConditionOnReturn,AssignedByStaffID,PickupLocation,ReturnLocation,IsOverdue,OverdueDays,FineAmountUSD,WarrantyStatus,OSVersion,BatteryHealthPercent,Notes,CreatedAt,UpdatedAt)
VALUES
('L003','STU1003','SN54321','Laptop','HP','Pavilion','2023-08-20','2024-01-20','Fair','Damaged','STF202','Main Office','Tech Repair','1',5,25.00,'Expired','Windows 10',80,'Screen crack reported','2023-08-15 10:00:00','2024-01-21 12:00:00');


/* --------------------------------------------------------------
   Table: parent_feedback_surveys
   Description: Responses from parents on school communication and involvement.
   -------------------------------------------------------------- */
CREATE TABLE parent_feedback_surveys
(
    SurveyID               TEXT NOT NULL PRIMARY KEY,
    ParentID               TEXT NULL,
    StudentID              TEXT NULL,
    SurveyDate             DATE NULL,
    CommunicationScore     INTEGER NULL,   -- 1-5
    InvolvementScore       INTEGER NULL,   -- 1-5
    SatisfactionScore      INTEGER NULL,   -- 1-5
    Comments               TEXT NULL,
    PreferredContactMethod TEXT NULL,
    FrequencyOfContact     TEXT NULL,
    AttendanceAtEvents     INTEGER NULL,
    VolunteeringHours      REAL NULL,
    SurveyMode             TEXT NULL,    -- Online, Paper, Phone
    SchoolYear             TEXT NULL,
    DistrictRegion         TEXT NULL,
    ResponseTimeMinutes    INTEGER NULL,
    SurveyVersion          TEXT NULL,
    FollowUpNeeded         INTEGER NULL,   -- 0 = No, 1 = Yes
    FollowUpDate           DATE NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL
);

INSERT INTO parent_feedback_surveys
(SurveyID,ParentID,StudentID,SurveyDate,CommunicationScore,InvolvementScore,SatisfactionScore,Comments,PreferredContactMethod,FrequencyOfContact,AttendanceAtEvents,VolunteeringHours,SurveyMode,SchoolYear,DistrictRegion,ResponseTimeMinutes,SurveyVersion,FollowUpNeeded,FollowUpDate,CreatedAt,UpdatedAt)
VALUES
('S001','PAR3001','STU2001','2023-05-12',4,5,5,'Very happy with communication','Email','Weekly',3,12.5,'Online','2023-2024','North','8','v1',0,NULL,'2023-05-01 08:00:00','2023-05-12 09:15:00');

INSERT INTO parent_feedback_surveys
(SurveyID,ParentID,StudentID,SurveyDate,CommunicationScore,InvolvementScore,SatisfactionScore,Comments,PreferredContactMethod,FrequencyOfContact,AttendanceAtEvents,VolunteeringHours,SurveyMode,SchoolYear,DistrictRegion,ResponseTimeMinutes,SurveyVersion,FollowUpNeeded,FollowUpDate,CreatedAt,UpdatedAt)
VALUES
('S002','PAR3002','STU2002','2023-05-13',3,3,4,'Need more weekend events','Phone','Monthly',1,4.0,'Phone','2023-2024','South','12','v1',1,'2023-06-01','2023-05-02 09:30:00','2023-05-13 10:00:00');

INSERT INTO parent_feedback_surveys
(SurveyID,ParentID,StudentID,SurveyDate,CommunicationScore,InvolvementScore,SatisfactionScore,Comments,PreferredContactMethod,FrequencyOfContact,AttendanceAtEvents,VolunteeringHours,SurveyMode,SchoolYear,DistrictRegion,ResponseTimeMinutes,SurveyVersion,FollowUpNeeded,FollowUpDate,CreatedAt,UpdatedAt)
VALUES
('S003','PAR3003','STU2003','2023-05-14',5,4,5,'Excellent newsletters','Email','Weekly',5,20.0,'Online','2023-2024','East','7','v1',0,NULL,'2023-05-03 10:15:00','2023-05-14 11:10:00');


/* --------------------------------------------------------------
   Table: community_outreach_funding
   Description: Grants and funding allocated to community outreach programs.
   -------------------------------------------------------------- */
CREATE TABLE community_outreach_funding
(
    FundingID              TEXT NOT NULL PRIMARY KEY,
    ProgramName            TEXT NULL,
    PartnerOrganization    TEXT NULL,
    GrantAmountUSD         REAL NULL,
    FundingYear            INTEGER NULL,
    ApplicationDate        DATE NULL,
    ApprovalDate           DATE NULL,
    ExpirationDate         DATE NULL,
    FundingSource          TEXT NULL,
    ProgramCategory        TEXT NULL,
    TargetPopulation       TEXT NULL,
    ExpectedOutcomes       TEXT NULL,
    ReportingFrequency     TEXT NULL,
    ContactPerson          TEXT NULL,
    ContactPhone           TEXT NULL,
    ContactEmail           TEXT NULL,
    Status                 TEXT NULL,
    AllocationPercentage   REAL NULL,
    MatchingFundsUSD       REAL NULL,
    Remarks                TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL
);

INSERT INTO community_outreach_funding
(FundingID,ProgramName,PartnerOrganization,GrantAmountUSD,FundingYear,ApplicationDate,ApprovalDate,ExpirationDate,FundingSource,ProgramCategory,TargetPopulation,ExpectedOutcomes,ReportingFrequency,ContactPerson,ContactPhone,ContactEmail,Status,AllocationPercentage,MatchingFundsUSD,Remarks,CreatedAt,UpdatedAt)
VALUES
('F001','After School Tutoring','Community Center A',50000,2023,'2023-01-10','2023-02-15','2024-02-14','State Education Grant','Tutoring','K-8','Improved math scores','Quarterly','Jane Doe','5551234567','jane.doe@example.com','Approved',80.0,10000,'First year of program','2023-02-20 08:30:00','2023-02-20 08:30:00');

INSERT INTO community_outreach_funding
(FundingID,ProgramName,PartnerOrganization,GrantAmountUSD,FundingYear,ApplicationDate,ApprovalDate,ExpirationDate,FundingSource,ProgramCategory,TargetPopulation,ExpectedOutcomes,ReportingFrequency,ContactPerson,ContactPhone,ContactEmail,Status,AllocationPercentage,MatchingFundsUSD,Remarks,CreatedAt,UpdatedAt)
VALUES
('F002','Healthy Meals Initiative','Local Food Bank',75000,2023,'2023-03-05','2023-04-01','2025-03-31','Federal Nutrition Grant','Food Security','All Grades','Reduced hunger rates','Annual','John Smith','5559876543','john.smith@example.com','Pending',0,NULL,'Awaiting board approval','2023-04-02 09:00:00','2023-04-02 09:00:00');

INSERT INTO community_outreach_funding
(FundingID,ProgramName,PartnerOrganization,GrantAmountUSD,FundingYear,ApplicationDate,ApprovalDate,ExpirationDate,FundingSource,ProgramCategory,TargetPopulation,ExpectedOutcomes,ReportingFrequency,ContactPerson,ContactPhone,ContactEmail,Status,AllocationPercentage,MatchingFundsUSD,Remarks,CreatedAt,UpdatedAt)
VALUES
('F003','STEM Summer Camp','Tech Corp',120000,2023,'2023-02-20','2023-03-15','2024-08-31','Private Donation','STEM','Middle School','Increased STEM enrollment','Biannual','Alice Green','5552223344','alice.green@example.com','Approved',100.0,20000,'Special focus on robotics','2023-03-16 10:20:00','2023-03-16 10:20:00');


/* --------------------------------------------------------------
   Table: school_maintenance_work_orders
   Description: Work orders for maintenance activities across school facilities.
   -------------------------------------------------------------- */
CREATE TABLE school_maintenance_work_orders
(
    WorkOrderID            TEXT NOT NULL PRIMARY KEY,
    FacilityID             TEXT NULL,
    IssueDescription       TEXT NULL,
    PriorityLevel          TEXT NULL,
    ReportedDate           DATE NULL,
    AssignedToStaffID      TEXT NULL,
    ExpectedCompletionDate DATE NULL,
    ActualCompletionDate   DATE NULL,
    CostUSD                REAL NULL,
    MaterialsUsed          TEXT NULL,
    VendorName             TEXT NULL,
    WorkOrderStatus        TEXT NULL,
    SafetyHazardFlag       INTEGER NULL,   -- 0 = No, 1 = Yes
    InspectionRequiredFlag INTEGER NULL,   -- 0 = No, 1 = Yes
    FollowUpDate           DATE NULL,
    CreatedByUserID        TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL,
    Notes                  TEXT NULL,
    IsEmergency            INTEGER NULL    -- 0 = No, 1 = Yes
);

INSERT INTO school_maintenance_work_orders
(WorkOrderID,FacilityID,IssueDescription,PriorityLevel,ReportedDate,AssignedToStaffID,ExpectedCompletionDate,ActualCompletionDate,CostUSD,MaterialsUsed,VendorName,WorkOrderStatus,SafetyHazardFlag,InspectionRequiredFlag,FollowUpDate,CreatedByUserID,CreatedAt,UpdatedAt,Notes,IsEmergency)
VALUES
('WO001','F001','Leaking roof in gymnasium','High','2023-07-01','STF300','2023-07-10','2023-07-09',15000,'Roofing shingles','RoofCo','Closed',1,1,'2023-07-20','ADM001','2023-07-01 08:15:00','2023-07-09 16:45:00','Fixed before basketball season',0);

INSERT INTO school_maintenance_work_orders
(WorkOrderID,FacilityID,IssueDescription,PriorityLevel,ReportedDate,AssignedToStaffID,ExpectedCompletionDate,ActualCompletionDate,CostUSD,MaterialsUsed,VendorName,WorkOrderStatus,SafetyHazardFlag,InspectionRequiredFlag,FollowUpDate,CreatedByUserID,CreatedAt,UpdatedAt,Notes,IsEmergency)
VALUES
('WO002','F002','Flickering lights in hallway','Medium','2023-07-05','STF301','2023-07-12',NULL,3000,'LED fixtures','LightWorks','In Progress',0,0,NULL,'ADM002','2023-07-05 09:00:00','2023-07-07 10:30:00','Awaiting parts delivery',0);

INSERT INTO school_maintenance_work_orders
(WorkOrderID,FacilityID,IssueDescription,PriorityLevel,ReportedDate,AssignedToStaffID,ExpectedCompletionDate,ActualCompletionDate,CostUSD,MaterialsUsed,VendorName,WorkOrderStatus,SafetyHazardFlag,InspectionRequiredFlag,FollowUpDate,CreatedByUserID,CreatedAt,UpdatedAt,Notes,IsEmergency)
VALUES
('WO003','F003','Broken HVAC unit in science lab','Critical','2023-07-08','STF302','2023-07-09','2023-07-08',8000,'HVAC compressor','CoolAir','Closed',1,1,'2023-07-15','ADM003','2023-07-08 07:45:00','2023-07-08 14:20:00','Replaced entire unit overnight',1);


/* --------------------------------------------------------------
   Table: district_grant_reporting_metrics
   Description: Metrics used for reporting district grant expenditures and compliance.
   -------------------------------------------------------------- */
CREATE TABLE district_grant_reporting_metrics
(
    ReportID               TEXT NOT NULL PRIMARY KEY,
    GrantID                TEXT NULL,
    DistrictID             TEXT NULL,
    FiscalYear             INTEGER NULL,
    TotalAwardUSD          REAL NULL,
    FundsSpentUSD          REAL NULL,
    UnspentBalanceUSD      REAL NULL,
    ReportingQuarter       TEXT NULL,
    ComplianceScore        REAL NULL,
    NumberOfProjects       INTEGER NULL,
    AverageProjectSizeUSD   REAL NULL,
    RiskLevel              TEXT NULL,
    LastAuditDate          DATE NULL,
    ReportingOfficerID    TEXT NULL,
    Remarks                TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL,
    IsFinalReport          INTEGER NULL,   -- 0 = No, 1 = Yes
    SubmissionDate         DATE NULL
);

INSERT INTO district_grant_reporting_metrics
(ReportID,GrantID,DistrictID,FiscalYear,TotalAwardUSD,FundsSpentUSD,UnspentBalanceUSD,ReportingQuarter,ComplianceScore,NumberOfProjects,AverageProjectSizeUSD,RiskLevel,LastAuditDate,ReportingOfficerID,Remarks,CreatedAt,UpdatedAt,IsFinalReport,SubmissionDate)
VALUES
('R001','G100','D01',2023,2500000,1800000,700000,'Q1',92.5,12,208333,'Medium','2023-04-15','OFF001','On track','2023-05-01 08:00:00','2023-05-01 08:00:00',0,'2023-05-05');

INSERT INTO district_grant_reporting_metrics
(ReportID,GrantID,DistrictID,FiscalYear,TotalAwardUSD,FundsSpentUSD,UnspentBalanceUSD,ReportingQuarter,ComplianceScore,NumberOfProjects,AverageProjectSizeUSD,RiskLevel,LastAuditDate,ReportingOfficerID,Remarks,CreatedAt,UpdatedAt,IsFinalReport,SubmissionDate)
VALUES
('R002','G101','D01',2023,1500000,1500000,0,'Q2',99.0,5,300000,'Low','2023-07-20','OFF002','All funds allocated','2023-08-01 09:15:00','2023-08-01 09:15:00',1,'2023-08-10');

INSERT INTO district_grant_reporting_metrics
(ReportID,GrantID,DistrictID,FiscalYear,TotalAwardUSD,FundsSpentUSD,UnspentBalanceUSD,ReportingQuarter,ComplianceScore,NumberOfProjects,AverageProjectSizeUSD,RiskLevel,LastAuditDate,ReportingOfficerID,Remarks,CreatedAt,UpdatedAt,IsFinalReport,SubmissionDate)
VALUES
('R003','G102','D01',2023,500000,350000,150000,'Q3',85.0,3,166667,'High','2023-10-05','OFF003','Need to accelerate spending','2023-10-15 10:30:00','2023-10-15 10:30:00',0,'2023-10-20');


/* --------------------------------------------------------------
   Table: school_technology_innovation_projects
   Description: Projects that introduce new technology solutions in schools.
   -------------------------------------------------------------- */
CREATE TABLE school_technology_innovation_projects
(
    ProjectID              TEXT NOT NULL PRIMARY KEY,
    ProjectName            TEXT NULL,
    LeadTeacherID          TEXT NULL,
    SponsorDept            TEXT NULL,
    StartDate              DATE NULL,
    EndDate                DATE NULL,
    BudgetUSD              REAL NULL,
    FundingSource          TEXT NULL,
    TechnologyArea         TEXT NULL,
    ObjectiveDescription   TEXT NULL,
    ExpectedImpact         TEXT NULL,
    Status                 TEXT NULL,
    MilestonesCompleted    INTEGER NULL,
    TotalMilestones        INTEGER NULL,
    PartnerOrganization    TEXT NULL,
    ExternalFundingUSD     REAL NULL,
    IPPatentsFiled        INTEGER NULL,
    OutcomesDocumented     TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL,
    Notes                  TEXT NULL
);

INSERT INTO school_technology_innovation_projects
(ProjectID,ProjectName,LeadTeacherID,SponsorDept,StartDate,EndDate,BudgetUSD,FundingSource,TechnologyArea,ObjectiveDescription,ExpectedImpact,Status,MilestonesCompleted,TotalMilestones,PartnerOrganization,ExternalFundingUSD,IPPatentsFiled,OutcomesDocumented,CreatedAt,UpdatedAt,Notes)
VALUES
('TP001','VR History Immersion','TCH400','Curriculum','2023-01-15','2023-12-31',85000,'District Grant','Virtual Reality','Create immersive VR experiences for history classes','Higher engagement and retention','Active',3,5,'VR Studios Inc',20000,1,'Report submitted Q4','2023-01-10 08:00:00','2023-07-01 09:45:00','Pilot in two schools');

INSERT INTO school_technology_innovation_projects
(ProjectID,ProjectName,LeadTeacherID,SponsorDept,StartDate,EndDate,BudgetUSD,FundingSource,TechnologyArea,ObjectiveDescription,ExpectedImpact,Status,MilestonesCompleted,TotalMilestones,PartnerOrganization,ExternalFundingUSD,IPPatentsFiled,OutcomesDocumented,CreatedAt,UpdatedAt,Notes)
VALUES
('TP002','AI Tutoring Chatbot','TCH401','Instructional Tech','2023-03-01','2024-02-28',120000,'Federal Grant','Artificial Intelligence','Deploy AI chatbot to assist students with homework','Improved self‑study rates','Planning',0,4,'AI Solutions Ltd',50000,0,NULL,'2023-02-25 09:30:00','2023-02-25 09:30:00','Approval pending');

INSERT INTO school_technology_innovation_projects
(ProjectID,ProjectName,LeadTeacherID,SponsorDept,StartDate,EndDate,BudgetUSD,FundingSource,TechnologyArea,ObjectiveDescription,ExpectedImpact,Status,MilestonesCompleted,TotalMilestones,PartnerOrganization,ExternalFundingUSD,IPPatentsFiled,OutcomesDocumented,CreatedAt,UpdatedAt,Notes)
VALUES
('TP003','3D Printing Lab Expansion','TCH402','STEM','2023-05-10','2024-05-09',95000,'District Budget','3D Printing','Add 5 new 3D printers and curriculum module','Increase maker‑space usage','Active',2,3,'PrintTech Co',15000,2,'Documentation in progress','2023-05-05 10:15:00','2023-08-20 11:00:00','Phase 1 complete');


/* --------------------------------------------------------------
   Table: district_transportation_accident_reports
   Description: Accident reports for district-owned transportation vehicles.
   -------------------------------------------------------------- */
CREATE TABLE district_transportation_accident_reports
(
    AccidentID             TEXT NOT NULL PRIMARY KEY,
    VehicleID              TEXT NULL,
    AccidentDate           DATE NULL,
    AccidentTime           TEXT NULL,   -- HH:MM
    LocationDescription    TEXT NULL,
    Latitude               REAL NULL,
    Longitude              REAL NULL,
    SeverityLevel          TEXT NULL,
    NumberInjured          INTEGER NULL,
    NumberFatalities       INTEGER NULL,
    CauseDescription       TEXT NULL,
    WeatherCondition       TEXT NULL,
    RoadCondition          TEXT NULL,
    ReportingOfficerID    TEXT NULL,
    FollowUpAction         TEXT NULL,
    RepairCostUSD          REAL NULL,
    InsuranceClaimNumber   TEXT NULL,
    Status                 TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL
);

INSERT INTO district_transportation_accident_reports
(AccidentID,VehicleID,AccidentDate,AccidentTime,LocationDescription,Latitude,Longitude,SeverityLevel,NumberInjured,NumberFatalities,CauseDescription,WeatherCondition,RoadCondition,ReportingOfficerID,FollowUpAction,RepairCostUSD,InsuranceClaimNumber,Status,CreatedAt,UpdatedAt)
VALUES
('A001','B045','2023-06-12','08:45','Intersection of Oak St and 5th Ave',34.0678,-118.2512,'Moderate',1,0,'Rear‑end collision','Clear','Dry','OFF100','Vehicle repaired','3500','ICN12345','Closed','2023-06-13 09:00:00','2023-06-13 09:00:00');

INSERT INTO district_transportation_accident_reports
(AccidentID,VehicleID,AccidentDate,AccidentTime,LocationDescription,Latitude,Longitude,SeverityLevel,NumberInjured,NumberFatalities,CauseDescription,WeatherCondition,RoadCondition,ReportingOfficerID,FollowUpAction,RepairCostUSD,InsuranceClaimNumber,Status,CreatedAt,UpdatedAt)
VALUES
('A002','B046','2023-07-04','14:20','Near Maple Blvd parking lot',34.0685,-118.2600,'Minor',0,0,'Side swipe while parking','Rain','Wet','OFF101','Minor dent repaired','1200','ICN12346','Closed','2023-07-05 10:15:00','2023-07-05 10:15:00');

INSERT INTO district_transportation_accident_reports
(AccidentID,VehicleID,AccidentDate,AccidentTime,LocationDescription,Latitude,Longitude,SeverityLevel,NumberInjured,NumberFatalities,CauseDescription,WeatherCondition,RoadCondition,ReportingOfficerID,FollowUpAction,RepairCostUSD,InsuranceClaimNumber,Status,CreatedAt,UpdatedAt)
VALUES
('A003','B047','2023-08-20','09:05','Highway 101 Mile 12',34.0900,-118.3000,'Severe',2,0,'Head‑on collision','Fog','Wet','OFF102','Vehicle written off','0','ICN12347','Open','2023-08-21 08:00:00','2023-08-21 08:00:00');


/* --------------------------------------------------------------
   Table: environmental_water_quality_monitoring
   Description: Periodic water quality sampling results for district facilities.
   -------------------------------------------------------------- */
CREATE TABLE environmental_water_quality_monitoring
(
    MonitoringID           TEXT NOT NULL PRIMARY KEY,
    SiteName               TEXT NULL,
    Latitude               REAL NULL,
    Longitude              REAL NULL,
    SampleDate             DATE NULL,
    SampleTime             TEXT NULL,   -- HH:MM
    Parameter              TEXT NULL,
    Value                  REAL NULL,
    Unit                   TEXT NULL,
    SampleMethod           TEXT NULL,
    LaboratoryID           TEXT NULL,
    ResultDate             DATE NULL,
    ComplianceStatus       TEXT NULL,
    ActionTaken            TEXT NULL,
    TechnicianID           TEXT NULL,
    Notes                  TEXT NULL,
    CreatedAt              DATETIME NULL,
    UpdatedAt              DATETIME NULL,
    IsValid                INTEGER NULL,   -- 0 = No, 1 = Yes
    CalibrationDate        DATE NULL
);

INSERT INTO environmental_water_quality_monitoring
(MonitoringID,SiteName,Latitude,Longitude,SampleDate,SampleTime,Parameter,Value,Unit,SampleMethod,LaboratoryID,ResultDate,ComplianceStatus,ActionTaken,TechnicianID,Notes,CreatedAt,UpdatedAt,IsValid,CalibrationDate)
VALUES
('WQ001','North Campus Reservoir',34.0550,-118.2400,'2023-06-01','07:30','pH',7.2,'none','Portable Meter','LAB01','2023-06-02','Compliant','No action needed','TECH01','Initial baseline measurement','2023-06-01 08:00:00','2023-06-02 09:00:00',1,'2023-05-15');

INSERT INTO environmental_water_quality_monitoring
(MonitoringID,SiteName,Latitude,Longitude,SampleDate,SampleTime,Parameter,Value,Unit,SampleMethod,LaboratoryID,ResultDate,ComplianceStatus,ActionTaken,TechnicianID,Notes,CreatedAt,UpdatedAt,IsValid,CalibrationDate)
VALUES
('WQ002','South Campus Drain',34.0400,-118.2600,'2023-07-15','09:45','Lead','0.03','mg/L','Lab Analysis','LAB02','2023-07-16','Compliant','Monitor quarterly','TECH02','Below detection limit','2023-07-15 10:00:00','2023-07-16 11:30:00',1,'2023-06-20');

INSERT INTO environmental_water_quality_monitoring
(MonitoringID,SiteName,Latitude,Longitude,SampleDate,SampleTime,Parameter,Value,Unit,SampleMethod,LaboratoryID,ResultDate,ComplianceStatus,ActionTaken,TechnicianID,Notes,CreatedAt,UpdatedAt,IsValid,CalibrationDate)
VALUES
('WQ003','East Parking Lot Runoff',34.0600,-118.2500,'2023-08-10','13:20','E.coli','150','CFU/100mL','Membrane Filtration','LAB01','2023-08-11','Non‑Compliant','Notify facilities for remediation','TECH03','High after recent rain','2023-08-10 14:00:00','2023-08-11 10:15:00',1,'2023-07-30');

```