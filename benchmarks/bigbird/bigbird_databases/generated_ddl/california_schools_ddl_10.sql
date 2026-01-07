-- Environmental monitoring stations capturing sensor data across the district
CREATE TABLE environmental_monitoring_stations
(
    StationID            TEXT    NOT NULL PRIMARY KEY,
    StationName          TEXT    NULL,
    Latitude             REAL    NULL,
    Longitude            REAL    NULL,
    InstallationDate    DATE    NULL,
    SensorType           TEXT    NULL,
    MeasurementUnit      TEXT    NULL,
    CalibrationDate      DATE    NULL,
    FirmwareVersion      TEXT    NULL,
    MaintenanceCycleDays INTEGER NULL,
    LastMaintenanceDate  DATE    NULL,
    Status               TEXT    NULL,
    PowerSource          TEXT    NULL,
    DataTransmissionMode TEXT    NULL,
    OwnerDepartment      TEXT    NULL,
    ContactPerson        TEXT    NULL,
    ContactPhone         TEXT    NULL,
    AvgTempCelsius       REAL    NULL,
    AvgHumidityPercent   REAL    NULL,
    AvgPM25MicrogramM3   REAL    NULL,
    AvgNoiseDbA          REAL    NULL,
    AvgCO2ppm            REAL    NULL,
    LatitudeAccuracyM    REAL    NULL,
    LongitudeAccuracyM   REAL    NULL,
    Notes                TEXT    NULL
);

INSERT INTO environmental_monitoring_stations VALUES
('EMS001','NorthHill Station',34.12345,-117.12345,'2020-03-15','MultiSensor','Various','2022-01-10','v3.2',180,'2023-06-01','Active','Solar','Cellular','Facilities','Alice Green','555-0101','22.5','45.2','12.4','55.0','420','0.5','0.5','Initial deployment');
INSERT INTO environmental_monitoring_stations VALUES
('EMS002','RiverSide Node',34.13000,-117.13500,'2021-07-20','AirQuality','PM2.5','2023-02-05','v4.0',365,'2023-08-12','Active','Mains','WiFi','Operations','Bob White','555-0102','19.8','50.1','8.9','48.3','389','0.3','0.4','Added after flood mitigation');
INSERT INTO environmental_monitoring_stations VALUES
('EMS003','WestCampus Sensor',34.11500,-117.11000,'2019-11-05','Noise','dB','2021-12-01','v2.9',90,'2023-05-20','Inactive','Battery','LoRa','Safety','Carol Black','555-0103','0.0','0.0','0.0','0.0','0','0.0','0.0','Decommissioned for upgrades');

-- District technology inventories tracking hardware assets
CREATE TABLE district_technology_inventories
(
    AssetTag               TEXT    NOT NULL PRIMARY KEY,
    AssetType              TEXT    NULL,
    Manufacturer           TEXT    NULL,
    ModelNumber            TEXT    NULL,
    SerialNumber           TEXT    NULL,
    PurchaseDate           DATE    NULL,
    WarrantyExpirationDate DATE    NULL,
    AssignedLocation       TEXT    NULL,
    AssignedToStaffID      TEXT    NULL,
    CostUSD                REAL    NULL,
    CurrentStatus          TEXT    NULL,
    OperatingSystem        TEXT    NULL,
    Processor              TEXT    NULL,
    RAM_GB                 INTEGER NULL,
    StorageGB              INTEGER NULL,
    GraphicsCard           TEXT    NULL,
    NetworkMACAddress      TEXT    NULL,
    IPAddress              TEXT    NULL,
    LastAuditDate          DATE    NULL,
    CalibrationRequired    INTEGER NULL,
    AssetLifecycleStage    TEXT    NULL,
    DisposalMethod         TEXT    NULL,
    Notes                  TEXT    NULL
);

