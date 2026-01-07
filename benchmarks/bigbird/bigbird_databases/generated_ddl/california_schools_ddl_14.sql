-- District demographic statistics
CREATE TABLE district_demographics
(
    DistrictID                     TEXT    NOT NULL PRIMARY KEY,
    Year                           INTEGER NOT NULL,
    TotalPopulation                INTEGER,
    MedianAge                      REAL,
    MalePercent                    REAL,
    FemalePercent                  REAL,
    WhitePercent                   REAL,
    BlackPercent                   REAL,
    HispanicPercent                REAL,
    AsianPercent                   REAL,
    NativeAmericanPercent          REAL,
    TwoOrMorePercent               REAL,
    PovertyRate                    REAL,
    UnemploymentRate               REAL,
    HighSchoolGradRate             REAL,
    BachelorDegreeRate             REAL,
    MedianHouseholdIncome          REAL,
    HousingUnits                   INTEGER,
    OwnerOccupiedPercent           REAL,
    RentalOccupiedPercent          REAL,
    PopulationDensity              REAL,
    UrbanRuralClassification       TEXT
);

INSERT INTO district_demographics VALUES
('D001',2022,150000,35.2,49.1,50.9,55.0,10.0,20.0,12.0,0.5,2.5,12.0,4.5,88.0,32.0,62000,45000,65.0,35.0,1200.5,'Urban');

INSERT INTO district_demographics VALUES
('D002',2022,85000,38.7,48.5,51.5,40.0,15.0,30.0,10.0,1.0,3.0,18.0,6.2,80.0,25.0,54000,28000,58.0,42.0,850.3,'Rural');

INSERT INTO district_demographics VALUES
('D003',2022,200000,36.5,49.8,50.2,60.0,8.0,22.0,9.0,0.8,2.2,10.5,3.8,92.0,35.0,68000,60000,70.0,30.0,1400.8,'Suburban');

-- State funding allocation records
CREATE TABLE state_funding_allocations
(
    AllocationID        TEXT    NOT NULL PRIMARY KEY,
    FiscalYear          INTEGER NOT NULL,
    StateCode           TEXT,
    ProgramName         TEXT,
    FundingCategory     TEXT,
    AmountAllocated     REAL,
    AmountDisbursed     REAL,
    FundingSource       TEXT,
    EligibilityCriteria TEXT,
    ApplicationDeadline DATE,
    ReportingFrequency  TEXT,
    MatchingRequirement REAL,
    GrantPeriodYears    INTEGER,
    AdminContactName    TEXT,
    AdminContactEmail   TEXT,
    AdminContactPhone   TEXT,
    MaxAwardPerSchool   REAL,
    MinimumAwardPerSchool REAL,
    FundingStatus       TEXT,
    ReviewCommittee     TEXT,
    OversightAgency     TEXT,
    Notes               TEXT
);

INSERT INTO state_funding_allocations VALUES
('A1001',2023,'CA','STEM Innovation','Grant',2500000,1500000,'State Treasury','K12 public schools','2023-05-15','Annual',0.10,3,'Jane Doe','jdoe@stateedu.org','5551234567',500000,50000,'Active','STEM Committee','Department of Education','First wave of STEM grants');

INSERT INTO state_funding_allocations VALUES
('A1002',2023,'TX','Literacy Boost','Competitive Grant',1800000,1800000,'State Treasury','Public schools with below 60% literacy','2023-06-01','Semiannual',0.15,2,'John Smith','jsmith@stateedu.org','5559876543',300000,25000,'Closed','Literacy Board','Department of Education','All funds fully disbursed');

INSERT INTO state_funding_allocations VALUES
('A1003',2023,'NY','School Climate Initiative','Award',1200000,800000,'State Treasury','Schools with climate action plans','2023-04-20','Quarterly',0.05,4,'Emily White','ewhite@stateedu.org','5555551212',250000,20000,'Pending','Climate Council','Department of Education','Awaiting final review');

-- Regional air quality monitoring stations
CREATE TABLE regional_air_quality_stations
(
    StationID               TEXT    NOT NULL PRIMARY KEY,
    StationName             TEXT,
    CountyCode              TEXT,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters         REAL,
    InstallationDate        DATE,
    SensorTypePM25          TEXT,
    SensorTypeOzone         TEXT,
    SensorTypeNO2           TEXT,
    DataTransmissionMethod  TEXT,
    MaintenanceCycleMonths  INTEGER,
    LastCalibrationDate     DATE,
    CalibrationAgency       TEXT,
    DataQualityFlag         TEXT,
    AvgPM25Annual           REAL,
    AvgOzoneAnnual          REAL,
    AvgNO2Annual            REAL,
    HighestPM25Recorded     REAL,
    HighestOzoneRecorded    REAL,
    HighestNO2Recorded      REAL,
    OperationalStatus       TEXT
);

