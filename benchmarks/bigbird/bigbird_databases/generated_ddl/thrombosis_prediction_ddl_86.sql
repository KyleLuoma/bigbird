-- BiomedicalResearchProtocol: metadata for research protocols not directly linked to patient data
CREATE TABLE BiomedicalResearchProtocol (
    ProtocolID INTEGER PRIMARY KEY,
    Title TEXT,
    LeadInvestigator TEXT,
    StartDate DATE,
    EndDate DATE,
    FundingAgency TEXT,
    Budget REAL,
    Phase TEXT,
    Status TEXT,
    TargetPopulation TEXT,
    InclusionCriteria TEXT,
    ExclusionCriteria TEXT,
    SampleSize INTEGER,
    PrimaryEndpoint TEXT,
    SecondaryEndpoint TEXT,
    DataSharingPlan TEXT,
    EthicsApprovalDate DATE,
    RegulatorySubmissionDate DATE,
    Notes TEXT,
    CreatedAt DATE
);

INSERT INTO BiomedicalResearchProtocol VALUES (1,'Cardio Biomarker Study','Dr Smith','2023-01-15','2025-12-31','NIH',2500000,'Phase II','Active','Adults','Age>18','Pregnant','500','MACE reduction','Quality of life','Public repository','2023-01-10','2023-02-01','Initial enrollment','2023-01-01');
INSERT INTO BiomedicalResearchProtocol VALUES (2,'Neurodegeneration Registry','Dr Lee','2022-06-01','2027-05-31','EU Horizon','3700000','Phase III','Recruiting','Seniors','MMSE>24','Severe stroke','1200','Cognitive decline','Functional independence','Restricted access','2022-05-20','2022-06-15','Multi-center','2022-06-01');
INSERT INTO BiomedicalResearchProtocol VALUES (3,'Gut Microbiome Survey','Dr Patel','2024-03-01','2026-02-28','Gates Foundation','1500000','Phase I','Planning','Adults','BMI 18-30','Antibiotic use 30d','300','Microbial diversity','Inflammatory markers','Open data','2024-02-20','2024-03-10','Pilot phase','2024-03-01');

-- ClinicalTrialSiteFacility: facilities used for clinical trial sites, unrelated to patient tables
CREATE TABLE ClinicalTrialSiteFacility (
    FacilityID INTEGER PRIMARY KEY,
    SiteName TEXT,
    AddressLine1 TEXT,
    AddressLine2 TEXT,
    City TEXT,
    State TEXT,
    ZipCode TEXT,
    Country TEXT,
    FacilityType TEXT,
    Capacity INTEGER,
    BuiltYear INTEGER,
    AccreditationBody TEXT,
    AccreditationDate DATE,
    PrimaryContactName TEXT,
    PrimaryContactPhone TEXT,
    PrimaryContactEmail TEXT,
    SecurityLevel TEXT,
    HVACSystemType TEXT,
    BackupPowerType TEXT,
    WasteDisposalMethod TEXT,
    Notes TEXT
);

INSERT INTO ClinicalTrialSiteFacility VALUES (101,'Northwest Research Center','1234 Oak St','Suite 100','Seattle','WA','98101','USA','Laboratory',200,2010,'ISO','2015-04-12','Alice Johnson','2065551234','alice.johnson@example.com','High','HEPA','Generator','Incineration','Main clinical trial hub');
INSERT INTO ClinicalTrialSiteFacility VALUES (102,'Midwest Clinical Hub','5678 Maple Ave','Floor 2','Chicago','IL','60605','USA','Clinic',120,2005,'Joint Commission','2012-09-30','Bob Martinez','3125555678','bob.martinez@example.com','Medium','Standard','UPS','Autoclave','Secondary site for oncology studies');
INSERT INTO ClinicalTrialSiteFacility VALUES (103,'Southern Phase I Unit','9012 Pine Rd','Building B','Austin','TX','73301','USA','Phase I Unit',80,2018,'FDA','2020-01-20','Carol Lee','5125559012','carol.lee@example.com','Low','Standard','Generator','Chemical neutralization','Dedicated to early‑stage drug safety');

