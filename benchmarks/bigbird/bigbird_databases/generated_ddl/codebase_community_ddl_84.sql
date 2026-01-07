-- Scientific experiments metadata
CREATE TABLE scientific_experiments
(
    ExperimentId          INTEGER PRIMARY KEY,
    Title                 TEXT,
    LeadScientistId       INTEGER,
    StartDate             DATETIME,
    EndDate               DATETIME,
    Status                TEXT,
    Budget                NUMERIC,
    LabLocation           TEXT,
    EquipmentList         TEXT,
    SampleCount           INTEGER,
    ObservationNotes      TEXT,
    ResultSummary         TEXT,
    PublicationDOI        TEXT,
    FundingAgency         TEXT,
    ProjectCode           TEXT,
    RiskLevel             TEXT,
    EthicsApprovalDate    DATETIME,
    DataRepoUrl           TEXT,
    ProtocolVersion       TEXT,
    CollaboratorCount     INTEGER
);
INSERT INTO scientific_experiments VALUES (1,'Gene Expression Study',101,'2022-03-01 09:00:00','2022-09-30 17:00:00','Completed',250000,'Lab A','Sequencer;PCR',120,'No anomalies','Significant upregulation','10.1234/abcde',\"NationalScienceFund\",\"GE2022\",'Medium','2022-02-15 00:00:00','http://datarepo.org/exp1','v1.0',5);
INSERT INTO scientific_experiments VALUES (2,'Material Fatigue Test',102,'2023-01-10 08:30:00','2023-04-20 16:45:00','InProgress',150000,'Lab B','TensileTester;Laser',80,'Observing microcracks','Pending','',\"IndustryPartner\",\"MF2023\",'High','2023-01-01 00:00:00','http://datarepo.org/exp2','v2.1',3);
INSERT INTO scientific_experiments VALUES (3,'AI Algorithm Benchmark',103,'2021-07-15 10:00:00','2022-02-28 15:30:00','Completed',300000,'Lab C','GPUCluster;Dataset',0,'All runs successful','State‑of‑the‑art performance','10.5678/xyz',\"TechGrant\",\"AI2021\",'Low','2021-07-01 00:00:00','http://datarepo.org/exp3','v1.2',7);

-- Wildlife observation records
CREATE TABLE wildlife_observations
(
    ObservationId        INTEGER PRIMARY KEY,
    SpeciesName          TEXT,
    ObserverId           INTEGER,
    ObservationDate      DATETIME,
    Latitude             NUMERIC,
    Longitude            NUMERIC,
    HabitatType          TEXT,
    Count                INTEGER,
    Behavior             TEXT,
    WeatherCondition     TEXT,
    Temperature          NUMERIC,
    WindSpeed            NUMERIC,
    Notes                TEXT,
    PhotoUrl             TEXT,
    AudioUrl             TEXT,
    RegionCode           TEXT,
    ConservationStatus   TEXT,
    TrackerDeviceId      INTEGER,
    VerificationStatus   TEXT,
    ReportingAgency      TEXT
);
INSERT INTO wildlife_observations VALUES (1001,'Bald Eagle',201,'2023-05-12 07:45:00',45.1234,-122.5678,'Forest',2,'Soaring','Clear',15.2,5.1,'Adult pair observed','http://photos.org/eagle1.jpg','http://audio.org/eagle1.wav','NW','LeastConcern',301,'Verified','USFWS');
INSERT INTO wildlife_observations VALUES (1002,'Gray Wolf',202,'2023-06-01 19:20:00',46.8765,-123.4321,'Tundra',5,'Hunting','Snow',2.3,12.4,'Pack moving north','http://photos.org/wolf1.jpg','http://audio.org/wolf1.wav','NL','Endangered',302,'Pending','StateDept');
INSERT INTO wildlife_observations VALUES (1003,'Monarch Butterfly',203,'2023-07-15 12:10:00',44.5678,-121.3456,'Meadow',30,'Feeding','Sunny',22.5,3.0,'Migration stopover','http://photos.org/butterfly1.jpg','http://audio.org/butterfly1.wav','SW','LeastConcern',303,'Verified','ConservationNGO');

-- Corporate training session logs
CREATE TABLE corporate_training_sessions
(
    SessionId            INTEGER PRIMARY KEY,
    CourseName           TEXT,
    TrainerId            INTEGER,
    SessionDate          DATETIME,
    DurationMinutes      INTEGER,
    Location             TEXT,
    Department           TEXT,
    EmployeeCount        INTEGER,
    MaterialsProvided    TEXT,
    AssessmentScoreAvg   NUMERIC,
    CertificationEarned  TEXT,
    FeedbackScore        NUMERIC,
    SessionStatus        TEXT,
    Cost                 NUMERIC,
    SponsorCompany       TEXT,
    ExternalProviderId   INTEGER,
    OnlineLink           TEXT,
    Language             TEXT,
    Level                TEXT,
    FollowUpDueDate      DATETIME
);
INSERT INTO corporate_training_sessions VALUES (5001,'Advanced Excel',301,'2023-03-10 09:00:00',180,'Room 201','Finance',20,'Workbook;Slides',88.5,'Excel Pro','4.2','Completed',1200,'FinCorp',0,'','English','Intermediate','2023-04-10 00:00:00');
INSERT INTO corporate_training_sessions VALUES (5002,'Leadership Essentials',302,'2023-04-22 13:30:00',240,'Room 305','HR',15,'Handouts;Videos',91.0,'Leadership Cert','4.8','Completed',1500,'HRGlobal',12,'https://webinar.com/leadership','English','Beginner','2023-05-22 00:00:00');
INSERT INTO corporate_training_sessions VALUES (5003,'Data Privacy',303,'2023-05-05 10:15:00',90,'Room 101','Legal',10,'PDF Guide',85.0,'Privacy Certified','4.0','Scheduled',800,'LegalAssist',0,'','Spanish','Advanced','2023-06-05 00:00:00');

-- Public health case records
CREATE TABLE public_health_records
(
    RecordId             INTEGER PRIMARY KEY,
    PatientId            INTEGER,
    RecordDate           DATETIME,
    DiseaseCode          TEXT,
    SymptomSummary       TEXT,
    Diagnosis            TEXT,
    PrescribedMedication TEXT,
    Dosage               TEXT,
    TreatmentPlan        TEXT,
    PhysicianId          INTEGER,
    FacilityId           INTEGER,
    FollowUpDate         DATETIME,
    Outcome              TEXT,
    LabResultSummary     TEXT,
    VaccinationStatus    TEXT,
    InsuranceProvider    TEXT,
    ContactMethod        TEXT,
    ReportingRegion      TEXT,
    DataSource           TEXT,
    ConfidentialityLevel TEXT
);
INSERT INTO public_health_records VALUES (9001,4001,'2023-02-15 08:30:00','A01','Fever;Cough','Influenza','Oseltamivir','75mg BID','Rest and hydration',501,101,'2023-03-01 00:00:00','Recovered','CBC Normal','UpToDate','HealthInsureCo','Email','RegionX','HospitalEHR','High');
INSERT INTO public_health_records VALUES (9002,4002,'2023-04-10 14:20:00','B20','Joint pain;Swelling','Rheumatoid Arthritis','Methotrexate','10mg weekly','Disease‑modifying therapy',502,102,'2023-10-10 00:00:00','Ongoing','RF Positive','Partial','MediCare','Phone','RegionY','ClinicSystem','Medium');
INSERT INTO public_health_records VALUES (9003,4003,'2023-06-05 11:45:00','C34','Persistent cough;Weight loss','Lung Cancer','Cisplatin','50mg/m2','Chemotherapy cycles',503,103,'2024-01-15 00:00:00','Under Treatment','Biopsy Positive','None','PrivatePlan','Mail','RegionZ','OncologyRegistry','High');

-- Renewable energy assets registry
CREATE TABLE renewable_energy_assets
(
    AssetId               INTEGER PRIMARY KEY,
    AssetName             TEXT,
    AssetType             TEXT,
    CapacityMW            NUMERIC,
    InstallationDate      DATETIME,
    OwnerCompany          TEXT,
    LocationLatitude      NUMERIC,
    LocationLongitude     NUMERIC,
    GridConnectionStatus  TEXT,
    MaintenanceSchedule   TEXT,
    LastInspectionDate    DATETIME,
    ExpectedLifespanYears INTEGER,
    CurrentOutputMW       NUMERIC,
    OperationalStatus     TEXT,
    SubsidyProgram        TEXT,
    InvestmentCost        NUMERIC,
    EnergyYieldYearly     NUMERIC,
    CarbonOffsetTon      NUMERIC,
    RegionCode            TEXT,
    AssetTag              TEXT
);
INSERT INTO renewable_energy_assets VALUES (20001,'Solar Farm Alpha','Solar',50.0,'2020-05-15 00:00:00','SunPower Ltd',35.6789,-120.1234,'Connected','Annual','2022-11-20 00:00:00',30,48.5,'Operating','SolarIncentive','7500000',200000,15000,'R1','SF-ALPHA');
INSERT INTO renewable_energy_assets VALUES (20002,'Wind Park Beta','Wind',120.0,'2018-09-01 00:00:00','WindGen Corp',36.1122,-119.3344,'Connected','Biannual','2023-02-10 00:00:00',25,115.0,'Operating','WindBoost','18000000',500000,40000,'R2','WP-BETA');
INSERT INTO renewable_energy_assets VALUES (20003,'Hydro Plant Gamma','Hydro',80.0,'2015-03-20 00:00:00','AquaEnergy','34.5566,-121.7788','Connected','Quarterly','2023-08-05 00:00:00',40,78.0','Operating','HydroGrant','12000000',300000,25000,'R3','HP-GAMMA');

-- Museum exhibit items catalog
CREATE TABLE museum_exhibit_items
(
    ExhibitId            INTEGER PRIMARY KEY,
    ItemName             TEXT,
    Category             TEXT,
    AcquisitionDate      DATETIME,
    OriginCountry        TEXT,
    ArtistCreator        TEXT,
    Period               TEXT,
    Material             TEXT,
    Dimensions           TEXT,
    CurrentLocation      TEXT,
    ConditionStatus      TEXT,
    PreservationNotes    TEXT,
    DisplayStartDate     DATETIME,
    DisplayEndDate       DATETIME,
    ExhibitCode          TEXT,
    CuratorId            INTEGER,
    InsuranceValue       NUMERIC,
    LoanInstitution      TEXT,
    LoanStartDate        DATETIME,
    LoanEndDate          DATETIME
);
INSERT INTO museum_exhibit_items VALUES (3001,'Ancient Vase','Ceramics','2010-06-01 00:00:00','Greece','Unknown','Classical','Clay','30cm height','Hall A','Good','Handled with gloves','2023-01-10 00:00:00','2023-12-31 00:00:00','EX-VA001',401,50000,'NationalMuseum','2023-01-01 00:00:00','2023-12-31 00:00:00');
INSERT INTO museum_exhibit_items VALUES (3002,'Renaissance Painting','Painting','2015-09-15 00:00:00','Italy','Leonardo da Vinci','Renaissance','Oil on canvas','200cm x 150cm','Gallery 2','Excellent','Climate controlled','2023-03-01 00:00:00','2024-02-28 00:00:00','EX-PA002',402,2000000,'Louvre','2023-03-01 00:00:00','2024-02-28 00:00:00');
INSERT INTO museum_exhibit_items VALUES (3003,'Ancient Coin Set','Numismatics','2018-11-20 00:00:00','China','Unknown','Han Dynasty','Bronze','Diameter 2cm','Vault','Fair','Stored in sealed container','2024-05-01 00:00:00','2025-04-30 00:00:00','EX-CO003',403,15000,'HistoricalSociety','2024-05-01 00:00:00','2025-04-30 00:00:00');

-- Space mission events log
CREATE TABLE space_mission_events
(
    EventId               INTEGER PRIMARY KEY,
    MissionName           TEXT,
    EventType             TEXT,
    EventTimestamp        DATETIME,
    OrbitAltitudeKm       NUMERIC,
    VehicleName           TEXT,
    CrewCount             INTEGER,
    Outcome               TEXT,
    AnomalyDetected       TEXT,
    GroundStation         TEXT,
    DataVolumeGb          NUMERIC,
    TelemetryLink         TEXT,
    StatusReport          TEXT,
    Category              TEXT,
    LaunchDate            DATETIME,
    LandingDate           DATETIME,
    MissionDurationDays   INTEGER,
    FundingAgency         TEXT,
    PrimaryObjective      TEXT,
    SecondaryObjective    TEXT,
    PublicReleaseDate     DATETIME
);
INSERT INTO space_mission_events VALUES (4001,'Apollo XI','Launch','1969-07-16 13:32:00',185.0,'Saturn V',3,'Success','None','Houston','5.2','https://telemetry.nasa.gov/apollo11','All systems nominal','Lunar','1969-07-16 13:32:00','1969-07-24 16:50:00',8,'NASA','Land humans on Moon','Collect lunar samples','1969-07-25 00:00:00');
INSERT INTO space_mission_events VALUES (4002,'Voyager 1','Flyby','1977-03-05 08:00:00',0.0,'Voyager',0,'Success','Minor','DeepSpaceNetwork','0.0','https://voyager.nasa.gov','Jupiter encounter successful','Planetary','1977-09-05 00:00:00','1977-09-05 00:00:00',0,'NASA','Study outer planets','Explore heliosphere','1979-03-01 00:00:00');
INSERT INTO space_mission_events VALUES (4003,'Starlink Deployment','Deployment','2022-11-12 02:30:00',550.0,'Falcon 9',0,'Partial Success','Debris incident','CCSDS','12.5','https://spacex.com/starlink','Satellite array deployed','Communications','2022-11-12 02:30:00',NULL,0,'SpaceX','Provide global broadband','Test new antenna','2022-12-01 00:00:00');

-- Food supply chain transaction records
CREATE TABLE food_supply_chain_transactions
(
    TransactionId        INTEGER PRIMARY KEY,
    ProductName          TEXT,
    BatchNumber          TEXT,
    QuantityKg           NUMERIC,
    SourceFarmId         INTEGER,
    DestinationWarehouseId INTEGER,
    ShipmentDate         DATETIME,
    ArrivalDate          DATETIME,
    TransportMode        TEXT,
    CarrierName          TEXT,
    TemperatureControl   TEXT,
    InspectionStatus     TEXT,
    GMOStatus            TEXT,
    OrganicCertification TEXT,
    PricePerKg           NUMERIC,
    TotalCost            NUMERIC,
    DistributorId        INTEGER,
    RetailerId           INTEGER,
    RegulatoryApprovalDate DATETIME,
    Notes                TEXT
);
INSERT INTO food_supply_chain_transactions VALUES (6001,'Almonds','BCH001',1500.0,101,201,'2023-03-01 06:00:00','2023-03-03 14:20:00','Truck','FreshLogistics','Cold','Passed','Non‑GMO','Certified','3.5','5250','301','401','2022-12-15 00:00:00','Handled with care');
INSERT INTO food_supply_chain_transactions VALUES (6002,'Organic Apples','BCH002',2000.0,102,202,'2023-04-10 08:30:00','2023-04-12 12:45:00','Refrigerated','ColdChainCo','Cold','Passed','Non‑GMO','Certified','2.1','4200','302','402','2023-01-20 00:00:00','No defects observed');
INSERT INTO food_supply_chain_transactions VALUES (6003,'Wheat Flour','BCH003',5000.0,103,203,'2023-05-05 07:15:00','2023-05-07 10:00:00','Rail','RailTrans','Ambient','Passed','GMO','Not Certified','1.0','5000','303','403','2022-11-30 00:00:00','Standard packaging');

-- Legal case document archive
CREATE TABLE legal_case_documents
(
    DocumentId           INTEGER PRIMARY KEY,
    CaseId               INTEGER,
    DocumentType         TEXT,
    FileName             TEXT,
    UploadDate           DATETIME,
    AuthorId             INTEGER,
    ConfidentialityLevel TEXT,
    Summary              TEXT,
    PageCount            INTEGER,
    Language             TEXT,
    SourceSystem         TEXT,
    RelatedEvidenceId    INTEGER,
    ReviewStatus         TEXT,
    ApprovalDate         DATETIME,
    ArchivalLocation     TEXT,
    RetentionPeriodMonths INTEGER,
    VersionNumber        INTEGER,
    DigitalSignatureHash TEXT,
    AccessRestrictions   TEXT,
    Tags                 TEXT
);
INSERT INTO legal_case_documents VALUES (7001,9001,'Complaint','complaint_9001.pdf','2023-02-16 09:30:00',801,'High','Initial filing',12,'English','CourtPortal',0,'Pending','2023-02-20 00:00:00','Vault A','84',1,'AB12CD34EF56','AttorneyOnly','Civil;Tort');
INSERT INTO legal_case_documents VALUES (7002,9002,'Evidence','evidence_photo_9002.jpg','2023-04-12 14:05:00',802,'Medium','Photographic evidence of injury',1,'English','EvidenceDB',0,'Approved','2023-04-15 00:00:00','Vault B','60',1,'CD34EF56AB12','Restricted','Medical;Injury');
INSERT INTO legal_case_documents VALUES (7003,9003,'Judgment','judgment_9003.docx','2023-06-06 10:20:00',803,'High','Final court decision',25,'English','CourtPortal',0,'Final','2023-06-10 00:00:00','Vault C','120',1,'EF56AB12CD34','JudgeOnly','Criminal;Sentencing');

-- Automotive fleet maintenance records
CREATE TABLE automotive_fleet_maintenance
(
    MaintenanceId         INTEGER PRIMARY KEY,
    VehicleId             INTEGER,
    ServiceDate           DATETIME,
    OdometerKm            INTEGER,
    ServiceType           TEXT,
    ServiceCenter         TEXT,
    TechnicianId          INTEGER,
    PartsReplaced         TEXT,
    LaborHours            NUMERIC,
    Cost                  NUMERIC,
    WarrantyCoverage      TEXT,
    NextServiceDueKm      INTEGER,
    NextServiceDueDate    DATETIME,
    MileageSinceLastService INTEGER,
    FuelEfficiencyAfterService NUMERIC,
    Notes                 TEXT,
    ServiceRating         INTEGER,
    FollowUpRequired      TEXT,
    ServiceContractId     INTEGER,
    EmissionsTestResult  TEXT
);
INSERT INTO automotive_fleet_maintenance VALUES (8001,501,'2023-01-15 08:00:00',45200,'Oil Change','AutoCenter A',601,'Oil Filter;Engine Oil',1.5,180,'Yes',50000,'2023-07-15 00:00:00',1000,15.2,'All good','5','No',701,'Pass');
INSERT INTO automotive_fleet_maintenance VALUES (8002,502,'2023-03-20 09:30:00',87300,'Brake Replacement','Garage B',602,'Brake Pads;Rotors',3.0,750,'No',95000,'2023-09-20 00:00:00',5000,13.8,'Brake pads worn','4','Yes',702,'Pass');
INSERT INTO automotive_fleet_maintenance VALUES (8003,503,'2023-05-05 10:45:00',120500,'Transmission Service','Service Center C',603,'Transmission Fluid',2.5,650,'Yes',130000,'2024-05-05 00:00:00',10000,14.5,'No leaks detected','5','No',703,'Pass');