INSERT INTO regional_air_quality_stations VALUES
('STN001','North Ridge','001',34.0522,-118.2437,120.5,'2021-03-10','Laser','UV','Electrochemical','Cellular','6','2023-02-15','EPA','Good',12.5,0.045,0.030,55.2,0.075,0.050,'Active');

INSERT INTO regional_air_quality_stations VALUES
('STN002','River Valley','015',36.1699,-115.1398,250.0,'2020-11-22','Optical','Chemiluminescent','Electrochemical','Satellite','12','2022-12-01','State Air Agency','Moderate',22.1,0.060,0.040,78.9,0.092,0.068,'Active');

INSERT INTO regional_air_quality_stations VALUES
('STN003','Hilltop','023',40.7128,-74.0060,15.0,'2022-07-05','Beta','UV','Electrochemical','WiFi','4','2023-01-10','City Dept','Good',9.8,0.038,0.025,48.5,0.070,0.045,'Active');

-- School energy renovation projects
CREATE TABLE school_energy_projects
(
    ProjectID               TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    ProjectName             TEXT,
    ProjectType             TEXT,
    FundingSource           TEXT,
    EstimatedCost           REAL,
    ApprovedBudget          REAL,
    StartDate               DATE,
    CompletionDate          DATE,
    ContractorName          TEXT,
    ContractorLicense       TEXT,
    EnergySavingsKWhAnnual  REAL,
    CO2ReductionTonsAnnual  REAL,
    IncentiveAmount         REAL,
    Status                  TEXT,
    ProjectManager          TEXT,
    ManagerContactEmail     TEXT,
    ManagerContactPhone     TEXT,
    RetrofitDetails         TEXT,
    MeteringInstalled       TEXT,
    WarrantyEndDate         DATE,
    PostProjectEvaluation   TEXT
);

INSERT INTO school_energy_projects VALUES
('PRJ001','12345678','LED Lighting Retrofit','Lighting','State Grant',150000,130000,'2022-09-01','2023-02-15','BrightFuture LLC','LIC12345',250000,45.0,20000,'Completed','Laura Green','lgreen@school.org','5551112222','All interior fixtures replaced','Yes','2026-02-15','Positive');

INSERT INTO school_energy_projects VALUES
('PRJ002','87654321','Solar Panel Installation','Renewable','Federal Incentive',500000,480000,'2023-01-10','2024-06-30','SunPower Inc','LIC67890',1200000,300.0,80000,'InProgress','Mark Brown','mbrown@school.org','5553334444','300kW rooftop array','Yes','2029-06-30','Pending');

INSERT INTO school_energy_projects VALUES
('PRJ003','11223344','HVAC Upgrade','Mechanical','District Bond','750000',720000,'2022-05-20','2023-12-01','CoolAir Systems','LIC54321',350000,70.0,50000,'Completed','Susan Lee','slee@school.org','5555557777','High efficiency chillers installed','Yes','2028-12-01','Positive');

-- Community health metrics
CREATE TABLE community_health_metrics
(
    MetricID                TEXT    NOT NULL PRIMARY KEY,
    CountyCode              TEXT,
    Year                    INTEGER,
    Population              INTEGER,
    AvgBMI                  REAL,
    ObesityRatePercent      REAL,
    DiabetesPrevalence      REAL,
    HypertensionPrevalence  REAL,
    SmokingRatePercent      REAL,
    PhysicalActivityRate    REAL,
    AccessToCarePercent     REAL,
    MentalHealthProviderRatio REAL,
    SubstanceAbuseRate      REAL,
    VaccinationCoveragePercent REAL,
    LifeExpectancyYears     REAL,
    InfantMortalityRate     REAL,
    HospitalBedCount        INTEGER,
    PrimaryCarePhysicians   INTEGER,
    DentalCareAccessPercent REAL,
    NutritionProgramParticipation REAL,
    AirQualityIndexAnnual   REAL,
    WaterQualityCompliance  TEXT
);