INSERT INTO district_technology_inventories VALUES
('DTI1001','Laptop','Dell','Latitude 5520','SN12345','2022-02-10','2025-02-10','WestHigh School','STF001',1200.00,'In Use','Windows 10','Intel i5',16,512,'Integrated','00:1A:2B:3C:4D:5E','192.168.1.101','2023-07-01',0,'Operational','N/A','Assigned to math teacher');
INSERT INTO district_technology_inventories VALUES
('DTI1002','Projector','Epson','EB-X05','SN67890','2021-08-15','2024-08-15','Central Library','','800.00','In Use','N/A','N/A',0,0,'N/A','00:1A:2B:3C:4D:5F','192.168.1.102','2023-06-15',0,'Operational','N/A','Mounted in study hall');
INSERT INTO district_technology_inventories VALUES
('DTI1003','Desktop','HP','EliteDesk 800','SN54321','2019-05-20','2022-05-20','District Office','STF010',950.00,'Retired','Windows 7','Intel i7',8,256,'NVIDIA GTX 1050','00:1A:2B:3C:4D:60','192.168.1.103','2023-05-30',1,'End of Life','Recycle','Scheduled for disposal');

-- School parking permit records for staff and visitors
CREATE TABLE school_parking_permit_records
(
    PermitID                TEXT    NOT NULL PRIMARY KEY,
    SchoolCode              TEXT    NULL,
    PermitHolderName        TEXT    NULL,
    HolderRole              TEXT    NULL,
    VehicleMake             TEXT    NULL,
    VehicleModel            TEXT    NULL,
    LicensePlate            TEXT    NULL,
    PermitStartDate         DATE    NULL,
    PermitEndDate           DATE    NULL,
    PermitType              TEXT    NULL,
    ParkingZone             TEXT    NULL,
    IssuedBy                TEXT    NULL,
    IssueDate               DATE    NULL,
    ExpirationNoticeSent    INTEGER NULL,
    PaymentStatus           TEXT    NULL,
    AmountPaidUSD           REAL    NULL,
    PaymentMethod           TEXT    NULL,
    ValidationStickerNumber TEXT    NULL,
    StickerExpirationDate   DATE    NULL,
    Notes                   TEXT    NULL,
    CreatedAt               DATE    NULL,
    UpdatedAt               DATE    NULL,
    IsActive                INTEGER NULL,
    LastRenewalDate         DATE    NULL,
    RenewalCount            INTEGER NULL
);

INSERT INTO school_parking_permit_records VALUES
('PP001','SCH001','John Doe','Teacher','Toyota','Camry','ABC1234','2023-08-01','2024-07-31','Annual','ZoneA','Admin','2023-07-20',0,'Paid',150.00,'CreditCard','STK001','2024-07-31','N/A','2023-07-15','2023-07-20',1,'2023-08-01',1);
INSERT INTO school_parking_permit_records VALUES
('PP002','SCH002','Jane Smith','Visitor','Honda','Civic','XYZ5678','2023-09-15','2023-09-15','OneDay','ZoneB','Security','2023-09-10',0,'Unpaid',0.00,'N/A','STK002','2023-09-15','Short term visitor','2023-09-01','2023-09-10',0,NULL,0);
INSERT INTO school_parking_permit_records VALUES
('PP003','SCH001','Michael Brown','Administrator','Ford','F-150','LMN9012','2023-01-01','2025-12-31','MultiYear','ZoneC','Admin','2022-12-20',1,'Paid',300.00,'Check','STK003','2025-12-31','Reserved for district admin','2022-12-15','2022-12-20',1,'2023-01-01',2);

-- Community health outreach events organized by the district
CREATE TABLE community_health_outreach_events
(
    EventID                TEXT    NOT NULL PRIMARY KEY,
    EventName              TEXT    NULL,
    HostOrganization       TEXT    NULL,
    EventDate              DATE    NULL,
    StartTime              TEXT    NULL,
    EndTime                TEXT    NULL,
    LocationName           TEXT    NULL,
    AddressLine1           TEXT    NULL,
    City                   TEXT    NULL,
    State                  TEXT    NULL,
    ZipCode                TEXT    NULL,
    TargetPopulation       TEXT    NULL,
    ServicesOffered        TEXT    NULL,
    EstimatedAttendees     INTEGER NULL,
    RegisteredAttendees    INTEGER NULL,
    StaffVolunteersCount   INTEGER NULL,
    MedicalStaffCount      INTEGER NULL,
    SuppliesProvided       TEXT    NULL,
    FundingSource          TEXT    NULL,
    BudgetUSD              REAL    NULL,
    ActualCostUSD          REAL    NULL,
    OutcomeSummary         TEXT    NULL,
    FollowUpRequired       INTEGER NULL,
    FollowUpDate           DATE    NULL,
    CreatedAt              DATE    NULL,
    UpdatedAt              DATE    NULL
);

