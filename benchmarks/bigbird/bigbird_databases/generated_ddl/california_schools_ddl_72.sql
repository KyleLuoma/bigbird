-- District Infrastructure Projects
CREATE TABLE district_infrastructure_projects
(
    ProjectID                     TEXT NOT NULL PRIMARY KEY,
    DistrictCode                  INTEGER,
    ProjectName                   TEXT,
    ProjectType                   TEXT,
    StartDate                     DATE,
    EndDate                       DATE,
    EstimatedCost                 REAL,
    FundingSource                 TEXT,
    Status                        TEXT,
    LeadAgency                    TEXT,
    Contractor                    TEXT,
    GIS_Latitude                  REAL,
    GIS_Longitude                 REAL,
    EnvironmentalImpactScore      REAL,
    WorkforceCount                INTEGER,
    PermitsRequired               INTEGER,
    CommunityEngagementHours      REAL,
    SustainabilityRating          INTEGER,
    Phase                         TEXT,
    Description                   TEXT
);

INSERT INTO district_infrastructure_projects VALUES ('P001','12','Northbridge Aqueduct','Water','2023-01-15','2025-06-30',2500000.00,'State Grant','InProgress','Dept of Public Works','AquaBuild Inc',34.0522,-118.2437,4.5,150,3,120.5,8,'Construction','Major water conveyance project');
INSERT INTO district_infrastructure_projects VALUES ('P002','15','Eastside Solar Farm','Energy','2022-04-01','2024-12-15',1800000.00,'Green Bond','Completed','Office of Sustainability','SolarTech LLC',36.1699,-115.1398,2.1,80,2,45.0,9,'Operational','500kW solar installation');
INSERT INTO district_infrastructure_projects VALUES ('P003','09','Downtown Revitalization','Urban','2024-03-10','2027-11-20',7500000.00,'Municipal Bonds','Planned','City Planning Dept','ReviveCo',40.7128,-74.0060,5.0,300,5,200.0,7,'Planning','Mixed‑use redevelopment of downtown core');

-- Community Health Clinic Statistics
CREATE TABLE community_health_clinic_stats
(
    ClinicID                     TEXT NOT NULL PRIMARY KEY,
    CountyCode                   INTEGER,
    ClinicName                   TEXT,
    FacilityType                 TEXT,
    OpeningDate                  DATE,
    ClosingDate                  DATE,
    TotalVisitsAnnual            INTEGER,
    AvgWaitTimeMinutes           REAL,
    PrimaryCarePhysicians        INTEGER,
    Pediatricians                INTEGER,
    MentalHealthCounselors       INTEGER,
    DentalProviders              INTEGER,
    LabServicesAvailable         INTEGER,
    PharmacyOnSite               INTEGER,
    LanguagesSupported           TEXT,
    EMRSystem                    TEXT,
    FundingSource                TEXT,
    AnnualOperatingBudget        REAL,
    CommunityPartnerCount        INTEGER,
    ServiceAreaSquareMiles       REAL,
    TelehealthVisitPercent       REAL,
    OutreachEventsAnnual         INTEGER,
    PatientSatisfactionScore     REAL,
    AccreditationStatus          TEXT,
    ContactPhone                 TEXT
);

INSERT INTO community_health_clinic_stats VALUES ('C100','001','River Valley Health Center','PrimaryCare','2010-05-01',NULL,12400,22.5,12,3,4,2,1,1,'English Spanish','Epic','County Grant',850000.00,5,25.3,30.0,12,4.6,'Accredited','555-1234');
INSERT INTO community_health_clinic_stats VALUES ('C101','003','Mountain View Clinic','UrgentCare','2015-09-15',NULL,8600,15.0,8,2,3,1,1,0,'English','Cerner','Private Pay',620000.00,2,18.7,22.5,8,4.2,'Accredited','555-5678');
INSERT INTO community_health_clinic_stats VALUES ('C102','005','Coastal Community Health','Community','2008-02-20',NULL,15200,18.0,15,5,6,3,1,1,'English Mandarin','Allscripts','Federal Grant',1120000.00,9,34.1,35.0,20,4.8,'Accredited','555-9012');