INSERT INTO community_health_metrics VALUES
('HM001','001',2022,250000,27.5,28.0,9.5,15.2,12.0,55.0,85.0,0.8,4.5,92.0,78.4,5.2,45,30,78.0,30.0,45.2,'Compliant');

INSERT INTO community_health_metrics VALUES
('HM002','015',2022,180000,29.1,31.0,11.0,17.5,14.5,48.0,78.0,1.0,5.2,88.0,75.1,6.0,30,20,70.0,25.0,40.8,'Compliant');

INSERT INTO community_health_metrics VALUES
('HM003','023',2022,320000,26.8,25.5,8.2,13.8,10.0,62.0,90.0,0.6,3.9,95.0,80.5,4.8,55,40,82.0,35.0,48.5,'Compliant');

-- School bus maintenance logs
CREATE TABLE school_bus_maintenance_log
(
    LogID                   TEXT    NOT NULL PRIMARY KEY,
    BusID                   TEXT,
    ServiceDate             DATE,
    OdometerMiles           INTEGER,
    ServiceType             TEXT,
    ServiceProvider         TEXT,
    CostUSD                 REAL,
    PartsReplaced           TEXT,
    LaborHours              REAL,
    InspectionPassed        TEXT,
    Comments                TEXT,
    NextServiceDueMiles     INTEGER,
    NextServiceDueDate      DATE,
    FuelEfficiencyMPG       REAL,
    EmissionsTestResult    TEXT,
    TireCondition           TEXT,
    BrakeCondition          TEXT,
    TransmissionStatus      TEXT,
    EngineHealthScore       REAL,
    GPSUnitInstalled        TEXT,
    DriverAssigned          TEXT,
    SupervisorApproved      TEXT
);

INSERT INTO school_bus_maintenance_log VALUES
('BL001','BUS1001','2023-03-12',45230,'Engine Tune-up','AutoCare Plus',1200.00,'Spark plugs,Air filter',5.0,'Yes','Routine check','50000','2023-09-12',9.5,'Pass','Good','Good','Good',85.0,'Yes','John Doe','Yes');

INSERT INTO school_bus_maintenance_log VALUES
('BL002','BUS1002','2023-04-05',37890,'Brake Replacement','BrakeMasters',800.00,'Brake pads,Rotors',4.0,'Yes','Replaced rear brakes','42990','2023-10-05',8.8,'Pass','Fair','New','Fair',78.0,'Yes','Emily Clark','Yes');

INSERT INTO school_bus_maintenance_log VALUES
('BL003','BUS1003','2023-02-20',52010,'Tire Rotation','TireHub',150.00,'All four tires',2.0,'Yes','Rotated tires','56010','2023-08-20',9.0,'Pass','Good','Good','Good',82.0,'Yes','Michael Lee','Yes');

-- Technology software licenses inventory
CREATE TABLE technology_software_licenses
(
    LicenseID               TEXT    NOT NULL PRIMARY KEY,
    SoftwareName            TEXT,
    Vendor                  TEXT,
    LicenseType             TEXT,
    Version                 TEXT,
    SeatsPurchased          INTEGER,
    SeatsInUse              INTEGER,
    PurchaseDate            DATE,
    ExpirationDate          DATE,
    CostPerSeatUSD          REAL,
    TotalCostUSD            REAL,
    MaintenanceAgreement    TEXT,
    SupportLevel            TEXT,
    LicenseKey              TEXT,
    AssignedDepartment      TEXT,
    PrimaryContactName      TEXT,
    PrimaryContactEmail     TEXT,
    PrimaryContactPhone     TEXT,
    RenewalNotificationSent TEXT,
    ComplianceStatus        TEXT,
    LastAuditDate           DATE,
    Notes                   TEXT
);

INSERT INTO technology_software_licenses VALUES
('LIC001','EduSuite','EduTech Corp','Subscription','5.3',200,185,'2022-01-15','2024-01-14',250.00,50000.00,'Yes','Premium','ABCDEF123456','Instruction','Sarah Miller','smiller@school.org','5551122334','Yes','Compliant','2023-12-01','Renewal pending');