INSERT INTO community_health_outreach_events VALUES
('CHE001','Free Flu Vaccination','County Health Dept','2023-10-15','09:00','12:00','Central Community Center','123 Main St','Springfield','CA','12345','All Residents','Flu Shot','250','200','30','10','Vaccines, Brochures','Grant','5000.00','4800.00','High turnout, 95% vaccination rate',0,NULL,'2023-08-01','2023-09-01');
INSERT INTO community_health_outreach_events VALUES
('CHE002','Nutrition Workshop','Nonprofit Wellness','2023-11-05','14:00','16:00','Westside Library','456 Oak Ave','Springfield','CA','12345','Low-Income Families','Healthy Cooking Demo','80','60','15','5','Meal Kits, Pamphlets','Donations','1500.00','1400.00','Positive feedback, 30 families enrolled in program',1,'2023-12-01','2023-09-15','2023-10-01');
INSERT INTO community_health_outreach_events VALUES
('CHE003','Mental Health Screening','School Counseling Dept','2023-12-01','10:00','13:00','North High School','789 Pine Rd','Springfield','CA','12345','Students','Stress Assessment','300','250','20','8','Questionnaires, Referral Lists','School Budget','3000.00','2950.00','Identified 15 students needing follow‑up',1,'2024-01-15','2023-10-20','2023-11-01');

-- Alumni donation campaigns tracking contributions
CREATE TABLE alumni_donation_campaigns
(
    CampaignID                TEXT    NOT NULL PRIMARY KEY,
    CampaignName              TEXT    NULL,
    LaunchDate                DATE    NULL,
    EndDate                   DATE    NULL,
    TargetAmountUSD           REAL    NULL,
    CurrentAmountUSD          REAL    NULL,
    NumberOfDonors            INTEGER NULL,
    MatchingGiftAvailable     INTEGER NULL,
    MatchingRatio             REAL    NULL,
    DesignatedPurpose         TEXT    NULL,
    MarketingChannel          TEXT    NULL,
    ContactPerson             TEXT    NULL,
    ContactEmail              TEXT    NULL,
    ContactPhone              TEXT    NULL,
    Status                    TEXT    NULL,
    LastUpdate                DATE    NULL,
    CreatedAt                 DATE    NULL,
    Notes                     TEXT    NULL,
    DonationPlatform          TEXT    NULL,
    OnlineFormURL             TEXT    NULL,
    MinimumGiftUSD            REAL    NULL,
    TaxDeductible             INTEGER NULL,
    RecurringOptionAvailable  INTEGER NULL,
    RecurringFrequencyMonths  INTEGER NULL,
    RecognitionLevelBronze    REAL    NULL,
    RecognitionLevelSilver    REAL    NULL,
    RecognitionLevelGold      REAL    NULL
);