-- School Artistic Exhibition Logs
CREATE TABLE school_artistic_exhibition_logs
(
    ExhibitionID               TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode              TEXT,
    ExhibitionTitle            TEXT,
    ExhibitionType             TEXT,
    StartDate                  DATE,
    EndDate                    DATE,
    CuratorName                TEXT,
    TotalArtists               INTEGER,
    StudentArtistCount         INTEGER,
    FacultyArtistCount         INTEGER,
    ExternalArtistCount        INTEGER,
    TotalArtworks              INTEGER,
    PaintingsCount             INTEGER,
    SculpturesCount            INTEGER,
    DigitalMediaCount          INTEGER,
    InstallationsCount         INTEGER,
    VenueLocation              TEXT,
    EstimatedAttendance        INTEGER,
    ActualAttendance           INTEGER,
    SponsorsCount              INTEGER,
    FundingAmount              REAL,
    MediaCoverageCount         INTEGER,
    SocialMediaImpressions     REAL,
    AccessibilityFeatures     TEXT,
    SafetyInspectionPassed    INTEGER,
    Comments                   TEXT
);

INSERT INTO school_artistic_exhibition_logs VALUES ('E001','CDS001','Colors of Community','Gallery','2023-03-10','2023-04-15','Laura Smith',25,18,4,3,120,80,15,20,5,'Main Hall',300,280,2,15000.00,5,12000.5,'Wheelchair Ramp','1','Successful showcase');
INSERT INTO school_artistic_exhibition_logs VALUES ('E002','CDS045','Digital Dreams','Multimedia','2024-01-05','2024-01-20','Mark Lee',18,12,3,3,90,0,0,85,5,'Tech Lab',200,190,1,8000.00,3,8500.3,'Screen Readers','1','High student engagement');
INSERT INTO school_artistic_exhibition_logs VALUES ('E003','CDS078','Sculpture Garden','Outdoor','2022-05-01','2022-05-30','Anita Patel',30,20,6,4,60,0,60,0,60,'School Courtyard',250,240,3,12000.00,4,9500.7,'Accessible Paths','1','Positive community feedback');

-- Technology Vendor Performance
CREATE TABLE technology_vendor_performance
(
    VendorID                TEXT NOT NULL PRIMARY KEY,
    VendorName              TEXT,
    ContractStartDate       DATE,
    ContractEndDate         DATE,
    ServicesProvided        TEXT,
    TotalContracts          INTEGER,
    AvgResponseTimeHours    REAL,
    SLACompliancePercent    REAL,
    AnnualSpendUSD          REAL,
    SupportTicketsYearly    INTEGER,
    CriticalIncidents       INTEGER,
    ResolutionRatePercent   REAL,
    TechSupportStaffCount   INTEGER,
    TrainingSessionsOffered INTEGER,
    CertificationLevel      TEXT,
    DataSecurityRating      INTEGER,
    CustomerSatisfactionScore REAL,
    ContractRenewalLikelihood INTEGER,
    LastAuditDate           DATE,
    AuditScore              REAL,
    Notes                   TEXT
);

INSERT INTO technology_vendor_performance VALUES ('V001','TechNova Solutions','2021-07-01','2024-06-30','Network Infrastructure',5,2.5,96.0,450000.00,320,2,98.5,45,12,'Gold',9,4.7,85,'2023-11-15',92.3,'Strong performance with minor outages');
INSERT INTO technology_vendor_performance VALUES ('V002','EduSoft Systems','2022-01-15','2025-01-14','Learning Management Platform',3,1.8,99.2,300000.00,210,0,100.0,30,20,'Platinum',8,4.9,92,'2024-02-10',95.0,'Exceeds SLA expectations');
INSERT INTO technology_vendor_performance VALUES ('V003','SecureData Inc','2020-03-01','2023-02-28','Data Backup Services',4,3.0,93.5,200000.00,150,5,94.0,25,8,'Silver',7,4.5,70,'2022-12-01',88.7,'Improving response times');