-- MedicalSupplyChainEvent: tracks events in the supply chain for medical supplies, not patient‑specific
CREATE TABLE MedicalSupplyChainEvent (
    EventID INTEGER PRIMARY KEY,
    ShipmentID TEXT,
    SupplierName TEXT,
    DestinationFacility TEXT,
    EventType TEXT,
    EventTimestamp DATETIME,
    Carrier TEXT,
    TrackingNumber TEXT,
    TemperatureControlled TEXT,
    Quantity INTEGER,
    UnitOfMeasure TEXT,
    ProductCategory TEXT,
    BatchNumber TEXT,
    ExpirationDate DATE,
    ReceivedBy TEXT,
    QualityCheckResult TEXT,
    DamageNotes TEXT,
    FreightCost REAL,
    CustomsClearanceDate DATE,
    DeliveryStatus TEXT,
    Remarks TEXT
);

INSERT INTO MedicalSupplyChainEvent VALUES (1001,'SHP001','MedSupply Co','Northwest Research Center','Pickup','2024-06-01 08:30:00','FastShip','TRK12345','Yes',500,'Units','Surgical Instruments','BCH001','2026-12-31','John Doe','Pass','','250.75','2024-06-03','In Transit','Initial dispatch');
INSERT INTO MedicalSupplyChainEvent VALUES (1002,'SHP002','PharmaDirect','Midwest Clinical Hub','Customs','2024-06-02 14:45:00','GlobalLogistics','TRK67890','No',2000,'Vials','Vaccines','BCH045','2025-05-20','Jane Smith','Fail','Broken seals','1800.00','2024-06-05','Held','Requires re‑inspection');
INSERT INTO MedicalSupplyChainEvent VALUES (1003,'SHP003','HealthEquip Ltd','Southern Phase I Unit','Delivery','2024-06-03 10:15:00','RapidFreight','TRK11223','Yes',150,'Boxes','Diagnostic Kits','BCH099','2027-03-15','Mike Brown','Pass','','75.40','2024-06-04','Delivered','On schedule');

-- ExternalAuditFinding: records findings from external audits unrelated to direct patient care
CREATE TABLE ExternalAuditFinding (
    FindingID INTEGER PRIMARY KEY,
    AuditName TEXT,
    AuditorFirm TEXT,
    AuditDate DATE,
    FacilityID INTEGER,
    FindingCategory TEXT,
    SeverityLevel TEXT,
    Description TEXT,
    RecommendedAction TEXT,
    ImplementationStatus TEXT,
    TargetCompletionDate DATE,
    ActualCompletionDate DATE,
    FollowUpDate DATE,
    FollowUpResult TEXT,
    DocumentationLink TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedBy TEXT,
    UpdatedAt DATETIME
);

INSERT INTO ExternalAuditFinding VALUES (1,'Safety Compliance 2023','SafeCheck Inc','2023-11-15',101,'Safety','High','Fire extinguishers missing in corridor','Install missing units','Pending','2024-01-15',NULL,NULL,NULL,'/docs/finding1.pdf','Urgent','Auditor A','2023-11-16 09:00:00','Auditor B','2023-11-16 10:30:00');
INSERT INTO ExternalAuditFinding VALUES (2,'Data Privacy Review','PrivacyGuard LLC','2024-02-20',102,'Privacy','Medium','Unencrypted laptop on desk','Enable full‑disk encryption','In Progress','2024-04-01','2024-03-28',NULL,NULL,'/docs/finding2.pdf','Completed on time','Auditor C','2024-02-21 14:20:00','Auditor D','2024-03-28 16:45:00');
INSERT INTO ExternalAuditFinding VALUES (3,'Environmental Audit','EcoAudit Corp','2024-05-05',103,'Environmental','Low','Excess paper usage','Implement digital forms','Planned','2024-07-01',NULL,NULL,NULL,'/docs/finding3.pdf','Schedule to be set','Auditor E','2024-05-06 08:15:00','Auditor F','2024-05-06 09:00:00');

-- HealthPolicyRevision: tracks updates to health policies, separate from patient tables
CREATE TABLE HealthPolicyRevision (
    RevisionID INTEGER PRIMARY KEY,
    PolicyName TEXT,
    Version TEXT,
    EffectiveDate DATE,
    ReviewDate DATE,
    AuthoringDepartment TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    ChangeSummary TEXT,
    SectionsAffected TEXT,
    ImpactAssessment TEXT,
    CommunicationPlan TEXT,
    Archived BOOLEAN,
    DocumentURL TEXT,
    Remarks TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    Status TEXT
);

