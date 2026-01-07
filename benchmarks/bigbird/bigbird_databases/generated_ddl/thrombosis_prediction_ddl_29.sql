-- Radiology equipment details
CREATE TABLE RadiologyEquipment (
    EquipmentID INTEGER PRIMARY KEY,
    Name TEXT,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEndDate DATE,
    Status TEXT,
    Location TEXT,
    CalibrationDate DATE,
    CalibrationDue DATE,
    LastMaintenanceDate DATE,
    MaintenanceIntervalDays INTEGER,
    RadiationSafetyLevel TEXT,
    PowerRatingKW REAL,
    SoftwareVersion TEXT,
    FirmwareVersion TEXT,
    CostUSD REAL,
    DepreciationYear INTEGER,
    LastInspectionDate DATE
);

INSERT INTO RadiologyEquipment VALUES (1,'CTScanner','Siemens','CT800','SN10001','2022-01-15','2027-01-15','Active','RadiologyWingA','2023-06-01','2024-06-01','2023-01-20',180,'Level2',150.0,'v5.2','f1.0',1200000,2025,'2023-05-30');
INSERT INTO RadiologyEquipment VALUES (2,'MRIUnit','GE','MRI3T','SN20002','2021-03-10','2026-03-10','Active','RadiologyWingB','2023-04-15','2024-04-15','2023-02-10',365,'Level3',200.0,'v3.8','f2.1',850000,2024,'2023-04-01');
INSERT INTO RadiologyEquipment VALUES (3,'XRayMachine','Philips','XR200','SN30003','2020-07-22','2025-07-22','Retired','RadiologyWingC','2022-12-05','2023-12-05','2022-11-20',365,'Level1',80.0,'v2.5','f0.9',300000,2023,'2022-11-30');

-- Pharmacy supplier information
CREATE TABLE PharmacySupplier (
    SupplierID INTEGER PRIMARY KEY,
    Name TEXT,
    ContactPerson TEXT,
    Phone TEXT,
    Email TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    Rating INTEGER,
    ContractStartDate DATE,
    ContractEndDate DATE,
    Preferred INTEGER,
    DeliveryMethod TEXT,
    PaymentTerms TEXT,
    LastAuditDate DATE,
    AccreditationNumber TEXT,
    Notes TEXT
);

INSERT INTO PharmacySupplier VALUES (101,'MediSupplyCo','AliceSmith','5551234001','alice@medisupply.com','123Health St','Suite10','Metrocity','NY','10001','USA',5,'2021-01-01','2024-12-31',1,'Ground','Net30','2023-03-15','ACC12345','FastShipping');
INSERT INTO PharmacySupplier VALUES (102,'PharmaDirect','BobJones','5551234002','bob@pharmadirect.com','456Wellness Ave','', 'Uptown','CA','90002','USA',4,'2020-06-15','2023-06-14',0,'Air','Net45','2022-11-20','ACC67890','BulkDiscount');
INSERT INTO PharmacySupplier VALUES (103,'HealthLogistics','CarolLee','5551234003','carol@healthlogistics.com','789Care Blvd','BuildingB','Lakeside','TX','73301','USA',3,'2019-09-30','2022-09-29',0,'Freight','Net60','2021-08-05','ACC24680','SpecializesInColdChain');

-- Sections of clinical guidelines
CREATE TABLE ClinicalGuidelineSection (
    GuidelineID INTEGER,
    SectionNumber INTEGER,
    Title TEXT,
    Summary TEXT,
    EffectiveDate DATE,
    ExpirationDate DATE,
    Author TEXT,
    ReviewFrequencyDays INTEGER,
    RevisionNumber INTEGER,
    Status TEXT,
    Category TEXT,
    SubCategory TEXT,
    Language TEXT,
    Version TEXT,
    Keywords TEXT,
    References TEXT,
    ImplementationNotes TEXT,
    LastUpdated DATE,
    CreatedBy TEXT,
    IsMandatory INTEGER,
    PRIMARY KEY (GuidelineID, SectionNumber)
);