-- Environmental Sensor Network
CREATE TABLE environmental_sensor_network
(
    SensorID                TEXT NOT NULL PRIMARY KEY,
    SiteName                TEXT,
    SensorType              TEXT,
    InstallationDate        DATE,
    Latitude                REAL,
    Longitude               REAL,
    ElevationMeters         REAL,
    MeasurementUnit         TEXT,
    CalibrationDate         DATE,
    FirmwareVersion         TEXT,
    BatteryLevelPercent     REAL,
    SignalStrengthdBm       REAL,
    DataTransmissionIntervalMinutes REAL,
    LastDataTimestamp       DATE,
    CurrentReading          REAL,
    ReadingStatus           TEXT,
    MaintenanceDueDate      DATE,
    OwnerDepartment         TEXT,
    DataQualityScore        REAL,
    AlertsGeneratedCount    INTEGER,
    IntegrationPlatform     TEXT,
    Comments                TEXT
);

INSERT INTO environmental_sensor_network VALUES ('S001','North Ridge','AirQuality','2022-06-01',34.1234,-118.1234,350,'PPM','2023-05-20','v2.1',87.5,-70,15,'2024-01-10',12.3,'Normal','2024-07-01','Environmental Services',9.2,3,'IoT Hub','Installed as part of Phase 1');
INSERT INTO environmental_sensor_network VALUES ('S002','Lakeview Park','WaterTemp','2021-09-15',36.5678,-115.5678,210,'Celsius','2023-02-11','v1.9',65.0,-68,30,'2024-01-09',22.5,'Normal','2024-05-15','Facilities','8.7',1,'SCADA','Routine monitoring of lake temperatures');
INSERT INTO environmental_sensor_network VALUES ('S003','Downtown Plaza','NoiseLevel','2023-01-20',40.7128,-74.0060,10,'dB','2023-12-01','v3.0',92.0,-60,5,'2024-01-11',55.0,'High','2024-09-01','Public Works','9.5',0,'CityGrid','Newly deployed for urban noise study');

-- Public Transport Route Usage
CREATE TABLE public_transport_route_usage
(
    RouteID                 TEXT NOT NULL PRIMARY KEY,
    AgencyName              TEXT,
    RouteNumber             TEXT,
    RouteName               TEXT,
    ServiceType             TEXT,
    TotalStops              INTEGER,
    AvgDailyRidership       INTEGER,
    PeakHourRidership       INTEGER,
    AvgTripDurationMinutes  REAL,
    ServiceStartDate        DATE,
    ServiceEndDate          DATE,
    FleetSize               INTEGER,
    FuelType                TEXT,
    AvgOnTimePerformancePct REAL,
    AvgDelayMinutes         REAL,
    AccessibilityScore      INTEGER,
    RevenueAnnualUSD        REAL,
    MaintenanceCostAnnualUSD REAL,
    CustomerComplaintsCount INTEGER,
    IncidentCount           INTEGER,
    GIS_LengthMiles         REAL,
    PrimaryCorridor         TEXT,
    Notes                   TEXT
);

INSERT INTO public_transport_route_usage VALUES ('R001','Metro Transit','12','Elm Street Line','Bus',22,4200,750,38.5,'2015-01-01',NULL,15,'Diesel',88.3,4.2,9,780000.00,120000.00,45,8,12.6,'Elm Street','High demand corridor');
INSERT INTO public_transport_route_usage VALUES ('R002','City Light Rail','A','Downtown Loop','LightRail',14,5600,1200,28.0,'2018-06-15',NULL,8,'Electric',94.5,2.1,10,1020000.00,90000.00,20,3,9.4,'Main Downtown','Core downtown service');
INSERT INTO public_transport_route_usage VALUES ('R003','County Bus Services','45','Rural Connector','Bus',30,1800,300,45.0,'2010-03-20','2025-12-31',12,'Hybrid',81.0,6.5,7,350000.00,80000.00,60,12,45.2,'County Highway 5','Serves outlying communities');