INSERT INTO alumni_donation_campaigns VALUES
('ADC001','Class of 2000 Giving Day','2023-09-01','2023-09-30',500000.00,120000.00,450,1,1.0,'Scholarships','Email','Laura King','lking@district.org','555-0201','Active','2023-09-15','2023-08-01','First major campaign for the millennium class','OnlinePortal','https://donate.district.org/2000','50.00',1,1,12,100.00,250.00,500.00);
INSERT INTO alumni_donation_campaigns VALUES
('ADC002','STEM Innovation Fund','2023-10-15','2024-03-15',750000.00,300000.00,720,0,NULL,'Lab Equipment','SocialMedia','Mark Evans','mevans@district.org','555-0202','Ongoing','2023-11-01','2023-09-20','Targeted at engineering alumni','WebForm','https://donate.district.org/stem','100.00',1,0,0,250.00,500.00,1000.00);
INSERT INTO alumni_donation_campaigns VALUES
('ADC003','Art & Culture Endowment','2023-11-01','2024-02-28',250000.00,80000.00,210,1,0.5,'Arts Programs','DirectMail','Nina Patel','npatel@district.org','555-0203','Planning','2023-11-10','2023-10-05','Includes matching grant from local foundation','DonateNow','https://donate.district.org/art','25.00',1,1,6,50.00,150.00,300.00);

-- Teacher research projects metadata
CREATE TABLE teacher_research_projects
(
    ProjectID                TEXT    NOT NULL PRIMARY KEY,
    ProjectTitle             TEXT    NULL,
    PrincipalInvestigator    TEXT    NULL,
    Department               TEXT    NULL,
    StartDate                DATE    NULL,
    EndDate                  DATE    NULL,
    FundingSource            TEXT    NULL,
    FundingAmountUSD         REAL    NULL,
    GrantNumber              TEXT    NULL,
    CollaborationPartner     TEXT    NULL,
    PublicationTarget        TEXT    NULL,
    Status                   TEXT    NULL,
    AbstractSummary          TEXT    NULL,
    Keywords                 TEXT    NULL,
    EthicalApprovalID        TEXT    NULL,
    DataAccessLevel          TEXT    NULL,
    StudentInvolvementCount  INTEGER NULL,
    FacultyInvolvementCount  INTEGER NULL,
    TotalHoursInvested       REAL    NULL,
    ExpectedOutcomes         TEXT    NULL,
    CreatedAt                DATE    NULL,
    UpdatedAt                DATE    NULL,
    IsPublic                 INTEGER NULL,
    RepositoryLink           TEXT    NULL,
    Notes                    TEXT    NULL,
    PeerReviewStatus         TEXT    NULL,
    ConferenceSubmissionDate DATE    NULL,
    AwardReceived            TEXT    NULL
);

INSERT INTO teacher_research_projects VALUES
('TRP001','Impact of Project‑Based Learning on Math Achievement','Emily Clark','Mathematics','2022-09-01','2024-06-30','Federal Grant','120000.00','FG-2022-05','State University','Journal of Math Education','Active','Examines how hands‑on projects affect standardized scores','PBL,Math,Assessment','IRB2022-10','Restricted','8','3','960.0','Improved test scores by 5%','2022-08-15','2022-09-01',0,'https://repo.district.org/trp001','Monthly progress reports','Submitted','2023-11-15','None');
INSERT INTO teacher_research_projects VALUES
('TRP002','Use of Augmented Reality in History Classes','David Lee','History','2023-01-15','2025-12-31','District Innovation Fund','80000.00','DIF-2023-02','Local Museum','Conference Proceedings','Planning','Investigates AR overlays for historical events','AR,History,Engagement','IRB2023-01','Open','5','2','720.0','Higher student engagement metrics','2023-01-10','2023-01-15',0,'https://repo.district.org/trp002','Prototype AR app in development','In Review','2024-03-01','Best Innovation Award 2024');
INSERT INTO teacher_research_projects VALUES
('TRP003','Longitudinal Study of Reading Fluency Interventions','Sophia Martinez','English','2021-08-01','2024-07-31','State Education Grant','150000.00','SEG-2021-07','Regional Literacy Center','Education Review','Completed','Tracks reading fluency over three years across interventions','Reading,Fluency,Longitudinal','IRB2021-04','Open','12','4','1080.0','Publication in major education journal','2021-07-20','2021-08-01',1,'https://repo.district.org/trp003','Data archived','Published','2024-06-15','Outstanding Research Award');