INSERT INTO HealthPolicyRevision VALUES (10,'Infection Control','v2.1','2024-01-01','2023-12-01','Infection Control','Chief Medical Officer','2023-12-15','Added mask mandate for visitors','Section 3,4','Low','Email to staff','0','/policies/infection_control_v2_1.pdf','Routine update','2023-11-30 12:00:00','PolicyTeam','2024-01-02 09:30:00','PolicyTeam','Active');
INSERT INTO HealthPolicyRevision VALUES (11,'Data Retention','v3.0','2025-06-01','2025-05-01','IT Governance','CIO','2025-05-15','Extended retention for imaging data to 10 years','Section 2','Medium','Newsletter and portal notice','0','/policies/data_retention_v3.pdf','Compliance driven','2025-04-28 15:45:00','PolicyTeam','2025-06-02 10:20:00','PolicyTeam','Pending');
INSERT INTO HealthPolicyRevision VALUES (12,'Staff Wellness','v1.5','2024-09-01','2024-08-01','Human Resources','HR Director','2024-08-20','Introduced mental health days','Section 5','Low','Posters and intranet','0','/policies/staff_wellness_v1_5.pdf','Wellness initiative','2024-07-30 08:00:00','PolicyTeam','2024-09-02 11:10:00','PolicyTeam','Approved');

-- ClinicalDataLake: catalog of datasets stored in the clinical data lake, not directly patient identifiers
CREATE TABLE ClinicalDataLake (
    DatasetID INTEGER PRIMARY KEY,
    DatasetName TEXT,
    OwnerTeam TEXT,
    CreationDate DATE,
    LastRefreshDate DATE,
    RecordCount BIGINT,
    SizeGB REAL,
    DataDomain TEXT,
    StorageLocation TEXT,
    Format TEXT,
    SensitiveFlag BOOLEAN,
    RetentionPolicy TEXT,
    AccessLevel TEXT,
    DocumentationURL TEXT,
    RowSample TEXT,
    Tags TEXT,
    Description TEXT,
    CreatedBy TEXT,
    CreatedAt DATETIME,
    UpdatedAt DATETIME
);

INSERT INTO ClinicalDataLake VALUES (200,'Aggregated Lab Results','LabAnalytics','2023-03-01','2024-05-20',1250000,45.3,'Laboratory','s3://datalake/lab/aggregated','Parquet','False','12 months','ReadOnly','/docs/datasets/lab_agg.pdf','Sample rows omitted','Monthly aggregated lab metrics','DataEngTeam','2023-03-02 10:00:00','2024-05-21 14:30:00');
INSERT INTO ClinicalDataLake VALUES (201,'Imaging Metadata Index','ImagingDept','2022-07-15','2024-04-10',850000,78.9,'Imaging','s3://datalake/imaging/meta','ORC','True','5 years','Restricted','/docs/datasets/img_meta.pdf','Sample rows omitted','Metadata for all imaging studies','ImagingOps','2022-07-16 09:30:00','2024-04-11 11:45:00');
INSERT INTO ClinicalDataLake VALUES (202,'Pharmacy Dispensation Summary','Pharmacy','2021-01-10','2024-05-01',2000000,32.1,'Pharmacy','s3://datalake/pharmacy/summary','CSV','False','3 years','ReadOnly','/docs/datasets/pharm_summary.pdf','Sample rows omitted','Summary of dispensed medications','PharmAnalytics','2021-01-11 08:45:00','2024-05-02 13:20:00');

-- MedicalDeviceFailureTrend: aggregates failure statistics for medical devices across facilities
CREATE TABLE MedicalDeviceFailureTrend (
    TrendID INTEGER PRIMARY KEY,
    DeviceModel TEXT,
    Manufacturer TEXT,
    FailureCategory TEXT,
    FailureCount INTEGER,
    AffectedFacilities INTEGER,
    FirstFailureDate DATE,
    LastFailureDate DATE,
    MeanTimeBetweenFailures REAL,
    WarrantyPeriodMonths INTEGER,
    ServiceContract BOOLEAN,
    ReplacementCost REAL,
    RootCauseSummary TEXT,
    MitigationStrategy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    Status TEXT,
    Notes TEXT
);

