-- District housing statistics per fiscal year
CREATE TABLE district_housing_statistics
(
    DistrictCode           TEXT    NOT NULL,
    Year                   INTEGER NOT NULL,
    MedianHomePrice        REAL,
    AvgRent                REAL,
    VacancyRate            REAL,
    NewConstructionUnits   INTEGER,
    HousingUnitsTotal      INTEGER,
    OwnerOccupiedPct       REAL,
    RenterOccupiedPct      REAL,
    LowIncomeUnits         INTEGER,
    SeniorHousingUnits     INTEGER,
    AffordableHousingPct   REAL,
    HousingCostBurdenPct   REAL,
    HomelessCount          INTEGER,
    YearBuiltAvg           REAL,
    PropertyTaxRate        REAL,
    MortgageRate           REAL,
    UnemploymentRate       REAL,
    Population             INTEGER,
    MedianHouseholdIncome  REAL,
    PRIMARY KEY (DistrictCode, Year)
);

INSERT INTO district_housing_statistics VALUES ('D001', 2022, 250000, 1200, 5.2, 150, 50000, 60.5, 39.5, 8000, 1200, 12.3, 30.1, 250, 1985, 1.2, 3.5, 4.8, 85000, 75000);
INSERT INTO district_housing_statistics VALUES ('D002', 2022, 320000, 1450, 4.7, 200, 62000, 58.0, 42.0, 9500, 1500, 10.8, 28.4, 310, 1990, 1.15, 3.75, 5.1, 97000, 88000);
INSERT INTO district_housing_statistics VALUES ('D003', 2022, 210000, 950, 6.0, 120, 43000, 62.3, 37.7, 7000, 900, 13.5, 32.0, 190, 1978, 1.25, 3.4, 4.5, 72000, 65000);

-- School bus driver profiles
CREATE TABLE school_bus_driver_profiles
(
    DriverID          TEXT    NOT NULL PRIMARY KEY,
    CDSCode           TEXT    NOT NULL,
    FirstName         TEXT,
    LastName          TEXT,
    LicenseNumber     TEXT,
    LicenseState      TEXT,
    HireDate          DATE,
    EmploymentStatus  TEXT,
    TotalMilesDriven  REAL,
    YearsOfExperience INTEGER,
    TrainingCompletedDate DATE,
    Certifications    TEXT,
    ShiftType         TEXT,
    VehicleID         TEXT,
    PhoneNumber       TEXT,
    Email             TEXT,
    Address           TEXT,
    City              TEXT,
    State             TEXT,
    Zip               TEXT
);

INSERT INTO school_bus_driver_profiles VALUES ('DRV001','CDS001','John','Doe','L123456','CA','2015-06-01','Active',120000,7,'2021-05-15','CPR;FirstAid','Morning','BUS1001','5551234567','john.doe@example.com','123 Main St','Springfield','CA','90001');
INSERT INTO school_bus_driver_profiles VALUES ('DRV002','CDS002','Maria','Smith','L654321','NV','2018-09-15','Active',95000,4,'2020-11-20','CPR','Afternoon','BUS1002','5559876543','maria.smith@example.com','456 Oak Ave','Riverton','NV','89102');
INSERT INTO school_bus_driver_profiles VALUES ('DRV003','CDS003','Luis','Garcia','L112233','AZ','2020-01-10','Probation',40000,2,'2022-02-01','FirstAid','FullDay','BUS1003','5555551212','luis.garcia@example.com','789 Pine Rd','Mesa','AZ','85201');

-- Community arts funding records
CREATE TABLE community_arts_funding
(
    FundingID        TEXT    NOT NULL PRIMARY KEY,
    FiscalYear       INTEGER NOT NULL,
    GrantProgram     TEXT,
    Agency           TEXT,
    AmountAwarded    REAL,
    AmountDisbursed  REAL,
    StartDate        DATE,
    EndDate          DATE,
    RecipientOrg     TEXT,
    ProjectTitle     TEXT,
    Description      TEXT,
    FundingStatus    TEXT,
    MatchingFundsRequired REAL,
    MatchingFundsProvided REAL,
    ReportingFrequency TEXT,
    ContactName      TEXT,
    ContactPhone     TEXT,
    ContactEmail     TEXT,
    County           TEXT,
    City             TEXT
);