INSERT INTO ClinicalGuidelineSection VALUES (10,1,'GeneralPrinciples','Overview of care','2022-01-01','2025-12-31','DrSmith',365,2,'Active','Cardiology','General','EN','v2.0','heart,care','REF001','FollowStandardProcedures','2023-04-01','AdminUser',1);
INSERT INTO ClinicalGuidelineSection VALUES (10,2,'MedicationManagement','Guidelines for drug therapy','2022-01-01','2025-12-31','DrJones',365,2,'Active','Cardiology','Medication','EN','v2.0','meds,therapy','REF002','CheckInteractions','2023-04-01','AdminUser',1);
INSERT INTO ClinicalGuidelineSection VALUES (11,1,'InfectionControl','Preventing hospital acquired infections','2021-07-01','2024-06-30','DrLee',180,1,'Draft','Infection','Control','EN','v1.5','infection,control','REF010','ImplementHandHygiene','2023-03-15','EditorUser',0);

-- Medical device inventory catalog
CREATE TABLE MedicalDeviceInventory (
    DeviceID INTEGER PRIMARY KEY,
    DeviceName TEXT,
    DeviceType TEXT,
    Manufacturer TEXT,
    Model TEXT,
    SerialNumber TEXT,
    PurchaseDate DATE,
    WarrantyEnd DATE,
    Location TEXT,
    Department TEXT,
    Status TEXT,
    CalibrationDate DATE,
    NextCalibrationDue DATE,
    LastServiceDate DATE,
    ServiceVendor TEXT,
    Cost REAL,
    Quantity INTEGER,
    ShelfLifeMonths INTEGER,
    DisposalMethod TEXT,
    HazardLevel TEXT
);

INSERT INTO MedicalDeviceInventory VALUES (5001,'Ventilator','Respiratory','Drager','V500','VN001','2020-02-10','2025-02-10','ICU-1','IntensiveCare','Active','2023-02-01','2024-02-01','2023-01-15','BioTechServ',25000.00,5,60,'Recycle','Medium');
INSERT INTO MedicalDeviceInventory VALUES (5002,'Defibrillator','Cardiac','Zoll','DF100','VN002','2019-11-05','2024-11-05','ER-3','Emergency','Active','2023-03-10','2024-03-10','2023-02-20','MediRepair',15000.00,3,48,'Dispose','High');
INSERT INTO MedicalDeviceInventory VALUES (5003,'InfusionPump','IV Therapy','Baxter','IP200','VN003','2021-06-18','2026-06-18','Ward-2','GeneralWard','Inactive','2022-12-12','2023-12-12','2022-11-30','HealTech',8000.00,10,36,'Recycle','Low');

-- Staff training modules
CREATE TABLE StaffTrainingModule (
    ModuleID INTEGER PRIMARY KEY,
    ModuleName TEXT,
    Description TEXT,
    Category TEXT,
    DurationMinutes INTEGER,
    Provider TEXT,
    ReleaseDate DATE,
    ExpirationDate DATE,
    CertificationRequired INTEGER,
    IsMandatory INTEGER,
    TargetRole TEXT,
    MaxAttempts INTEGER,
    PassScore INTEGER,
    Language TEXT,
    Version TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE,
    Status TEXT
);

INSERT INTO StaffTrainingModule VALUES (2001,'Hand Hygiene','Proper hand washing techniques','InfectionControl',30,'HealthEdu','2022-01-15','2025-01-14',0,1,'AllStaff',3,80,'EN','v1.0','HRDept','2022-01-10','HRDept','2023-02-01','Active');
INSERT INTO StaffTrainingModule VALUES (2002,'Medication Safety','Safe prescribing and administration','Pharmacy',45,'PharmaSafety','2021-09-01','2024-08-31',1,1,'Nurses','5',85,'EN','v2.1','PharmacyMgr','2021-08-20','PharmacyMgr','2023-01-15','Active');
INSERT INTO StaffTrainingModule VALUES (2003,'Fire Drill Procedures','Responding to fire emergencies','Safety',20,'SafetyFirst','2020-05-10','2023-05-09',0,0,'AllStaff',2,70,'EN','v3.0','SafetyLead','2020-04-30','SafetyLead','2022-12-01','Retired');