INSERT INTO MedicalDeviceFailureTrend VALUES (301,'VentX200','MediTech','Power Failure',12,4,'2022-02-10','2024-03-22',180.5,36,1,15000,'Battery degradation','Implement regular battery checks','2024-04-01 10:00:00','EngineerA','2022-02-10 09:00:00','EngineerA','Active','Monitor quarterly');
INSERT INTO MedicalDeviceFailureTrend VALUES (302,'InfusePro','HealthFlow','Software Crash',8,3,'2021-11-05','2024-01-15',210.0,24,1,8000,'Firmware bug','Upgrade to version 3.2','2024-02-10 14:20:00','EngineerB','2021-11-05 08:30:00','EngineerB','Active','Patch scheduled');
INSERT INTO MedicalDeviceFailureTrend VALUES (303,'EchoMax','CardioSonics','Mechanical Wear',5,2,'2023-04-12','2024-02-28',150.2,48,0,20000,'Transducer fatigue','Replace transducers annually','2024-03-05 11:15:00','EngineerC','2023-04-12 07:45:00','EngineerC','Monitoring','Observe wear patterns');

-- FacilityRenewableEnergySource: records renewable energy installations at facilities, distinct from patient data
CREATE TABLE FacilityRenewableEnergySource (
    InstallationID INTEGER PRIMARY KEY,
    FacilityID INTEGER,
    EnergyType TEXT,
    CapacityKW REAL,
    InstallationDate DATE,
    ContractorName TEXT,
    ExpectedLifetimeYears INTEGER,
    CurrentStatus TEXT,
    MaintenanceContract BOOLEAN,
    LastInspectionDate DATE,
    NextInspectionDue DATE,
    CO2ReductionTonnes REAL,
    IncentiveReceived REAL,
    OwnerDepartment TEXT,
    SourceLocation TEXT,
    Latitude REAL,
    Longitude REAL,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME
);

INSERT INTO FacilityRenewableEnergySource VALUES (401,101,'Solar PV',250.5,'2022-06-15','SunPower Ltd',25,'Operational',1,'2024-01-10','2025-01-10',150.2,50000,'Facilities','Rooftop','47.6097','-122.3331','2022-06-16 09:00:00','EnergyTeam','2024-02-01 12:30:00');
INSERT INTO FacilityRenewableEnergySource VALUES (402,102,'Wind Turbine',350.0,'2021-09-30','WindWorks',30,'Operational',1,'2023-11-20','2024-11-20',200.0,75000,'Facilities','North Field','41.8781','-87.6298','2021-10-01 10:15:00','EnergyTeam','2024-01-15 08:45:00');
INSERT INTO FacilityRenewableEnergySource VALUES (403,103,'Geothermal',120.0,'2023-03-05','GeoHeat Inc',20,'Operational',0,'2024-04-18','2025-04-18',80.5,30000,'Facilities','Underground','30.2672','-97.7431','2023-03-06 11:20:00','EnergyTeam','2024-04-20 14:00:00');

-- PharmacyFormularyChangeLog: logs changes to the pharmacy formulary, independent of patient prescription tables
CREATE TABLE PharmacyFormularyChangeLog (
    ChangeID INTEGER PRIMARY KEY,
    DrugName TEXT,
    Strength TEXT,
    Form TEXT,
    ChangeType TEXT,
    EffectiveDate DATE,
    Reason TEXT,
    ApprovedBy TEXT,
    ApprovalDate DATE,
    PreviousStatus TEXT,
    NewStatus TEXT,
    ImpactLevel TEXT,
    ClinicalReview TEXT,
    PharmacyReview TEXT,
    Notes TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME,
    UpdatedBy TEXT,
    Status TEXT
);

INSERT INTO PharmacyFormularyChangeLog VALUES (501,'Atorvastatin','20mg','Tablet','Addition','2024-07-01','Guideline update','Medical Director','2024-06-20','Not Listed','Preferred','Medium','Reviewed by cardiology','Approved by pharmacy','Added based on new cholesterol guidelines','2024-06-21 09:00:00','FormularyTeam','2024-07-02 10:30:00','FormularyTeam','Active');
INSERT INTO PharmacyFormularyChangeLog VALUES (502,'Metformin','500mg','Tablet','Deletion','2024-08-15','Safety concern','Chief Pharmacist','2024-08-01','Preferred','Removed','High','Safety review completed','Removed due to adverse event reports','Removed following FDA safety communication','2024-08-02 08:45:00','FormularyTeam','2024-08-16 11:15:00','FormularyTeam','Completed');
INSERT INTO PharmacyFormularyChangeLog VALUES (503,'Lisinopril','10mg','Tablet','Modification','2024-09-10','Dose adjustment','Pharmacy Committee','2024-08-28','Preferred','Preferred','Low','Dose range updated','Dose adjustment approved','Adjusted to align with recent trial data','2024-08-29 07:30:00','FormularyTeam','2024-09-11 09:00:00','FormularyTeam','Pending');