INSERT INTO community_arts_funding VALUES ('AF001',2022,'Community Arts Grant','State Arts Council',50000,48000,'2022-01-15','2022-12-31','ArtsForward','Summer Mural Project','Creation of outdoor murals in downtown','Completed',10000,9500,'Quarterly','Emily Johnson','5551112222','emily.johnson@artsforward.org','Los Angeles','Los Angeles');
INSERT INTO community_arts_funding VALUES ('AF002',2022,'Cultural Heritage Initiative','National Endowment for the Arts',75000,73000,'2022-03-01','2023-02-28','HeritageArts','Historic Building Restoration','Restoration of historic theater facade','Ongoing',15000,15000,'SemiAnnual','Michael Lee','5553334444','michael.lee@heritagearts.org','San Diego','San Diego');
INSERT INTO community_arts_funding VALUES ('AF003',2022,'Youth Arts Grant','City Arts Department',30000,29500,'2022-05-10','2023-05-09','YouthCreatives','After School Art Workshops','Weekly workshops for middle school students','Active',5000,5000,'Annual','Sofia Martinez','5557778888','sofia.martinez@youthcreatives.org','San Francisco','San Francisco');

-- District technology asset registry
CREATE TABLE district_technology_asset_registry
(
    AssetID            TEXT    NOT NULL PRIMARY KEY,
    AssetTag           TEXT,
    AssetType          TEXT,
    Manufacturer       TEXT,
    Model              TEXT,
    SerialNumber       TEXT,
    PurchaseDate       DATE,
    WarrantyEndDate    DATE,
    AssignedSchool     TEXT,
    AssignedDepartment TEXT,
    CurrentStatus      TEXT,
    Cost               REAL,
    DepreciationYears  INTEGER,
    NetBookValue       REAL,
    LocationRoom       TEXT,
    IPAddress          TEXT,
    MACAddress         TEXT,
    OSVersion          TEXT,
    LastMaintenanceDate DATE,
    SupportVendor      TEXT
);

INSERT INTO district_technology_asset_registry VALUES ('TA001','TAG001','Desktop','Dell','OptiPlex 7080','SN123456','2021-02-15','2024-02-15','CDS001','Administration','In Service',1200,3,800,'Room 101','192.168.10.5','00-14-22-01-23-45','Windows 10 Pro','2023-06-01','TechSupportCo');
INSERT INTO district_technology_asset_registry VALUES ('TA002','TAG002','Laptop','Apple','MacBook Pro','SN654321','2022-08-01','2025-08-01','CDS002','IT','In Service',2500,4,2100,'Room 202','192.168.20.12','00-16-17-22-33-44','macOS 12.5','2023-04-20','AppleCare');
INSERT INTO district_technology_asset_registry VALUES ('TA003','TAG003','Projector','Epson','PowerLite X39','SN987654','2020-11-10','2023-11-10','CDS003','Media','Retired',600,5,0,'Room 303','NULL','00-18-19-55-66-77','N/A','2022-12-15','EpsonService');

-- School environmental sensor network
CREATE TABLE school_environmental_sensor_network
(
    SensorID           TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS          TEXT    NOT NULL,
    SensorType         TEXT,
    InstallDate        DATE,
    Latitude           REAL,
    Longitude          REAL,
    CalibrationDate    DATE,
    Status             TEXT,
    BatteryLevel       REAL,
    MeasurementUnit    TEXT,
    ReadingFrequency   TEXT,
    LastReadingValue   REAL,
    LastReadingTimestamp DATE,
    FirmwareVersion    TEXT,
    Vendor             TEXT,
    MaintenanceContractID TEXT,
    AlertThresholdLow  REAL,
    AlertThresholdHigh REAL,
    Zone               TEXT,
    Comments           TEXT
);