-- Student exchange program details with partner institutions
CREATE TABLE student_exchange_program_details
(
    ExchangeID                 TEXT    NOT NULL PRIMARY KEY,
    StudentID                  TEXT    NULL,
    HomeSchoolCode             TEXT    NULL,
    PartnerInstitutionName     TEXT    NULL,
    PartnerCountry             TEXT    NULL,
    ProgramStartDate           DATE    NULL,
    ProgramEndDate             DATE    NULL,
    Semester                  TEXT    NULL,
    CreditHoursEarned          INTEGER NULL,
    HostFamilyID               TEXT    NULL,
    AccommodationType          TEXT    NULL,
    TravelGrantAmountUSD       REAL    NULL,
    ProgramFeeUSD              REAL    NULL,
    LanguageProficiencyLevel   TEXT    NULL,
    AcademicFocusArea          TEXT    NULL,
    ApplicationStatus          TEXT    NULL,
    SelectedDate               DATE    NULL,
    DepartureDate              DATE    NULL,
    ReturnDate                 DATE    NULL,
    HealthInsuranceProvider    TEXT    NULL,
    EmergencyContactName       TEXT    NULL,
    EmergencyContactPhone      TEXT    NULL,
    ApprovedBy                 TEXT    NULL,
    ApprovalDate               DATE    NULL,
    CreatedAt                  DATE    NULL,
    UpdatedAt                  DATE    NULL,
    IsCompleted                INTEGER NULL,
    FinalGrade                 TEXT    NULL,
    AlumniStatus               TEXT    NULL,
    Remarks                    TEXT    NULL
);

INSERT INTO student_exchange_program_details VALUES
('EXG001','STU12345','SCH001','University of Edinburgh','United Kingdom','2023-09-01','2024-06-30','Fall','30','HF001','HostFamily','2000.00','5000.00','Advanced','History','Accepted','2023-05-15','2023-08-20','2024-07-05','Global Insure','John Doe','555-0301','Ms. Laura Green','2023-06-01','2023-04-20','2023-07-01',0,NULL,'Pending','Participating in summer program');
INSERT INTO student_exchange_program_details VALUES
('EXG002','STU67890','SCH002','Tokyo International School','Japan','2024-01-10','2024-05-20','Spring','24','HF002','Dormitory','1500.00','4000.00','Intermediate','Science','Pending','2023-09-30',NULL,NULL,'AsiaCare','Maria Lee','555-0302','Mr. David Kim','2023-10-15','2023-09-01','2023-09-10',0,NULL,'Pending','Awaiting visa approval');
INSERT INTO student_exchange_program_details VALUES
('EXG003','STU54321','SCH001','University of Queensland','Australia','2022-02-01','2022-07-31','Summer','18','HF003','HostFamily','1800.00','3500.00','Beginner','Art','Completed','2021-10-10','2022-01-15','2022-08-10','Aussie Health','Karen Smith','555-0303','Dr. Alan Brown','2021-11-01','2021-09-20','2021-09-30',1,'B+','Alumni','Returned with portfolio of artwork');

-- Facility energy audit logs for each building
CREATE TABLE facility_energy_audit_logs
(
    AuditID                   TEXT    NOT NULL PRIMARY KEY,
    BuildingID                TEXT    NULL,
    AuditDate                 DATE    NULL,
    AuditorName               TEXT    NULL,
    TotalEnergyConsumptionKWh REAL    NULL,
    PeakDemandKW              REAL    NULL,
    BaselineYear              INTEGER NULL,
    HVACSystemEfficiencyPct  REAL    NULL,
    LightingEfficiencyPct    REAL    NULL,
    EnvelopeInsulationScore   TEXT    NULL,
    RenewableEnergyPercentage REAL    NULL,
    RecommendedImprovements   TEXT    NULL,
    EstimatedSavingsUSD       REAL    NULL,
    ImplementationPriority    TEXT    NULL,
    FollowUpDate              DATE    NULL,
    Status                    TEXT    NULL,
    CreatedAt                 DATE    NULL,
    UpdatedAt                 DATE    NULL,
    Notes                     TEXT    NULL,
    IsFinalReport             INTEGER NULL,
    CertificationLevel       TEXT    NULL,
    EnergyStarScore           INTEGER NULL,
    CO2EmissionsTonnes        REAL    NULL,
    WaterUseLiters            REAL    NULL,
    GasConsumptionTherms      REAL    NULL,
    SolarCapacityKW           REAL    NULL,
    BatteryStorageMWh         REAL    NULL,
    AuditVersion              TEXT    NULL,
    AttachmentsURL            TEXT    NULL,
    ReviewedBy                TEXT    NULL
);

