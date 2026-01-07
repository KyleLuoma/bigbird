-- FacilitySecurityIncident: records of security related events within the hospital premises
CREATE TABLE FacilitySecurityIncident
(
    IncidentID                INTEGER NOT NULL PRIMARY KEY,
    IncidentDate              DATE    NULL,
    Shift                     TEXT    NULL,
    Location                  TEXT    NULL,
    IncidentType              TEXT    NULL,
    Description               TEXT    NULL,
    ReportedBy                TEXT    NULL,
    ActionTaken               TEXT    NULL,
    SeverityLevel             INTEGER NULL,
    IsResolved                INTEGER NULL,
    ResolutionDate            DATE    NULL,
    WitnessCount              INTEGER NULL,
    CameraFootageAvailable    INTEGER NULL,
    SecurityStaffID           INTEGER NULL,
    ExternalAgencyInvolved    TEXT    NULL,
    Notes                     TEXT    NULL,
    Latitude                  REAL    NULL,
    Longitude                 REAL    NULL,
    WeatherCondition          TEXT    NULL,
    EquipmentInvolved         TEXT    NULL
);

INSERT INTO FacilitySecurityIncident VALUES (1,'2025-03-15','Night','East Wing Lobby','Theft','Missing laptop from reception desk','JohnDoe','Recovered laptop','2',1,'2025-03-16',2,1,101,'Local Police','Case closed',40.7128,-74.0060,'Clear','None');
INSERT INTO FacilitySecurityIncident VALUES (2,'2025-04-02','Day','Parking Garage','Vandalism','Graffiti on wall','JaneSmith','Cleaned wall','1',1,'2025-04-03',0,0,102,'None','Resolved after cleaning',40.7130,-74.0055,'Rainy','Spray paint');
INSERT INTO FacilitySecurityIncident VALUES (3,'2025-05-10','Evening','ICU','UnauthorizedAccess','Staff entered restricted area','MikeBrown','Issued warning','3',0,NULL,1,1,103,'Security Team','Pending investigation',40.7125,-74.0065,'Cloudy','Badge scanner');

-- PharmacyTemperatureLog: temperature and environmental monitoring for medication storage
CREATE TABLE PharmacyTemperatureLog
(
    LogID                     INTEGER NOT NULL PRIMARY KEY,
    RecordDate                DATE    NULL,
    RecordTime                TEXT    NULL,
    RefrigeratorID            TEXT    NULL,
    TemperatureC              REAL    NULL,
    HumidityPercent           REAL    NULL,
    AlertFlag                 INTEGER NULL,
    TechnicianID              INTEGER NULL,
    MaintenanceDueDate        DATE    NULL,
    BatchNumber               TEXT    NULL,
    MedicationCategory        TEXT    NULL,
    SensorStatus              TEXT    NULL,
    Voltage                   REAL    NULL,
    Current                   REAL    NULL,
    PowerSupply               TEXT    NULL,
    CalibrationDate           DATE    NULL,
    FirmwareVersion           TEXT    NULL,
    Location                  TEXT    NULL,
    DoorOpenCount             INTEGER NULL,
    Notes                     TEXT    NULL,
    OperatorComment           TEXT    NULL
);