-- PatientTransportLogistics: records logistics of patient transport services without containing clinical details
CREATE TABLE PatientTransportLogistics (
    TransportID INTEGER PRIMARY KEY,
    RequestDate DATE,
    ScheduledDate DATE,
    OriginFacility TEXT,
    DestinationFacility TEXT,
    TransportMode TEXT,
    VehicleID TEXT,
    DriverName TEXT,
    ContactNumber TEXT,
    Capacity INTEGER,
    WheelchairAccessible BOOLEAN,
    EstimatedDurationMinutes INTEGER,
    ActualDurationMinutes INTEGER,
    CostUSD REAL,
    ServiceProvider TEXT,
    Status TEXT,
    CancellationReason TEXT,
    CreatedAt DATETIME,
    CreatedBy TEXT,
    UpdatedAt DATETIME
);

INSERT INTO PatientTransportLogistics VALUES (601,'2024-05-01','2024-05-02','Northwest Research Center','Midwest Clinical Hub','Ambulance','VAN001','Tom Harris','2065557777',2,1,45,50,120.00,'HealthTransport Co','Completed','','2024-05-01 08:00:00','LogisticsTeam','2024-05-02 11:00:00');
INSERT INTO PatientTransportLogistics VALUES (602,'2024-05-10','2024-05-11','Southern Phase I Unit','Northwest Research Center','Van','VAN045','Linda Green','5125558888',8,0,30,28,85.50,'MediTrans Services','Cancelled','Patient no‑show','2024-05-10 09:15:00','LogisticsTeam','2024-05-11 07:30:00');
INSERT INTO PatientTransportLogistics VALUES (603,'2024-06-01','2024-06-03','Midwest Clinical Hub','Southern Phase I Unit','Wheelchair Van','VAN023','Sam Patel','3125559999',4,1,60,58,140.75','RapidRide','Completed','','2024-06-01 10:45:00','LogisticsTeam','2024-06-03 14:20:00');

-- ResearchDataCatalog: metadata about research data assets, separate from patient tables
CREATE TABLE ResearchDataCatalog (
    AssetID INTEGER PRIMARY KEY,
    AssetName TEXT,
    OwnerDepartment TEXT,
    CreationDate DATE,
    LastModifiedDate DATE,
    DataFormat TEXT,
    StorageLocation TEXT,
    ConfidentialityLevel TEXT,
    AccessPolicy TEXT,
    SizeGB REAL,
    RecordCount BIGINT,
    Description TEXT,
    Keywords TEXT,
    License TEXT,
    DOI TEXT,
    Citation TEXT,
    RetentionPeriodYears INTEGER,
    IsActive BOOLEAN,
    CreatedBy TEXT,
    CreatedAt DATETIME
);

INSERT INTO ResearchDataCatalog VALUES (701,'Genomic Variant Calls','Genomics','2022-02-15','2024-04-20','VCF','s3://research/genomics/variants','High','Restricted','120.5',2500000,'Variant calls from whole genome sequencing','genomics,variants,wgs','CC0','10.1234/genome.vc','Doe et al 2023','7',1,'DataMgr','2022-02-16 08:00:00');
INSERT INTO ResearchDataCatalog VALUES (702,'Electronic Survey Results','PublicHealth','2021-09-01','2024-03-10','CSV','s3://research/publichealth/surveys','Medium','Approved','45.2',850000,'Results from community health surveys','survey,public health','CC-BY','10.5678/survey.pub','Smith et al 2022','5',1,'DataMgr','2021-09-02 09:15:00');
INSERT INTO ResearchDataCatalog VALUES (703,'Imaging Metadata Archive','Radiology','2020-05-20','2024-05-01','JSON','s3://research/radiology/metadata','Low','Open','78.0',1500000,'Metadata for imaging studies over 4 years','imaging,metadata,radiology','CC0','10.9012/imaging.meta','Lee et al 2021','10',1,'DataMgr','2020-05-21 07:30:00');