-- Detailed hospital energy metrics
CREATE TABLE HospitalEnergyMetricDetail (
    MetricID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    MetricDate DATE,
    ElectricityKWh REAL,
    GasTherms REAL,
    WaterCubicMeters REAL,
    SteamPounds REAL,
    RenewablePercentage REAL,
    CO2EmissionsKg REAL,
    PeakDemandKW REAL,
    AvgDemandKW REAL,
    LoadFactor REAL,
    CostUSD REAL,
    MeterReadingStart REAL,
    MeterReadingEnd REAL,
    Supplier TEXT,
    ContractType TEXT,
    TariffCode TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO HospitalEnergyMetricDetail VALUES (9001,1,'2023-01-01',120000.5,4500.2,3000.0,1500.0,25.0,85000.0,500.0,350.0,0.70,150000.00,10000.0,112000.5,'EnergyCo','Fixed','TC01','JanMetrics','2023-01-02','2023-01-15');
INSERT INTO HospitalEnergyMetricDetail VALUES (9002,1,'2023-02-01',115000.0,4400.0,2950.0,1480.0,27.0,82000.0,480.0,340.0,0.71,145000.00,112000.5,127000.5,'EnergyCo','Fixed','TC01','FebMetrics','2023-02-02','2023-02-15');
INSERT INTO HospitalEnergyMetricDetail VALUES (9003,2,'2023-01-01',90000.0,3500.0,2500.0,1200.0,30.0,60000.0,400.0,280.0,0.70,110000.00,8000.0,98000.0,'GreenPower','Variable','TC02','JanMetricsFacility2','2023-01-03','2023-01-16');

-- Public health campaign records
CREATE TABLE PublicHealthCampaign (
    CampaignID INTEGER PRIMARY KEY,
    Name TEXT,
    FocusArea TEXT,
    LaunchDate DATE,
    EndDate DATE,
    TargetPopulation TEXT,
    BudgetUSD REAL,
    FundingSource TEXT,
    PartnerOrganizations TEXT,
    MediaChannels TEXT,
    PrimaryContact TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    MetricsCollected TEXT,
    OutcomeSummary TEXT,
    Status TEXT,
    CreatedBy TEXT,
    CreatedDate DATE,
    UpdatedBy TEXT,
    UpdatedDate DATE
);

INSERT INTO PublicHealthCampaign VALUES (301,'FluVaccination2023','Immunization','2023-09-01','2023-12-31','Adults65plus',500000,'GovHealthDept','CommunityClinics;Pharmacies','TV;Radio;Online','JohnDoe','5551112222','john.doe@health.gov','VaccinationRate;AdverseEvents','IncreasedVaccinationBy12%','Completed','AdminUser','2023-08-15','AdminUser','2024-01-05');
INSERT INTO PublicHealthCampaign VALUES (302,'HeartHealthAwareness','Cardiovascular','2023-03-01','2023-06-30','GeneralPublic',300000,'PrivateSponsor','Hospitals;NGOs','SocialMedia;Print','JaneSmith','5553334444','jane.smith@ngo.org','Screenings;EducationSessions','ReducedHospitalAdmissionsBy5%','Completed','AdminUser','2023-02-20','AdminUser','2023-07-10');
INSERT INTO PublicHealthCampaign VALUES (303,'DiabetesScreening','Endocrinology','2024-01-10','2024-04-30','Adults40plus',400000,'HealthFoundation','Clinics;Pharmacies','Radio;Online','MikeBrown','5555556666','mike.brown@foundation.org','ScreeningCount;ReferralRate','PendingResults','Planned','AdminUser','2023-12-01','AdminUser','2024-01-05');

-- Research funding source details
CREATE TABLE ResearchFundingSource (
    FundingID INTEGER PRIMARY KEY,
    AgencyName TEXT,
    ProgramName TEXT,
    GrantNumber TEXT,
    StartDate DATE,
    EndDate DATE,
    TotalAmountUSD REAL,
    FundingType TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    ContactEmail TEXT,
    EligibilityCriteria TEXT,
    ReviewProcess TEXT,
    FundingStatus TEXT,
    DisbursementSchedule TEXT,
    ReportingRequirements TEXT,
    MatchingFundsRequired INTEGER,
    FederalOrState TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO ResearchFundingSource VALUES (801,'NIH','Cancer Research','R01CA12345','2022-05-01','2027-04-30',2500000,'Grant','DrAlice','5557778888','alice@nih.gov','AcademicInstitutions','PeerReview','Awarded','Annual','AnnualReport','0','Federal','HighImpact','2022-04-15','2023-01-10');
INSERT INTO ResearchFundingSource VALUES (802,'EU Horizon','AI in Healthcare','H2020-AI456','2021-01-15','2024-12-31',1500000,'Grant','DrBob','5559990000','bob@eu.eu','Consortiums','PanelReview','Awarded','MilestoneBased','SemiAnnual','1','International','Collaborative','2020-12-01','2022-06-20');
INSERT INTO ResearchFundingSource VALUES (803,'Private Foundation','Neurodegenerative Studies','PF-NEU-789','2023-03-01','2026-02-28',750000,'Endowment','DrCarol','5551112222','carol@foundation.org','NonProfit','BoardReview','Pending','Quarterly','QuarterlyReport','0','Private','FocusedOnEarlyStage','2023-02-10','2023-03-05');

-- Supply chain logistics records
CREATE TABLE SupplyChainLogistics (
    ShipmentID INTEGER PRIMARY KEY,
    VendorID INTEGER,
    OriginWarehouse TEXT,
    DestinationFacility TEXT,
    DepartureDate DATE,
    ArrivalDate DATE,
    TransportMode TEXT,
    CarrierName TEXT,
    ContainerNumber TEXT,
    PalletCount INTEGER,
    TotalWeightKg REAL,
    VolumeCubicMeters REAL,
    TemperatureControlled INTEGER,
    HazardousMaterial INTEGER,
    ShippingCostUSD REAL,
    InsuranceCostUSD REAL,
    TrackingNumber TEXT,
    DeliveryStatus TEXT,
    ReceivedBy TEXT,
    ReceivedDate DATE,
    Notes TEXT
);

INSERT INTO SupplyChainLogistics VALUES (10001,501,'WarehouseA','HospitalMain','2023-04-01','2023-04-03','Truck','FastTrans','CONT12345',25,1500.5,12.3,1,0,3500.00,250.00,'TRK100001','Delivered','JohnDoe','2023-04-03','OnTime');
INSERT INTO SupplyChainLogistics VALUES (10002,502,'WarehouseB','HospitalEast','2023-04-05','2023-04-07','Air','AirFly','CONT54321',10,800.0,6.5,0,1,12000.00,500.00,'AIR200002','Delivered','JaneSmith','2023-04-07','HandledWithCare');
INSERT INTO SupplyChainLogistics VALUES (10003,503,'WarehouseC','HospitalWest','2023-04-10','2023-04-12','Rail','RailWayCo','CONT67890',30,3000.0,20.0,1,1,8000.00,300.00,'RAIL300003','InTransit','MikeBrown','2023-04-12','DelayedDueToWeather');

-- Environmental monitoring station data
CREATE TABLE EnvironmentalMonitoringStation (
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Location TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    SensorType TEXT,
    MeasurementParameter TEXT,
    Unit TEXT,
    CalibrationDate DATE,
    CalibrationDue DATE,
    DataFrequencyMinutes INTEGER,
    LastDataTimestamp DATE,
    CurrentValue REAL,
    Status TEXT,
    MaintenanceVendor TEXT,
    MaintenanceContact TEXT,
    MaintenancePhone TEXT,
    Notes TEXT,
    CreatedAt DATE,
    UpdatedAt DATE
);

INSERT INTO EnvironmentalMonitoringStation VALUES (1,'AirQualityNorth','NorthWing','40.7128','-74.0060','2021-06-15','Electrochemical','PM2.5','µg/m3','2023-01-10','2024-01-10',15,'2023-04-10',12.5,'Active','EnviroServ','LauraGreen','5552223333','RoutineCheck','2023-03-01','2023-04-11');
INSERT INTO EnvironmentalMonitoringStation VALUES (2,'TempControlSouth','SouthWing','34.0522','-118.2437','2020-09-20','Thermocouple','Temperature','Celsius','2022-12-05','2023-12-05',5,'2023-04-10',22.0,'Active','ClimateTech','MarkWhite','5554445555','NoIssues','2022-11-20','2023-04-10');
INSERT INTO EnvironmentalMonitoringStation VALUES (3,'HumidityEast','EastCorridor','41.8781','-87.6298','2019-03-10','Capacitive','Humidity','%RH','2023-02-01','2024-02-01',10,'2023-04-09',45.0,'Active','HumidityMasters','SusanBlue','5556667777','BatteryReplaced','2023-01-15','2023-04-09');