INSERT INTO technology_software_licenses VALUES
('LIC002','DataVizPro','Analytics LLC','Perpetual','2.1',50,45,'2020-06-30','2099-12-31',500.00,25000.00','No','Standard','ZYXWV987654','Administration','Tom Harris','tharris@school.org','5552233445','No','Compliant','2023-11-15','No upcoming changes');

INSERT INTO technology_software_licenses VALUES
('LIC003','SecureMail','SecureCom','Subscription','3.8',150,140,'2023-03-01','2024-02-28',120.00,18000.00,'Yes','Standard','LMNOPQ789012','Support','Karen Diaz','kdiaz@school.org','5553344556','Yes','Compliant','2023-10-20','Auto‑renewal set');

-- Library event series
CREATE TABLE library_event_series
(
    SeriesID                TEXT    NOT NULL PRIMARY KEY,
    LibraryID               TEXT,
    SeriesName              TEXT,
    TargetAudience          TEXT,
    Frequency               TEXT,
    StartDate               DATE,
    EndDate                 DATE,
    TotalEventsPlanned      INTEGER,
    CoordinatorName         TEXT,
    CoordinatorEmail        TEXT,
    CoordinatorPhone        TEXT,
    PrimaryLocation         TEXT,
    RoomNumber              TEXT,
    Capacity                INTEGER,
    MaterialsProvided       TEXT,
    AgeRangeStart           INTEGER,
    AgeRangeEnd             INTEGER,
    RegistrationRequired   TEXT,
    CostPerParticipantUSD   REAL,
    OnlineOptionAvailable  TEXT,
    RecordedSessions        TEXT,
    EvaluationMethod        TEXT,
    Notes                   TEXT
);

INSERT INTO library_event_series VALUES
('EVS001','LIB001','Storytime Adventures','Children','Weekly','2023-09-01','2024-06-30',40,'Anna Bell','abell@library.org','5554455667','Main Hall','A1',30,'Books,Props',3,7,'Yes',0.00,'Yes','Yes','Survey','Seasonal story program');

INSERT INTO library_event_series VALUES
('EVS002','LIB002','Tech Talk Thursdays','Teens','Monthly','2023-10-05','2024-09-05',12,'Brian Wong','bwang@library.org','5555566778','Conference Room','B2',25,'Laptops,Software demos',13,18,'Yes',5.00,'Yes','No','Feedback Form','Focus on coding basics');

INSERT INTO library_event_series VALUES
('EVS003','LIB001','Author Meet & Greet','Adults','Quarterly','2023-11-15','2024-11-15',4,'Catherine Lee','clee@library.org','5556677889','Reading Room','C3',50,'Signed copies',19,99,'Yes',10.00','No','Yes','Comment Card','Local authors presentations');

-- Student mental health resources
CREATE TABLE student_mental_health_resources
(
    ResourceID              TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    ResourceType            TEXT,
    ProviderName            TEXT,
    ServiceDescription      TEXT,
    AvailabilityDays        TEXT,
    AvailabilityHours       TEXT,
    ContactPhone            TEXT,
    ContactEmail            TEXT,
    CostToStudentUSD        REAL,
    ReferralRequired        TEXT,
    ConfidentialityLevel    TEXT,
    CapacityPerMonth        INTEGER,
    CurrentUtilizationPct   REAL,
    WaitlistLength          INTEGER,
    OnlineAccessAvailable   TEXT,
    TelehealthOption        TEXT,
    LanguageSupport         TEXT,
    AssessmentToolUsed      TEXT,
    FollowUpFrequencyWeeks  INTEGER,
    FundingSource           TEXT,
    ProgramCoordinator      TEXT,
    CoordinatorEmail        TEXT,
    CoordinatorPhone        TEXT,
    Notes                   TEXT
);

INSERT INTO student_mental_health_resources VALUES
('MH001','12345678','Counseling','WellMind Center','Individual and group counseling','Mon-Fri','09:00-17:00','5557788990','mh1@wellmind.org',0.00,'Yes','High',200,45.0,10,'Yes','Yes','English,Spanish','PHQ-9',4,'District Grant','Laura Green','lgreen@school.org','5551112222','Integrated mental health program');

INSERT INTO student_mental_health_resources VALUES
('MH002','87654321','Peer Support','Student Peer Network','Peer-led support meetings','Tue,Thu','13:00-15:00','5558899001','mh2@peernetwork.org',0.00,'No','Medium',150,30.0,5,'Yes','No','English','Coping Skills Survey',2,'School Funding','Mark Brown','mbrown@school.org','5553334444','Peer mentorship initiative');

INSERT INTO student_mental_health_resources VALUES
('MH003','11223344','Crisis Hotline','24/7 Support Line','Immediate crisis assistance','24/7','N/A','5559900112','mh3@crisisline.org',0.00,'No','High',0,0.0,0,'Yes','Yes','English,French','Suicide Risk Scale',1,'State Funding','Susan Lee','slee@school.org','5555557777','Round‑the‑clock crisis response');

-- Environmental compliance audit records
CREATE TABLE environmental_compliance_audits
(
    AuditID                 TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    AuditDate               DATE,
    AuditorName             TEXT,
    AuditorOrganization     TEXT,
    ScopeOfAudit            TEXT,
    FindingsSummary         TEXT,
    NonComplianceCount      INTEGER,
    MajorIssuesCount        INTEGER,
    MinorIssuesCount        INTEGER,
    RecommendedActions      TEXT,
    ActionPlanDueDate       DATE,
    FollowUpDate            DATE,
    Status                  TEXT,
    ComplianceScorePercent  REAL,
    DocumentationURL        TEXT,
    WasteManagementScore    REAL,
    EnergyEfficiencyScore   REAL,
    WaterConservationScore  REAL,
    AirQualityScore         REAL,
    HazardousMaterialsScore REAL,
    Notes                   TEXT
);

INSERT INTO environmental_compliance_audits VALUES
('AUD001','12345678','2023-06-15','Karen White','EcoAudit Inc','Facilities and Operations','Overall good compliance','2','1','1','Implement recycling program, upgrade HVAC filters','2023-12-15','2024-01-20','Open',88.5,'http://auditfiles.org/aud001','85.0','90.0','80.0','78.0','70.0','Initial audit');

INSERT INTO environmental_compliance_audits VALUES
('AUD002','87654321','2023-07-20','Luis Martinez','GreenCheck LLC','Energy and Water','Minor water leak noted','0','0','2','Repair leak, install low‑flow fixtures','2024-03-01','2024-04-10','Open',92.0,'http://auditfiles.org/aud002','88.0','95.0','85.0','82.0','60.0','Follow‑up pending');

INSERT INTO environmental_compliance_audits VALUES
('AUD003','11223344','2023-05-05','Emily Davis','Sustainability Audits Co','Air Quality and Waste','Exceeds standards','0','0','0','Maintain current practices','2023-11-01','2024-02-15','Closed',97.5,'http://auditfiles.org/aud003','92.0','96.0','89.0','95.0','80.0','No issues found');

-- District transportation fleet maintenance records
CREATE TABLE district_transportation_fleet_maintenance
(
    MaintenanceID           TEXT    NOT NULL PRIMARY KEY,
    VehicleID               TEXT,
    ServiceDate             DATE,
    OdometerMiles           INTEGER,
    ServiceType             TEXT,
    ServiceProvider         TEXT,
    CostUSD                 REAL,
    PartsReplaced           TEXT,
    LaborHours              REAL,
    InspectionResult        TEXT,
    NextServiceDueMiles     INTEGER,
    NextServiceDueDate      DATE,
    VehicleType             TEXT,
    FuelType                TEXT,
    EngineHours             REAL,
    EmissionTestPassed      TEXT,
    GPSInstalled            TEXT,
    AssignedRoute           TEXT,
    DriverID                TEXT,
    MaintenanceNotes        TEXT,
    WarrantyStatus          TEXT,
    SupervisorApproval      TEXT
);

INSERT INTO district_transportation_fleet_maintenance VALUES
('MF001','VAN001','2023-04-10',45200,'Engine Oil Change','AutoCare',200.00,'Oil filter',1.5,'Pass',50200,'2023-10-10','Van','Diesel',350.0,'Yes','Yes','Route12','DR123','Routine oil change','Under Warranty','Yes');

INSERT INTO district_transportation_fleet_maintenance VALUES
('MF002','BUS045','2023-03-22',37800,'Brake Pad Replacement','BrakeMasters',750.00,'Front brake pads',3.0,'Pass',42800,'2023-09-22','Bus','Diesel',600.0,'Yes','Yes','Route07','DR045','Replaced front pads','Under Warranty','Yes');

INSERT INTO district_transportation_fleet_maintenance VALUES
('MF003','TRK009','2023-05-05',62000,'Tire Rotation','TireHub',120.00,'All tires',2.0,'Pass',67000,'2023-11-05','Truck','Gasoline',450.0,'Yes','Yes','Route22','DR209','Rotated tires','Out of Warranty','Yes');

-- School parking permit records
CREATE TABLE school_parking_permit_records
(
    PermitID                TEXT    NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    PermitNumber            TEXT,
    PermitHolderName        TEXT,
    VehicleMakeModel        TEXT,
    LicensePlate            TEXT,
    PermitStartDate         DATE,
    PermitEndDate           DATE,
    PermitType              TEXT,
    IssuedBy                TEXT,
    IssuedByContact         TEXT,
    CostUSD                 REAL,
    PaymentStatus           TEXT,
    RenewalNoticeSent       TEXT,
    ParkingZone             TEXT,
    AccessHours             TEXT,
    AssignedSpotNumber      TEXT,
    VehicleColor            TEXT,
    DisabilityPermit        TEXT,
    SecurityClearanceLevel  TEXT,
    Notes                   TEXT,
    LastUpdated             DATE
);

INSERT INTO school_parking_permit_records VALUES
('PP001','12345678','P-1001','John Doe','Toyota Camry','ABC1234','2023-08-01','2024-07-31','Staff','Admin Office','admin@school.org',150.00,'Paid','Yes','Zone A','08:00-18:00','A12','Blue','No','Level 2','N/A','2023-07-15');

INSERT INTO school_parking_permit_records VALUES
('PP002','87654321','P-2002','Jane Smith','Honda Civic','XYZ5678','2023-09-15','2024-09-14','Faculty','Facilities','facilities@school.org',120.00,'Pending','No','Zone B','07:00-19:00','B05','Red','Yes','Level 3','Requires wheelchair access','2023-08-20');

INSERT INTO school_parking_permit_records VALUES
('PP003','11223344','P-3003','Mike Johnson','Ford F-150','LMN9012','2023-07-01','2024-06-30','Visitor','Security','security@school.org',0.00,'Free','Yes','Visitor Lot','All Day','V01','Black','No','Level 1','Short‑term visitor permit','2023-06-25');

-- District technology roadmap entries
CREATE TABLE district_technology_roadmap
(
    RoadmapID               TEXT    NOT NULL PRIMARY KEY,
    InitiativeName          TEXT,
    Description             TEXT,
    StartFiscalYear         INTEGER,
    EndFiscalYear           INTEGER,
    PriorityLevel           TEXT,
    EstimatedCostUSD        REAL,
    FundingSource           TEXT,
    LeadDepartment          TEXT,
    ProjectLeadName         TEXT,
    ProjectLeadEmail        TEXT,
    StakeholderGroup        TEXT,
    CurrentStatus           TEXT,
    Milestone1Date          DATE,
    Milestone1Description   TEXT,
    Milestone2Date          DATE,
    Milestone2Description   TEXT,
    RiskAssessment         TEXT,
    Dependencies            TEXT,
    SuccessMetrics          TEXT,
    TechnologyVendor        TEXT,
    ImplementationPartner   TEXT,
    ReviewFrequency         TEXT,
    LastUpdated             DATE,
    Notes                   TEXT
);

INSERT INTO district_technology_roadmap VALUES
('TR001','1:1 Device Refresh','Provide laptops to all middle school students','2023','2025','High',2500000,'Bond Issue','IT','Laura Green','lgreen@district.org','Teachers,Students','Planning','2023-09-01','Finalize specifications','2024-03-01','Begin procurement','Medium','Device procurement','Student achievement gains','TechSupply Co','Local Integrator','Quarterly','2024-01-15','Pilot in two schools first');

INSERT INTO district_technology_roadmap VALUES
('TR002','Cloud Migration','Move student data to cloud platform','2024','2026','Medium',1800000,'State Grant','Data Services','Mark Brown','mbrown@district.org','Administration','Approved','2024-02-15','Select vendor','2024-10-01','Migrate pilot district','Low','Legacy systems','Reduced downtime','CloudNova','Consulting Partners','Semi-Annual','2025-06-30','Phase 2 expansion pending');

INSERT INTO district_technology_roadmap VALUES
('TR003','Digital Assessment Suite','Implement adaptive testing platform','2023','2024','High',950000,'District Budget','Assessment','Susan Lee','slee@district.org','Students,Teachers','In Progress','2023-05-01','Vendor contract signed','2023-11-01','System integration','High','Curriculum alignment','Improved test reliability','AssessTech','EduIntegrators','Monthly','2024-02-20','Full rollout scheduled for spring 2024');