INSERT INTO school_environmental_sensor_network VALUES ('SN001','CDS001','CO2','2021-09-01',34.0522,-118.2437,'2023-01-15','Active',85,'ppm','15min',415,'2023-08-01','v1.2','EnviroTech','MC001',400,1000,'Classroom','Installed near HVAC intake');
INSERT INTO school_environmental_sensor_network VALUES ('SN002','CDS002','Temperature','2022-02-10',36.1699,-115.1398,'2023-02-20','Active',92,'C','5min',22.5,'2023-08-02','v2.0','TempSense','MC002',18,26,'Gym','Mounted on wall');
INSERT INTO school_environmental_sensor_network VALUES ('SN003','CDS003','Humidity','2020-07-15',33.4484,-112.0740,'2022-12-05','Inactive',0,'%','10min',45,'2022-11-30','v1.0','HumidPro','MC003',30,60','Library','Battery depleted');

-- District mental health resources
CREATE TABLE district_mental_health_resources
(
    ResourceID          TEXT    NOT NULL PRIMARY KEY,
    ResourceType        TEXT,
    ProviderName        TEXT,
    ServiceArea         TEXT,
    Phone               TEXT,
    Email               TEXT,
    Capacity            INTEGER,
    HoursPerWeek        REAL,
    AcceptanceCriteria  TEXT,
    CostPerSession      REAL,
    FundingSource       TEXT,
    EstablishedDate     DATE,
    Accreditation       TEXT,
    WaitlistLength      INTEGER,
    ContactPerson       TEXT,
    ContactPhone        TEXT,
    ContactEmail        TEXT,
    County              TEXT,
    City                TEXT,
    Zip                 TEXT
);

INSERT INTO district_mental_health_resources VALUES ('MH001','Counseling','Sunrise Counseling','Los Angeles County','5552223333','info@sunrisecounsel.org',50,30,'Open to all students','0','District Budget','2015-04-01','Licensed','5','Karen White','5552223334','kwhite@sunrisecounsel.org','Los Angeles','Los Angeles','90001');
INSERT INTO district_mental_health_resources VALUES ('MH002','Therapy','Mindful Minds','San Diego County','5554445555','contact@mindfulminds.org',30,25,'Referral required','75','State Grant','2018-09-15','Certified','12','David Green','5554445556','dgreen@mindfulminds.org','San Diego','San Diego','92101');
INSERT INTO district_mental_health_resources VALUES ('MH003','Support Group','Community Care','Orange County','5557778888','support@communitycare.org',20,15,'Open to parents','0','Nonprofit','2020-01-20','Accredited','0','Laura Black','5557778889','lblack@communitycare.org','Orange','Irvine','92602');

-- School financial audit summary
CREATE TABLE school_financial_audit_summary
(
    AuditID            TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS          TEXT    NOT NULL,
    FiscalYear         INTEGER NOT NULL,
    AuditFirm          TEXT,
    AuditStartDate     DATE,
    AuditEndDate       DATE,
    TotalExpenditures  REAL,
    TotalRevenue       REAL,
    NetPosition        REAL,
    AuditFindingsCount INTEGER,
    FindingsSeverity   TEXT,
    RecommendationsCount INTEGER,
    FollowUpActionsTaken INTEGER,
    AuditorSignature   TEXT,
    ReportURL          TEXT,
    Comments           TEXT,
    CreatedDate        DATE,
    UpdatedDate        DATE,
    CreatedBy          TEXT,
    UpdatedBy          TEXT
);

INSERT INTO school_financial_audit_summary VALUES ('AUD001','CDS001',2022,'AuditPro LLC','2023-03-01','2023-04-15',1250000,1300000,50000,2,'Medium',5,4,'John Auditor','http://reports.example.com/AUD001','All good','2023-04-20','2023-04-25','system','system');
INSERT INTO school_financial_audit_summary VALUES ('AUD002','CDS002',2022,'ClearCheck Audits','2023-05-05','2023-06-10',950000,970000,20000,1,'Low',3,3,'Maria Auditor','http://reports.example.com/AUD002','Minor variance','2023-06-15','2023-06-18','system','system');
INSERT INTO school_financial_audit_summary VALUES ('AUD003','CDS003',2022,'TrustAudit Inc','2023-07-01','2023-08-12',1120000,1150000,30000,0,'None',0,0,'Luis Auditor','http://reports.example.com/AUD003','No findings','2023-08-15','2023-08-20','system','system');

-- Community parking permit usage
CREATE TABLE community_parking_permit_usage
(
    PermitID        TEXT    NOT NULL PRIMARY KEY,
    PermitNumber    TEXT,
    HouseholdID     TEXT,
    IssueDate       DATE,
    ExpirationDate  DATE,
    VehicleMake     TEXT,
    VehicleModel    TEXT,
    VehicleYear     INTEGER,
    LicensePlate    TEXT,
    PermitType      TEXT,
    SpacesAllocated INTEGER,
    SpacesUsed      INTEGER,
    PaymentStatus   TEXT,
    AmountPaid      REAL,
    PaymentMethod   TEXT,
    IssuingOfficer  TEXT,
    County          TEXT,
    City            TEXT,
    Zip             TEXT,
    Notes           TEXT
);

INSERT INTO community_parking_permit_usage VALUES ('P001','PERM1001','HH001','2022-01-15','2023-01-14','Toyota','Camry',2020,'ABC123','Residential',2,1,'Paid',150,'CreditCard','OfficerA','Los Angeles','Los Angeles','90002','');
INSERT INTO community_parking_permit_usage VALUES ('P002','PERM1002','HH002','2022-06-01','2023-05-31','Honda','Civic',2019,'XYZ789','Commercial',1,1,'Unpaid',0,'Cash','OfficerB','San Diego','San Diego','92103','Late payment');
INSERT INTO community_parking_permit_usage VALUES ('P003','PERM1003','HH003','2022-09-20','2023-09-19','Ford','F-150',2021,'LMN456','Residential',3,2,'Paid',225,'Check','OfficerC','Orange','Irvine','92604','');

-- District renewable energy assets
CREATE TABLE district_renewable_energy_assets
(
    AssetID               TEXT    NOT NULL PRIMARY KEY,
    AssetType             TEXT,
    CapacityMW            REAL,
    InstallationDate      DATE,
    Location              TEXT,
    OwnerEntity           TEXT,
    OperatingCompany      TEXT,
    MaintenanceContract   TEXT,
    ExpectedLifeYears     INTEGER,
    CurrentOutputMW       REAL,
    AvailabilityFactor    REAL,
    CO2eSavedTonnes      REAL,
    FundingProgram        TEXT,
    GrantAmount           REAL,
    Cost                  REAL,
    Status                TEXT,
    WarrantyEndDate       DATE,
    DecommissionDate      DATE,
    Latitude              REAL,
    Longitude             REAL
);

INSERT INTO district_renewable_energy_assets VALUES ('RE001','Solar','5.0','2021-04-10','North Campus','District Energy Dept','SunPower Inc','ContractA',25,4.2,0.84,1500,'Solar Initiative',200000,500000,'Operating','2026-04-10','NULL',34.0500,-118.2500);
INSERT INTO district_renewable_energy_assets VALUES ('RE002','Wind','12.0','2020-09-15','West Ridge','District Energy Dept','WindWorks','ContractB',30,10.5,0.875,3500,'Wind Grant',500000,1200000,'Operating','2025-09-15','NULL',36.1699,-115.1398);
INSERT INTO district_renewable_energy_assets VALUES ('RE003','Geothermal','3.5','2019-03-20','South Campus','District Energy Dept','GeoHeat LLC','ContractC',40,3.0,0.857,900,'Geothermal Fund',150000,400000,'Retired','2024-03-20','2023-12-31',33.4484,-112.0740);

-- School arts exhibit catalog
CREATE TABLE school_arts_exhibit_catalog
(
    ExhibitID        TEXT    NOT NULL PRIMARY KEY,
    SchoolCDS        TEXT    NOT NULL,
    ExhibitName      TEXT,
    StartDate        DATE,
    EndDate          DATE,
    CuratorName      TEXT,
    NumberOfArtists  INTEGER,
    TotalPieces      INTEGER,
    Mediums          TEXT,
    EstimatedValue   REAL,
    SponsoringOrganization TEXT,
    FundingAmount    REAL,
    AudienceCount    INTEGER,
    FeedbackScore    REAL,
    VenueRoom        TEXT,
    InstallationDate DATE,
    DeinstallationDate DATE,
    ContactPhone     TEXT,
    ContactEmail     TEXT,
    Comments         TEXT
);

INSERT INTO school_arts_exhibit_catalog VALUES ('EXH001','CDS001','Visions of Tomorrow','2023-03-01','2023-04-15','Anna Lee',12,45,'Mixed Media',25000,'ArtsForward','12000',300,'4.5','Room A','2023-02-20','2023-04-20','5551112222','anna.lee@artsforward.org','');
INSERT INTO school_arts_exhibit_catalog VALUES ('EXH002','CDS002','Cultural Mosaic','2023-05-10','2023-06-30','Michael Chen',8,30,'Paintings;Sculpture',18000,'HeritageArts','8000',250,'4.2','Room B','2023-05-01','2023-07-05','5553334444','michael.chen@heritagearts.org','');
INSERT INTO school_arts_exhibit_catalog VALUES ('EXH003','CDS003','Nature in Motion','2023-09-05','2023-10-20','Sofia Martinez',10,38,'Photography;Digital',22000,'EcoArt Fund','10000',275,'4.7','Room C','2023-08-28','2023-10-25','5557778888','sofia.martinez@ecoart.org','');

-- School arts exhibit catalog
CREATE TABLE school_arts_exhibit_catalog
(
    ExhibitID        TEXT NOT NULL PRIMARY KEY,
    SchoolCDS        TEXT NOT NULL,
    ExhibitName      TEXT,
    StartDate        DATE,
    EndDate          DATE,
    CuratorName      TEXT,
    NumberOfArtists  INTEGER,
    TotalPieces      INTEGER,
    Mediums          TEXT,
    EstimatedValue   REAL,
    SponsoringOrganization TEXT,
    FundingAmount    REAL,
    AudienceCount    INTEGER,
    FeedbackScore    REAL,
    VenueRoom        TEXT,
    InstallationDate DATE,
    DeinstallationDate DATE,
    ContactPhone     TEXT,
    ContactEmail     TEXT,
    Comments         TEXT
);

INSERT INTO school_arts_exhibit_catalog VALUES ('EXH001','CDS001','Visions of Tomorrow','2023-03-01','2023-04-15','Anna Lee',12,45,'Mixed Media',25000,'ArtsForward','12000',300,'4.5','Room A','2023-02-20','2023-04-20','5551112222','anna.lee@artsforward.org','');
INSERT INTO school_arts_exhibit_catalog VALUES ('EXH002','CDS002','Cultural Mosaic','2023-05-10','2023-06-30','Michael Chen',8,30,'Paintings;Sculpture',18000,'HeritageArts','8000',250,'4.2','Room B','2023-05-01','2023-07-05','5553334444','michael.chen@heritagearts.org','');
INSERT INTO school_arts_exhibit_catalog VALUES ('EXH003','CDS003','Nature in Motion','2023-09-05','2023-10-20','Sofia Martinez',10,38,'Photography;Digital',22000,'EcoArt Fund','10000',275,'4.7','Room C','2023-08-28','2023-10-25','5557778888','sofia.martinez@ecoart.org','');