-- School Funding Grants Detail
CREATE TABLE school_funding_grants_detail
(
    GrantID                 TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    GrantName               TEXT,
    GrantAgency             TEXT,
    GrantYear               INTEGER,
    FundingAmountUSD        REAL,
    FundingType             TEXT,
    EligibleExpenses        TEXT,
    ApplicationDate         DATE,
    AwardDate               DATE,
    Status                  TEXT,
    ReportingFrequency     TEXT,
    LastReportDate          DATE,
    ExpirationDate          DATE,
    MatchingRequirementPct  REAL,
    DisbursementSchedule    TEXT,
    AdminContactName        TEXT,
    AdminContactPhone       TEXT,
    AdminContactEmail       TEXT,
    ProgramArea             TEXT,
    EvaluationMetric        TEXT,
    Comments                TEXT
);

INSERT INTO school_funding_grants_detail VALUES ('G1001','CDS001','STEM Innovation Grant','National Science Foundation','2023',250000.00,'Competitive','Equipment Personnel Curriculum','2022-11-01','2023-03-15','Awarded','Quarterly','2023-09-30','2025-03-15',25.0,'50% upfront 25% yearly','John Doe','555-1111','jdoe@schools.org','STEM','Student Test Scores','Focus on robotics');
INSERT INTO school_funding_grants_detail VALUES ('G1002','CDS045','Arts Enrichment Grant','State Arts Council','2022',150000.00,'Formula','Supplies Facilities Salaries','2021-08-20','2022-02-10','Awarded','Annual','2022-11-30','2024-02-10',0.0,'Full amount upfront','Jane Smith','555-2222','jsmith@schools.org','Arts','Attendance and Participation','Expanding visual arts');
INSERT INTO school_funding_grants_detail VALUES ('G1003','CDS078','Community Health Initiative','Department of Health','2024',100000.00,'Matching','Wellness Programs Snacks','2023-04-05','2024-01-20','Pending','Semi-Annual','NULL','2026-01-20',10.0,'25% quarterly','Mike Brown','555-3333','mbrown@schools.org','Health','BMI Reduction','Pilot nutrition program');

-- Alumni Career Outcomes
CREATE TABLE alumni_career_outcomes
(
    AlumniID                TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    GraduationYear          INTEGER,
    DegreeEarned            TEXT,
    CurrentEmployer         TEXT,
    JobTitle                TEXT,
    IndustrySector          TEXT,
    AnnualSalaryUSD         REAL,
    EmploymentStatus        TEXT,
    StartDate               DATE,
    WorkLocationCity        TEXT,
    WorkLocationState       TEXT,
    ProfessionalLicense    TEXT,
    Certifications          TEXT,
    YearsOfExperience       INTEGER,
    MentorFlag              INTEGER,
    LinkedInProfileURL      TEXT,
    SalaryGrowthPctPast5Yrs REAL,
    RemoteWorkPercentage    REAL,
    CommunityInvolvement    TEXT,
    Comments                TEXT
);

INSERT INTO alumni_career_outcomes VALUES ('A001','CDS001','2018','BSc Computer Science','TechNova Solutions','Software Engineer','Technology',95000.00,'FullTime','2020-06-01','San Francisco','CA','None','AWS Certified Solutions Architect',3,1,'https://linkedin.com/in/alumni1',12.5,40.0,'Volunteer mentor','Active in alumni tech network');
INSERT INTO alumni_career_outcomes VALUES ('A002','CDS045','2015','BA Graphic Design','Creative Studios','Senior Designer','Creative Services',82000.00,'FullTime','2016-09-15','New York','NY','None','Adobe Certified Expert',6,0,'https://linkedin.com/in/alumni2',8.0,20.0,'Member of local art council','Frequent guest lecturer');
INSERT INTO alumni_career_outcomes VALUES ('A003','CDS078','2020','MS Education','Springfield School District','Teacher','Education',62000.00,'FullTime','2020-08-20','Springfield','IL','Teaching License','None',2,1,'https://linkedin.com/in/alumni3',5.0,10.0,'Lead after‑school program','Committed to curriculum innovation');