INSERT INTO facility_energy_audit_logs VALUES
('FAE001','BLDG01','2023-06-15','Laura Green',250000.00,500.0,2018,85.0,78.0','C','15.0','Upgrade HVAC controls; Replace T8 fixtures','35000.00','High','2024-03-01','Completed','2023-06-20','All recommendations accepted',1,'LEED Gold',92,1200.5,80000.0,15000.0,250.0,0.5','v2','https://files.district.org/audit/FAE001.pdf','Chief Engineer');
INSERT INTO facility_energy_audit_logs VALUES
('FAE002','BLDG02','2023-08-10','Michael Lee',180000.00,400.0,2019,80.0,70.0','B','10.0','Install occupancy sensors; Add solar panels','21000.00','Medium','2024-01-15','In Progress','2023-08-12','Pending budget approval',0,'LEED Silver',85,850.0,60000.0,12000.0,180.0,0.3','v1','https://files.district.org/audit/FAE002.pdf','Facilities Manager');
INSERT INTO facility_energy_audit_logs VALUES
('FAE003','BLDG03','2022-12-05','Susan Patel',300000.00,620.0,2017,88.0,82.0','A','20.0','Retrofit windows; Upgrade boiler system','50000.00','High','2023-07-30','Scheduled','2022-12-10','Complete schedule set',1,'LEED Platinum',95,1500.0,95000.0,20000.0,300.0,1.0','v3','https://files.district.org/audit/FAE003.pdf','Director of Sustainability');

-- School art exhibit inventory tracking artworks displayed on campus
CREATE TABLE school_art_exhibit_inventory
(
    ExhibitID               TEXT    NOT NULL PRIMARY KEY,
    SchoolCode              TEXT    NULL,
    ExhibitTitle            TEXT    NULL,
    CuratorName             TEXT    NULL,
    StartDate               DATE    NULL,
    EndDate                 DATE    NULL,
    ArtworkID               TEXT    NULL,
    ArtworkTitle            TEXT    NULL,
    ArtistName              TEXT    NULL,
    CreationYear            INTEGER NULL,
    Medium                  TEXT    NULL,
    DimensionsCM            TEXT    NULL,
    AcquisitionMethod       TEXT    NULL,
    AcquisitionDate         DATE    NULL,
    EstimatedValueUSD       REAL    NULL,
    DisplayLocation         TEXT    NULL,
    ConditionStatus         TEXT    NULL,
    InsurancePolicyNumber   TEXT    NULL,
    InsuranceProvider       TEXT    NULL,
    LoanAgreementID         TEXT    NULL,
    ConservationNotes       TEXT    NULL,
    PublicAccessLevel       TEXT    NULL,
    FeaturedInNewsletter    INTEGER NULL,
    QRCodeLink              TEXT    NULL,
    CreatedAt               DATE    NULL,
    UpdatedAt               DATE    NULL,
    IsOnDisplay             INTEGER NULL,
    RemovalDate             DATE    NULL,
    Remarks                 TEXT    NULL
);