INSERT INTO PharmacyTemperatureLog VALUES (101,'2025-06-01','08:00','FR-01',4.2,55.0,0,201,'2025-12-01','B123','Vaccines','OK',5.0,0.2,'UPS','2025-01-15','v1.3','North Wing',3,'Normal operation','All good');
INSERT INTO PharmacyTemperatureLog VALUES (102,'2025-06-01','12:00','FR-02',6.8,60.0,1,202,'2025-11-15','B124','Antibiotics','OK',5.0,0.2,'UPS','2025-02-20','v1.2','South Wing',5,'Temperature high','Investigate cooling system');
INSERT INTO PharmacyTemperatureLog VALUES (103,'2025-06-01','16:30','FR-03',2.5,45.0,0,203,'2025-10-30','B125','Insulin','OK',5.0,0.2','UPS','2025-03-10','v1.4','East Wing',2,'All parameters stable','No action needed');

-- StaffPerformanceReview: annual performance evaluation data for hospital staff
CREATE TABLE StaffPerformanceReview
(
    ReviewID                  INTEGER NOT NULL PRIMARY KEY,
    ReviewPeriodStart        DATE    NULL,
    ReviewPeriodEnd          DATE    NULL,
    StaffID                  INTEGER NULL,
    Department               TEXT    NULL,
    ReviewerID               INTEGER NULL,
    OverallScore             REAL    NULL,
    ScoreCommunication       REAL    NULL,
    ScoreTechnical           REAL    NULL,
    ScoreTeamwork            REAL    NULL,
    ScoreLeadership          REAL    NULL,
    GoalsMet                 INTEGER NULL,
    GoalsPending             INTEGER NULL,
    TrainingCompleted        INTEGER NULL,
    Certifications           TEXT    NULL,
    AttendanceRate           REAL    NULL,
    LateArrivals             INTEGER NULL,
    DisciplinaryActions      INTEGER NULL,
    Comments                 TEXT    NULL,
    PromotionRecommended     INTEGER NULL,
    SalaryAdjustmentPercent  REAL    NULL
);

INSERT INTO StaffPerformanceReview VALUES (1001,'2024-01-01','2024-12-31',301,'Radiology',401,4.5,4.7,4.8,4.6,4.4,12,2,5,'RCB,ABR',98.5,1,0,'Exceeds expectations',1,5.0);
INSERT INTO StaffPerformanceReview VALUES (1002,'2024-01-01','2024-12-31',302,'Pathology',402,3.9,4.0,3.8,4.1,3.5,8,4,3,'CAP',92.0,3,1,'Meets expectations',0,2.0);
INSERT INTO StaffPerformanceReview VALUES (1003,'2024-01-01','2024-12-31',303,'Nursing',403,4.2,4.3,4.5,4.2,4.0,10,3,6,'RN,BSN',95.0,2,0,'Strong performer',1,3.5);

-- ClinicalGuidelineImplementation: tracking of guideline rollout and compliance
CREATE TABLE ClinicalGuidelineImplementation
(
    ImplementationID          INTEGER NOT NULL PRIMARY KEY,
    GuidelineID               TEXT    NULL,
    GuidelineName            TEXT    NULL,
    Department               TEXT    NULL,
    StartDate                DATE    NULL,
    EndDate                  DATE    NULL,
    ImplementationStatus    TEXT    NULL,
    ComplianceRate           REAL    NULL,
    TrainingSessionsConducted INTEGER NULL,
    TrainingHours            REAL    NULL,
    AuditedBy                TEXT    NULL,
    AuditDate                DATE    NULL,
    FindingsSummary          TEXT    NULL,
    ActionPlan               TEXT    NULL,
    ResourcesAllocated      REAL    NULL,
    BudgetUsed               REAL    NULL,
    PatientImpactScore       REAL    NULL,
    StaffFeedbackScore       REAL    NULL,
    Notes                    TEXT    NULL,
    RevisionNumber           INTEGER NULL
);

INSERT INTO ClinicalGuidelineImplementation VALUES (2001,'CG-001','SepsisManagement','Emergency', '2025-01-10','2025-06-30','Completed',96.5,12,48.0,'DrAllen','2025-07-05','High compliance, minor documentation gaps','Update forms, reinforce audit',50000,46000,8.5,9.0,'Guideline effective',1);
INSERT INTO ClinicalGuidelineImplementation VALUES (2002,'CG-002','VentilatorAssociatedPneumonia','ICU','2025-02-01','2025-08-15','InProgress',78.0,6,24.0,'NurseRuth','2025-09-01','Variable compliance across shifts','Standardize protocol, additional training',30000,25000,7.2,7.8,'Needs more staff engagement',2);
INSERT INTO ClinicalGuidelineImplementation VALUES (2003,'CG-003','AntibioticStewardship','Pharmacy','2025-03-05','2025-12-31','Planned',NULL,0,0.0,'PharmHead','2025-03-06','Planning stage, no data yet','Develop monitoring tools',20000,0,0,0,'Awaiting kickoff',1);

-- MedicalSupplyExpiration: monitoring expiration dates and disposal of medical supplies
CREATE TABLE MedicalSupplyExpiration
(
    RecordID                 INTEGER NOT NULL PRIMARY KEY,
    SupplyID                 TEXT    NULL,
    SupplyName               TEXT    NULL,
    BatchNumber              TEXT    NULL,
    ReceivedDate             DATE    NULL,
    ExpirationDate           DATE    NULL,
    QuantityOnHand           INTEGER NULL,
    QuantityExpired          INTEGER NULL,
    StorageLocation          TEXT    NULL,
    TemperatureControlled    INTEGER NULL,
    AlarmThresholdDays       INTEGER NULL,
    SupplierName             TEXT    NULL,
    ContactPhone             TEXT    NULL,
    LastAuditDate            DATE    NULL,
    AuditedBy                TEXT    NULL,
    DisposalMethod           TEXT    NULL,
    DisposalDate             DATE    NULL,
    Remarks                  TEXT    NULL,
    QCStatus                 TEXT    NULL,
    ReorderLevel             INTEGER NULL,
    ReorderQuantity          INTEGER NULL
);

INSERT INTO MedicalSupplyExpiration VALUES (3001,'MS-1001','Syringe 5ml','SX2025A','2025-01-20','2027-01-20',5000,0,'Supply Closet A',1,30,'MedSupplyCo','5551234','2025-06-01','AuditorA','Incineration',NULL,'All good','Passed',1000,2000);
INSERT INTO MedicalSupplyExpiration VALUES (3002,'MS-1002','IV Fluid 0.9%','IV2025B','2025-02-15','2026-02-15',2000,150,'Supply Closet B',1,45,'HealthSuppliesInc','5555678','2025-06-10','AuditorB','Landfill',NULL,'Removed expired units','Passed',500,1000);
INSERT INTO MedicalSupplyExpiration VALUES (3003,'MS-1003','Gloves Latex','GL2025C','2025-03-10','2028-03-10',10000,0,'Supply Closet C',0,60,'SafeGlove','5559012','2025-06-15','AuditorC','Recycle',NULL,'Stock sufficient','Passed',2000,3000);

-- AmbulanceMaintenance: service records for ambulance fleet
CREATE TABLE AmbulanceMaintenance
(
    MaintenanceID            INTEGER NOT NULL PRIMARY KEY,
    AmbulanceID              TEXT    NULL,
    ServiceDate              DATE    NULL,
    OdometerMiles            INTEGER NULL,
    EngineCheck              TEXT    NULL,
    BrakeCheck               TEXT    NULL,
    TireCondition            TEXT    NULL,
    LightCheck               TEXT    NULL,
    SirenCheck               TEXT    NULL,
    GPSCheck                 TEXT    NULL,
    BatteryHealth            TEXT    NULL,
    FuelLevel                REAL    NULL,
    OilChange                TEXT    NULL,
    FilterChange             TEXT    NULL,
    CleanlinessScore         INTEGER NULL,
    MaintenanceTechnicianID  INTEGER NULL,
    NextServiceDue           DATE    NULL,
    ServiceCenter            TEXT    NULL,
    ServiceCost              REAL    NULL,
    InvoiceNumber            TEXT    NULL,
    Notes                    TEXT    NULL
);

INSERT INTO AmbulanceMaintenance VALUES (4001,'AMB-01','2025-05-20',45200,'OK','OK','Good','OK','OK','OK','Good',80.0,'Performed','Performed',9,501,'2025-11-20','CityAuto','1500.00','INV-5001','Routine service');
INSERT INTO AmbulanceMaintenance VALUES (4002,'AMB-02','2025-04-15',37800,'Minor','OK','Fair','OK','OK','OK','Fair',65.0,'Performed','Pending',7,502,'2025-10-15','RapidRepair','1200.00','INV-5002','Brake pads replaced');
INSERT INTO AmbulanceMaintenance VALUES (4003,'AMB-03','2025-06-10',52000,'OK','OK','Good','OK','OK','OK','Good',90.0,'Not Needed','Performed',10,503,'2026-01-10','MedicalFleetSvc','1800.00','INV-5003','Full inspection');

-- CommunityHealthWorkshop: events organized for public health education
CREATE TABLE CommunityHealthWorkshop
(
    WorkshopID               INTEGER NOT NULL PRIMARY KEY,
    Topic                    TEXT    NULL,
    TargetAudience           TEXT    NULL,
    Location                 TEXT    NULL,
    Date                     DATE    NULL,
    StartTime                TEXT    NULL,
    EndTime                  TEXT    NULL,
    PresenterName            TEXT    NULL,
    PresenterAffiliation     TEXT    NULL,
    ExpectedAttendees        INTEGER NULL,
    ActualAttendees          INTEGER NULL,
    MaterialsDistributed     INTEGER NULL,
    FeedbackScore            REAL    NULL,
    Sponsor                  TEXT    NULL,
    FundingAmount            REAL    NULL,
    ContactPhone             TEXT    NULL,
    Email                    TEXT    NULL,
    RegistrationRequired    INTEGER NULL,
    FollowUpActions          TEXT    NULL,
    Notes                    TEXT    NULL
);

INSERT INTO CommunityHealthWorkshop VALUES (5001,'Nutrition Basics','Adults','Community Center A','2025-07-10','10:00','12:00','LauraGreen','Health Dept','50','48','48',4.6,'City Council','5000.00','5551111','info@cityhealth.org',1,'Send handouts via email','Well attended');
INSERT INTO CommunityHealthWorkshop VALUES (5002,'Hypertension Awareness','Seniors','Senior Center B','2025-08-05','14:00','16:00','MarkLee','Cardio Clinic','30','28','28',4.2,'PharmaCo','3000.00','5552222','contact@pharmaco.com',0,'Schedule follow‑up screenings','Positive feedback');
INSERT INTO CommunityHealthWorkshop VALUES (5003,'Childhood Immunization','Parents','School Gym','2025-09-12','09:00','11:00','DrAmySmith','Pediatric Hospital','40','35','35',4.8,'Health Foundations','4000.00','5553333','immunize@peds.org',1,'Provide vaccine coupons','High interest');

-- HospitalFeedbackSurvey: generic satisfaction surveys for hospital services
CREATE TABLE HospitalFeedbackSurvey
(
    SurveyID                 INTEGER NOT NULL PRIMARY KEY,
    SurveyDate               DATE    NULL,
    Department               TEXT    NULL,
    SurveyMethod             TEXT    NULL,
    RespondentRole           TEXT    NULL,
    SatisfactionScore        REAL    NULL,
    CleanlinessScore         REAL    NULL,
    WaitTimeScore            REAL    NULL,
    StaffFriendlinessScore   REAL    NULL,
    FacilityComfortScore     REAL    NULL,
    OverallRating            REAL    NULL,
    Comments                 TEXT    NULL,
    FollowUpRequired         INTEGER NULL,
    FollowUpDueDate          DATE    NULL,
    SurveyorID               INTEGER NULL,
    SurveyVersion            TEXT    NULL,
    ResponseTimeMinutes      INTEGER NULL,
    RecommendationLikelihood REAL    NULL,
    IssueReported            TEXT    NULL,
    ResolutionStatus         TEXT    NULL
);

INSERT INTO HospitalFeedbackSurvey VALUES (6001,'2025-06-20','Emergency','Online','Patient',4.2,3.9,2.8,4.0,3.5,4.0,'Short wait but staff were helpful',1,'2025-06-25',701,'v1.0',15,8.0,'Long wait at registration','Pending');
INSERT INTO HospitalFeedbackSurvey VALUES (6002,'2025-06-22','Radiology','Paper','Visitor',4.5,4.2,4.0,4.6,4.3,4.5,'Clean facilities, friendly technicians',0,NULL,702,'v1.0',10,9.0,'None','N/A');
INSERT INTO HospitalFeedbackSurvey VALUES (6003,'2025-06-25','Outpatient','Phone','Staff',4.8,4.7,4.5,4.9,4.6,4.8,'Excellent service and environment',0,NULL,703,'v1.0',5,9.5,'None','N/A');

-- LaboratoryInstrumentCalibration: calibration records for lab equipment
CREATE TABLE LaboratoryInstrumentCalibration
(
    CalibrationID            INTEGER NOT NULL PRIMARY KEY,
    InstrumentID             TEXT    NULL,
    InstrumentType           TEXT    NULL,
    SerialNumber             TEXT    NULL,
    CalibrationDate          DATE    NULL,
    CalibrationDueDate       DATE    NULL,
    CalibrationTechnicianID  INTEGER NULL,
    CalibrationMethod        TEXT    NULL,
    StandardUsed             TEXT    NULL,
    Tolerance                REAL    NULL,
    ResultStatus             TEXT    NULL,
    DeviationValue           REAL    NULL,
    Temperature              REAL    NULL,
    Humidity                 REAL    NULL,
    LabLocation              TEXT    NULL,
    CalibrationCertificateNumber TEXT NULL,
    Remarks                  TEXT    NULL,
    NextCalibrationIntervalDays INTEGER NULL,
    LastMaintainedDate       DATE    NULL,
    MaintenanceTechnicianID  INTEGER NULL
);

INSERT INTO LaboratoryInstrumentCalibration VALUES (7001,'INST-001','Spectrophotometer','SPX1001','2025-04-15','2026-04-15',801,'Standard','NIST SRM 927e','0.5%','Pass',0.02,22.0,45.0,'Lab A','CERT-7001','No issues',365,'2025-04-15',801);
INSERT INTO LaboratoryInstrumentCalibration VALUES (7002,'INST-002','Centrifuge','CF2002','2025-05-10','2026-05-10',802,'Internal','Water','1.0%','Pass',0.05,20.0,40.0,'Lab B','CERT-7002','Slight vibration noted','365','2025-05-10',802);
INSERT INTO LaboratoryInstrumentCalibration VALUES (7003,'INST-003','pH Meter','PH3003','2025-03-20','2025-09-20',803,'Standard','NIST SRM 918b','0.2%','Fail',0.3,23.5,50.0,'Lab C','CERT-7003','Recalibration needed','180','2025-03-20',803);

-- HospitalCafeteriaMenu: daily menu items offered in the hospital cafeteria
CREATE TABLE HospitalCafeteriaMenu
(
    MenuID                   INTEGER NOT NULL PRIMARY KEY,
    MenuDate                 DATE    NULL,
    MealType                 TEXT    NULL,
    DishName                 TEXT    NULL,
    Category                 TEXT    NULL,
    Calories                 INTEGER NULL,
    ProteinGrams             REAL    NULL,
    CarbsGrams               REAL    NULL,
    FatGrams                 REAL    NULL,
    SodiumMg                 INTEGER NULL,
    Allergens                TEXT    NULL,
    Vegetarian               INTEGER NULL,
    Vegan                    INTEGER NULL,
    GlutenFree               INTEGER NULL,
    SpicinessLevel          TEXT    NULL,
    Price                    REAL    NULL,
    ChefName                 TEXT    NULL,
    PreparationTimeMin       INTEGER NULL,
    KitchenStation           TEXT    NULL,
    Seasonal                 TEXT    NULL,
    SpecialNotes             TEXT    NULL
);

INSERT INTO HospitalCafeteriaMenu VALUES (8001,'2025-07-01','Breakfast','Veggie Omelette','Entree',350,20.0,5.0,15.0,500,'Eggs;Milk',1,0,0,'Mild',4.50,'ChefAnna',15,'Grill','Spring','Served with whole grain toast');
INSERT INTO HospitalCafeteriaMenu VALUES (8002,'2025-07-01','Lunch','Grilled Chicken Salad','Salad',420,35.0,10.0,12.0,650,'None',0,0,1,'Mild',6.75,'ChefBen',20,'Cold Bar','Summer','Includes seasonal berries');
INSERT INTO HospitalCafeteriaMenu VALUES (8003,'2025-07-01','Dinner','Quinoa Stuffed Peppers','Main',480,18.0,55.0,14.0,700,'Peppers;Tomato',1,1,1,'Medium',7.00,'ChefCara',25,'Stove','Fall','Topped with feta cheese');