-- Facility Energy Audit Measures
CREATE TABLE facility_energy_audit_measures
(
    AuditID                 TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode           TEXT,
    AuditDate               DATE,
    AuditorName             TEXT,
    BuildingSection         TEXT,
    LightingEfficiencyScore REAL,
    HVACEfficiencyScore     REAL,
    InsulationRValue        REAL,
    WindowsUValue           REAL,
    RoofReflectivityPct    REAL,
    SolarPotentialKW        REAL,
    EnergyStarRating        INTEGER,
    RecommendedUpgrades     TEXT,
    EstimatedSavingsUSDYear  REAL,
    PaybackPeriodYears      REAL,
    FundingSource           TEXT,
    ImplementationStatus    TEXT,
    CompletionDate          DATE,
    Notes                   TEXT
);

INSERT INTO facility_energy_audit_measures VALUES ('A001','CDS001','2023-04-10','Green Audit Co','Main Building',85.0,78.0,13.5,0.35,20,50,4,'LED retrofit HVAC tune‑up','12000.00',3.5,'Utility Grant','Planned',NULL,'Focus on lighting upgrades');
INSERT INTO facility_energy_audit_measures VALUES ('A002','CDS045','2022-11-05','EcoInspect LLC','Gymnasium',70.0,65.0,12.0,0.45,15,0,3,'Upgrade to high‑efficiency furnace','8000.00',4.0,'District Funds','Completed','2023-06-20','Reduced heating costs');
INSERT INTO facility_energy_audit_measures VALUES ('A003','CDS078','2024-01-22','Sustainability Services','Science Wing',90.0,88.0,15.0,0.30,25,120,5,'Install solar panels','25000.00',5.5,'State Grant','InProgress',NULL,'Solar project approved');

-- Student Exchange Program Details
CREATE TABLE student_exchange_program_details
(
    ExchangeID               TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode            TEXT,
    HostInstitutionName      TEXT,
    Country                  TEXT,
    ProgramName              TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    StudentCount             INTEGER,
    FacultyChaperoneCount    INTEGER,
    FundingProvidedUSD       REAL,
    ActivityTypes            TEXT,
    LanguageProficiencyReq   TEXT,
    ApplicationDeadline      DATE,
    SelectionCriteria        TEXT,
    HousingArrangement       TEXT,
    InsuranceProvider        TEXT,
    ContactPersonName        TEXT,
    ContactEmail             TEXT,
    ContactPhone             TEXT,
    PostProgramEvaluation    TEXT,
    Comments                 TEXT
);