INSERT INTO school_art_exhibit_inventory VALUES
('ART001','SCH001','Winter Vision','Emily Clark','2023-11-01','2024-02-28','AWK001','Snowflake Sonata','Liam Torres',2021,'Acrylic on Canvas','120x80','Purchase','2022-05-15',2500.00,'Main Hall','Excellent','INS12345','ArtSecure','LA001','No visible damage','Public','1','https://qr.district.org/ART001','2023-10-20','2023-10-25',1,NULL','First winter themed exhibit');
INSERT INTO school_art_exhibit_inventory VALUES
('ART002','SCH002','Cultural Connections','David Lee','2023-09-15','2023-12-15','AWK002','Global Mosaic','Aisha Khan',2019,'Mixed Media','150x150','Donation','2020-03-10',0.00,'Student Gallery','Good','INS67890','CultureInsure','LA002','Needs cleaning','Limited','0','https://qr.district.org/ART002','2023-08-30','2023-09-01',1,NULL','Collaborative student project');
INSERT INTO school_art_exhibit_inventory VALUES
('ART003','SCH001','Modern Perspectives','Sophia Martinez','Michael Brown','2024-01-10','2024-04-10','AWK003','Digital Dreams','Ravi Patel',2023,'Digital Print','200x100','Print Run','2023-11-20',1200.00,'Tech Lab','Fair','INS54321','DigitalCover','LA003','Check resolution','Public','1','https://qr.district.org/ART003','2023-12-05','2023-12-10',1,NULL','Integrated with technology curriculum');

-- District transportation fleet maintenance records
CREATE TABLE district_transportation_fleet_maintenance
(
    MaintenanceID            TEXT    NOT NULL PRIMARY KEY,
    VehicleID                TEXT    NULL,
    ServiceDate              DATE    NULL,
    OdometerReading          INTEGER NULL,
    ServiceType              TEXT    NULL,
    ServiceProvider          TEXT    NULL,
    LaborHours               REAL    NULL,
    LaborCostUSD             REAL    NULL,
    PartsCostUSD             REAL    NULL,
    TotalCostUSD             REAL    NULL,
    MileageSinceLastService  INTEGER NULL,
    NextServiceDueMileage    INTEGER NULL,
    NextServiceDueDate       DATE    NULL,
    TechnicianName           TEXT    NULL,
    ServiceNotes             TEXT    NULL,
    WarrantyCovered          INTEGER NULL,
    InvoiceNumber            TEXT    NULL,
    InspectionPassed         INTEGER NULL,
    EmissionsTestDate        DATE    NULL,
    EmissionsResult          TEXT    NULL,
    FuelEfficiencyMPG        REAL    NULL,
    FuelType                 TEXT    NULL,
    AssignedRouteID          TEXT    NULL,
    DriverID                 TEXT    NULL,
    CreatedAt                DATE    NULL,
    UpdatedAt                DATE    NULL,
    MaintenanceStatus        TEXT    NULL,
    FollowUpActionRequired   INTEGER NULL,
    FollowUpDueDate          DATE    NULL,
    CostCenterCode           TEXT    NULL,
    BudgetLineItem           TEXT    NULL
);

INSERT INTO district_transportation_fleet_maintenance VALUES
('MTN001','BUS001','2023-05-20',45200,'Oil Change','AutoCare Center',2.0,80.00,30.00,110.00,5000,12000,'2023-11-15','Jim Harris','Replaced oil filter','0','INV1001','1','2023-05-20','Pass',8.5,'Diesel','RTE12','DRV005','2023-05-21','2023-05-21','Completed',0,NULL,'TC01','Bus Maintenance');
INSERT INTO district_transportation_fleet_maintenance VALUES
('MTN002','VAN023','2023-08-10',31200,'Brake Inspection','QuickFix Motors',3.5,120.00,200.00,320.00,8000,15000,'2024-02-10','Sara Lopez','Front brake pads replaced','0','INV1034','1','2023-08-10','Pass',7.9,'Gasoline','RTE07','DRV012','2023-08-11','2023-08-11','Completed',0,NULL,'TC02','Vehicle Maintenance');
INSERT INTO district_transportation_fleet_maintenance VALUES
('MTN003','BUS045','2023-11-01',67800,'Transmission Repair','MajorAuto Service',12.0,800.00,1500.00,2300.00,15000,25000,'2024-08-01','Tom Reed','Replaced transmission unit','1','INV1100','0',NULL,NULL,6.2,'Diesel','RTE19','DRV020','2023-11-02','2023-11-02','Pending Parts',1,'2024-01-15','TC03','Major Repairs');