INSERT INTO student_exchange_program_details VALUES ('EX001','CDS001','École Polytechnique','France','STEM Summer Exchange','2024-07-01','2024-08-15',15,2,30000.00,'Lab tours Cultural tours','B2 or higher','2024-03-01','Academic merit and language test','Homestay','GlobalInsure','Emma Dupont','emma.dupont@school.org','555-4444','Survey and portfolio','First exchange with Europe');
INSERT INTO student_exchange_program_details VALUES ('EX002','CDS045','University of Tokyo','Japan','Cultural Immersion','2025-01-10','2025-02-20',10,1,25000.00','Language classes Martial arts','N2 or higher','2024-09-15','Essay and interview','Dormitory','JapanProtect','Hiro Tanaka','hiro.tanaka@school.org','555-5555','Reflective journal','Focus on Japanese culture');
INSERT INTO student_exchange_program_details VALUES ('EX003','CDS078','University of Queensland','Australia','Environmental Studies Exchange','2023-09-05','2023-12-05',12,3,40000.00','Field research Marine biology','C1 or higher','2023-05-01','Research proposal','University housing','AUSecure','Liam O\'Connor','liam.oconnor@school.org','555-6666','Research paper','Partnership on sustainability projects');

-- District Technology Asset Registry
CREATE TABLE district_technology_asset_registry
(
    AssetID                 TEXT NOT NULL PRIMARY KEY,
    DistrictCode            INTEGER,
    AssetTag                TEXT,
    AssetType               TEXT,
    Manufacturer            TEXT,
    ModelNumber             TEXT,
    SerialNumber            TEXT,
    PurchaseDate            DATE,
    WarrantyExpirationDate  DATE,
    PurchasePriceUSD        REAL,
    CurrentValueUSD         REAL,
    LocationBuilding        TEXT,
    LocationRoom            TEXT,
    AssignedToDepartment    TEXT,
    AssetStatus             TEXT,
    LastMaintenanceDate     DATE,
    MaintenanceFrequencyDays INTEGER,
    DepreciationMethod      TEXT,
    DepreciationLifeYears   INTEGER,
    AssetLifecycleStage     TEXT,
    DisposalPlanDate        DATE,
    DisposalMethod          TEXT,
    Comments                TEXT
);

INSERT INTO district_technology_asset_registry VALUES ('AS001','12','TAG-001','Server','Dell','PowerEdge R740','SN123456','2021-03-15','2024-03-15',8500.00,6000.00,'Data Center','Room 2','IT','InService','2023-12-01',180,'StraightLine',5,'Operational','2026-03-15','Recycle','Primary database server');
INSERT INTO district_technology_asset_registry VALUES ('AS002','15','TAG-045','Laptop','Apple','MacBook Pro','SN987654','2022-08-01','2025-08-01',2400.00,2000.00,'Main Office','Room 101','Administration','InService','2023-07-20',365,'DoubleDeclining','3','Operational','2025-08-01','Donate','Assigned to principal');
INSERT INTO district_technology_asset_registry VALUES ('AS003','09','TAG-078','Projector','Epson','EB-U42','SN555777','2020-01-10','2023-01-10',650.00,300.00,'North Wing','Room 12','Facilities','Retired','2022-11-30',730,'StraightLine',4','Retired','2023-01-10','Recycle','Replaced by newer model');

-- School Transportation Emission Tracking
CREATE TABLE school_transportation_emission_tracking
(
    EmissionID               TEXT NOT NULL PRIMARY KEY,
    SchoolCDSCode            TEXT,
    VehicleID                TEXT,
    VehicleType              TEXT,
    FuelType                 TEXT,
    Year                     INTEGER,
    MilesDriven              REAL,
    FuelConsumedGallons      REAL,
    CO2EmissionsKg          REAL,
    NOxEmissionsKg          REAL,
    PMEmissionsKg           REAL,
    MaintenanceDate          DATE,
    EmissionTestDate         DATE,
    EmissionComplianceStatus TEXT,
    CertifiedBy              TEXT,
    Comments                 TEXT
);

INSERT INTO school_transportation_emission_tracking VALUES ('EM001','CDS001','BUS-001','School Bus','Diesel',2023,12000.0,800.0,2100.0,15.0,2.0,'2023-05-10','2023-06-01','Compliant','State Environmental Agency','Routine monitoring');
INSERT INTO school_transportation_emission_tracking VALUES ('EM002','CDS045','VAN-012','Van','Hybrid',2023,8500.5,450.0,1150.0,8.0,1.2,'2023-04-18','2023-05-20','Compliant','Regional EPA Office','Used for student transport');
INSERT INTO school_transportation_emission_tracking VALUES ('EM003','CDS078','BUS-007','School Bus','Electric',2023,10000.0,0.0,0.0,0.0,0.0,'2023-03-22','2023-04-15','Compliant','State Clean Energy Board','Zero‑emission bus');