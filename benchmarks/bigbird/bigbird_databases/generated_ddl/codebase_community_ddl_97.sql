-- City infrastructure projects – details of municipal construction initiatives
CREATE TABLE city_infrastructure_projects
(
    ProjectId                INTEGER PRIMARY KEY,
    ProjectName              TEXT,
    StartDate                DATE,
    EndDate                  DATE,
    BudgetUsd                REAL,
    Status                   TEXT,
    LeadAgency               TEXT,
    Region                   TEXT,
    Description              TEXT,
    OwnerContactEmail        TEXT,
    PlanningPhaseStart       DATE,
    PlanningPhaseEnd         DATE,
    ConstructionPhaseStart   DATE,
    ConstructionPhaseEnd     DATE,
    InspectionDate           DATE,
    PermitNumber             TEXT,
    EnvironmentalImpactScore INTEGER,
    FundingSource            TEXT,
    ProjectType              TEXT,
    CoordinatesLat           REAL,
    CoordinatesLong          REAL,
    ExpectedPopulationImpact INTEGER,
    RiskLevel                TEXT
);

INSERT INTO city_infrastructure_projects (ProjectId,ProjectName,StartDate,EndDate,BudgetUsd,Status,LeadAgency,Region,Description,OwnerContactEmail,PlanningPhaseStart,PlanningPhaseEnd,ConstructionPhaseStart,ConstructionPhaseEnd,InspectionDate,PermitNumber,EnvironmentalImpactScore,FundingSource,ProjectType,CoordinatesLat,CoordinatesLong,ExpectedPopulationImpact,RiskLevel) VALUES (101,'Riverfront_Redevelopment','2023-01-15','2025-06-30',25000000,'InProgress','City_Public_Work','North_District','Redeveloping riverfront area','contact@city.gov','2022-05-01','2022-11-30','2023-02-01','2025-05-15','2025-06-01','PERM12345',85,'Municipal_Bonds','Mixed_Use',40.7128,-74.0060,120000,'Medium');
INSERT INTO city_infrastructure_projects (ProjectId,ProjectName,StartDate,EndDate,BudgetUsd,Status,LeadAgency,Region,Description,OwnerContactEmail,PlanningPhaseStart,PlanningPhaseEnd,ConstructionPhaseStart,ConstructionPhaseEnd,InspectionDate,PermitNumber,EnvironmentalImpactScore,FundingSource,ProjectType,CoordinatesLat,CoordinatesLong,ExpectedPopulationImpact,RiskLevel) VALUES (102,'Eastside_Transit_Hub','2022-09-01','2024-12-31',18000000,'Planned','Transit_Authority','East_District','New transit hub with park-and-ride','transit@city.gov','2022-01-10','2022-08-15','2022-10-01','2024-11-15','2024-12-01','PERM67890',70,'State_Grants','Transportation',40.7306,-73.9352,50000,'Low');
INSERT INTO city_infrastructure_projects (ProjectId,ProjectName,StartDate,EndDate,BudgetUsd,Status,LeadAgency,Region,Description,OwnerContactEmail,PlanningPhaseStart,PlanningPhaseEnd,ConstructionPhaseStart,ConstructionPhaseEnd,InspectionDate,PermitNumber,EnvironmentalImpactScore,FundingSource,ProjectType,CoordinatesLat,CoordinatesLong,ExpectedPopulationImpact,RiskLevel) VALUES (103,'Westside_Park_Revitalization','2021-03-20','2023-09-30',9500000,'Completed','Parks_Department','West_District','Upgrade of existing park facilities','parks@city.gov','2020-06-01','2020-12-31','2021-04-01','2023-08-15','2023-09-10','PERM54321',60,'Public_Funds','Recreation',40.7484,-73.9857,25000,'Low');

-- Wildlife conservation activities – field observations and interventions
CREATE TABLE wildlife_conservation_activities
(
    ActivityId               INTEGER PRIMARY KEY,
    Species                  TEXT,
    Location                 TEXT,
    ObservationDate          DATE,
    ObserverId               INTEGER,
    CountObserved            INTEGER,
    ActivityType             TEXT,
    Habitat                  TEXT,
    ConservationStatus      TEXT,
    Notes                    TEXT,
    Latitude                 REAL,
    Longitude                REAL,
    WeatherCondition         TEXT,
    EquipmentUsed            TEXT,
    FundingGrant             TEXT,
    PartnerOrganization      TEXT,
    DurationHours            REAL,
    AreaSizeHa               REAL,
    ThreatLevel              TEXT,
    FollowUpNeeded           TEXT,
    ReportingOfficerId       INTEGER,
    DataVerified             TEXT,
    GPSAccuracyMeters        REAL,
    PhotoReferenceId         INTEGER
);

INSERT INTO wildlife_conservation_activities (ActivityId,Species,Location,ObservationDate,ObserverId,CountObserved,ActivityType,Habitat,ConservationStatus,Notes,Latitude,Longitude,WeatherCondition,EquipmentUsed,FundingGrant,PartnerOrganization,DurationHours,AreaSizeHa,ThreatLevel,FollowUpNeeded,ReportingOfficerId,DataVerified,GPSAccuracyMeters,PhotoReferenceId) VALUES (201,'Bald_Eagle','River_Valley','2023-04-12',45,3,'Nesting','Riparian','Least_Concern','Nest observed near cliff',45.1234,-122.5678,'Clear','Binoculars','Grant_A123','WildLife_NGO',2.5,0.5,'Low','No',12,'Yes',5,301);
INSERT INTO wildlife_conservation_activities (ActivityId,Species,Location,ObservationDate,ObserverId,CountObserved,ActivityType,Habitat,ConservationStatus,Notes,Latitude,Longitude,WeatherCondition,EquipmentUsed,FundingGrant,PartnerOrganization,DurationHours,AreaSizeHa,ThreatLevel,FollowUpNeeded,ReportingOfficerId,DataVerified,GPSAccuracyMeters,PhotoReferenceId) VALUES (202,'Gray_Wolf','Northern_Forest','2023-05-03',78,2,'Tracking','Forest','Near_Threatened','Collared individuals tracked',48.7654,-115.4321,'Rain','GPS_Collar','Grant_B456','Conservation_Trust',4.0,1.2,'Medium','Yes',15,'Pending',10,302);
INSERT INTO wildlife_conservation_activities (ActivityId,Species,Location,ObservationDate,ObserverId,CountObserved,ActivityType,Habitat,ConservationStatus,Notes,Latitude,Longitude,WeatherCondition,EquipmentUsed,FundingGrant,PartnerOrganization,DurationHours,AreaSizeHa,ThreatLevel,FollowUpNeeded,ReportingOfficerId,DataVerified,GPSAccuracyMeters,PhotoReferenceId) VALUES (203,'Loggerhead_Sea_Turtle','Coastal_Beach','2023-06-21',102,1,'Rescue','Marine','Endangered','Stranded turtle recovered',33.9876,-118.1234,'Sunny','Rescue_Kit','Grant_C789','Marine_Savers',3.0,0.0,'High','Yes',9,'Yes',2,303);

-- Renewable energy asset maintenance – records of upkeep activities for solar and wind installations
CREATE TABLE renewable_energy_asset_maintenance
(
    MaintenanceId           INTEGER PRIMARY KEY,
    AssetId                 INTEGER,
    AssetType               TEXT,
    SiteLocation            TEXT,
    MaintenanceDate         DATE,
    TechnicianId            INTEGER,
    WorkOrderNumber         TEXT,
    Description             TEXT,
    DowntimeHours           REAL,
    CostUsd                 REAL,
    PartsReplaced           TEXT,
    InspectionResult        TEXT,
    SafetyLevel             TEXT,
    WeatherImpact           TEXT,
    ScheduledBy             TEXT,
    ApprovalStatus          TEXT,
    VoltageCheckVolt        REAL,
    FrequencyCheckHz        REAL,
    TemperatureReadingC     REAL,
    Remarks                 TEXT,
    FollowUpDate            DATE,
    ContractorCompany       TEXT,
    MaintenanceCategory     TEXT,
    LogReferenceId          INTEGER
);

INSERT INTO renewable_energy_asset_maintenance (MaintenanceId,AssetId,AssetType,SiteLocation,MaintenanceDate,TechnicianId,WorkOrderNumber,Description,DowntimeHours,CostUsd,PartsReplaced,InspectionResult,SafetyLevel,WeatherImpact,ScheduledBy,ApprovalStatus,VoltageCheckVolt,FrequencyCheckHz,TemperatureReadingC,Remarks,FollowUpDate,ContractorCompany,MaintenanceCategory,LogReferenceId) VALUES (301,5001,'Solar_Panel','Desert_Site_A','2023-03-15',210,'WO1001','Panel cleaning and wiring check',1.2,1500,'Cleaning_Kits','Pass','High','None','System_Scheduler','Approved',480.5,60.0,35.2,'All good','2023-06-15','SolarTech_Inc','Preventive',401);
INSERT INTO renewable_energy_asset_maintenance (MaintenanceId,AssetId,AssetType,SiteLocation,MaintenanceDate,TechnicianId,WorkOrderNumber,Description,DowntimeHours,CostUsd,PartsReplaced,InspectionResult,SafetyLevel,WeatherImpact,ScheduledBy,ApprovalStatus,VoltageCheckVolt,FrequencyCheckHz,TemperatureReadingC,Remarks,FollowUpDate,ContractorCompany,MaintenanceCategory,LogReferenceId) VALUES (302,6002,'Wind_Turbine','Coastal_Farm_B','2023-04-20',315,'WO2002','Gearbox oil replacement',3.5,4200,'Gearbox_Oil','Pass','Medium','High_Winds','System_Scheduler','Approved',720.0,50.0,22.5,'Oil replaced successfully','2023-09-20','WindWorks_LLC','Corrective',402);
INSERT INTO renewable_energy_asset_maintenance (MaintenanceId,AssetId,AssetType,SiteLocation,MaintenanceDate,TechnicianId,WorkOrderNumber,Description,DowntimeHours,CostUsd,PartsReplaced,InspectionResult,SafetyLevel,WeatherImpact,ScheduledBy,ApprovalStatus,VoltageCheckVolt,FrequencyCheckHz,TemperatureReadingC,Remarks,FollowUpDate,ContractorCompany,MaintenanceCategory,LogReferenceId) VALUES (303,7003,'Solar_Panel','Mountain_Valley','2023-05-05',190,'WO3003','Inverter replacement due to fault',2.0,3200,'Inverter_ModelX','Fail','High','Cold_Snap','Manual_Request','Pending',500.0,60.0,15.0,'Inverter will be replaced','2023-08-05','ElectroServe','Corrective',403);

-- Satellite imagery metadata – technical details for each captured image
CREATE TABLE satellite_imagery_metadata
(
    ImageId                 INTEGER PRIMARY KEY,
    SatelliteName           TEXT,
    CaptureDate             DATE,
    CaptureTime             TEXT,
    ResolutionMeters        REAL,
    BandCount               INTEGER,
    CloudCoveragePercent   REAL,
    SensorType              TEXT,
    OrbitNumber             INTEGER,
    PathNumber              INTEGER,
    RowNumber               INTEGER,
    GeolocationLat          REAL,
    GeolocationLong         REAL,
    FileSizeMb              REAL,
    Checksum                TEXT,
    ProcessingLevel         TEXT,
    Projection              TEXT,
    CoverageAreaKm2         REAL,
    AcquisitionMode         TEXT,
    DataProvider            TEXT,
    RadiometricResolution   TEXT,
    ImagingAngleDegrees     REAL,
    Polarization            TEXT,
    MetadataVersion         TEXT
);

INSERT INTO satellite_imagery_metadata (ImageId,SatelliteName,CaptureDate,CaptureTime,ResolutionMeters,BandCount,CloudCoveragePercent,SensorType,OrbitNumber,PathNumber,RowNumber,GeolocationLat,GeolocationLong,FileSizeMb,Checksum,ProcessingLevel,Projection,CoverageAreaKm2,AcquisitionMode,DataProvider,RadiometricResolution,ImagingAngleDegrees,Polarization,MetadataVersion) VALUES (1001,'Landsat8','2023-01-10','09:15:00',30.0,11,12.5,'OLI_TIRS',20234,115,22,34.0567,-117.1956,250.4,'ABC123DEF','Level2','UTM_Zone11N',150.0,'Nadir','USGS','12bit',0.0,'Single','v1.2');
INSERT INTO satellite_imagery_metadata (ImageId,SatelliteName,CaptureDate,CaptureTime,ResolutionMeters,BandCount,CloudCoveragePercent,SensorType,OrbitNumber,PathNumber,RowNumber,GeolocationLat,GeolocationLong,FileSizeMb,Checksum,ProcessingLevel,Projection,CoverageAreaKm2,AcquisitionMode,DataProvider,RadiometricResolution,ImagingAngleDegrees,Polarization,MetadataVersion) VALUES (1002,'Sentinel2','2023-02-18','11:42:00',10.0,13,5.0,'MSI',15420,78,9,48.8566,2.3522,780.2,'XYZ789GHI','Level1C','UTM_Zone31N',300.0,'OffNadir','ESA','16bit',15.0,'Dual','v2.0');
INSERT INTO satellite_imagery_metadata (ImageId,SatelliteName,CaptureDate,CaptureTime,ResolutionMeters,BandCount,CloudCoveragePercent,SensorType,OrbitNumber,PathNumber,RowNumber,GeolocationLat,GeolocationLong,FileSizeMb,Checksum,ProcessingLevel,Projection,CoverageAreaKm2,AcquisitionMode,DataProvider,RadiometricResolution,ImagingAngleDegrees,Polarization,MetadataVersion) VALUES (1003,'WorldView3','2023-03-05','14:30:00',0.31,8,0.2,'PAN_MS',34567,22,33,40.7128,-74.0060,1500.0,'LMN456OPQ','Level2A','WGS84',50.0,'Mosaic','Maxar','14bit',7.5,'Quad','v3.1');

-- Clinical trial participant metrics – health measurements for each participant
CREATE TABLE clinical_trial_participant_metrics
(
    ParticipantId          INTEGER PRIMARY KEY,
    TrialId                INTEGER,
    EnrollmentDate         DATE,
    AgeYears               INTEGER,
    Sex                    TEXT,
    WeightKg               REAL,
    HeightCm               REAL,
    BloodPressureSys       INTEGER,
    BloodPressureDia       INTEGER,
    CholesterolMgdl        INTEGER,
    GlucoseMgdl            INTEGER,
    AdverseEventFlag      TEXT,
    AdverseEventDescription TEXT,
    VisitCount             INTEGER,
    LastVisitDate          DATE,
    MedicationDosageMg     REAL,
    ComplianceScore        REAL,
    FollowUpDate           DATE,
    OutcomeScore           REAL,
    InvestigatorNotes      TEXT,
    SmokingStatus          TEXT,
    AlcoholUseFrequency    TEXT,
    BaselineEjectionFraction REAL,
    ConcomitantMedications TEXT
);

INSERT INTO clinical_trial_participant_metrics (ParticipantId,TrialId,EnrollmentDate,AgeYears,Sex,WeightKg,HeightCm,BloodPressureSys,BloodPressureDia,CholesterolMgdl,GlucoseMgdl,AdverseEventFlag,AdverseEventDescription,VisitCount,LastVisitDate,MedicationDosageMg,ComplianceScore,FollowUpDate,OutcomeScore,InvestigatorNotes,SmokingStatus,AlcoholUseFrequency,BaselineEjectionFraction,ConcomitantMedications) VALUES (401,10001,'2022-11-01',45,'F',68.5,165,120,78,190,95,'No','',5,'2023-05-20',50.0,92.5,'2023-11-01',85.0,'Patient stable','Never','Occasional',55.0,'Aspirin');
INSERT INTO clinical_trial_participant_metrics (ParticipantId,TrialId,EnrollmentDate,AgeYears,Sex,WeightKg,HeightCm,BloodPressureSys,BloodPressureDia,CholesterolMgdl,GlucoseMgdl,AdverseEventFlag,AdverseEventDescription,VisitCount,LastVisitDate,MedicationDosageMg,ComplianceScore,FollowUpDate,OutcomeScore,InvestigatorNotes,SmokingStatus,AlcoholUseFrequency,BaselineEjectionFraction,ConcomitantMedications) VALUES (402,10001,'2022-12-15',62,'M',82.0,178,138,85,210,110,'Yes','Mild headache',4,'2023-05-22',75.0,88.0,'2023-11-15',78.0,'Reported mild side effect','Former','Weekly',50.0,'Metformin');
INSERT INTO clinical_trial_participant_metrics (ParticipantId,TrialId,EnrollmentDate,AgeYears,Sex,WeightKg,HeightCm,BloodPressureSys,BloodPressureDia,CholesterolMgdl,GlucoseMgdl,AdverseEventFlag,AdverseEventDescription,VisitCount,LastVisitDate,MedicationDosageMg,ComplianceScore,FollowUpDate,OutcomeScore,InvestigatorNotes,SmokingStatus,AlcoholUseFrequency,BaselineEjectionFraction,ConcomitantMedications) VALUES (403,10002,'2023-01-10',29,'F',55.2,160,110,70,170,85,'No','',6,'2023-05-25',30.0,95.0,'2023-12-01',92.0,'Excellent response','Never','None',60.0,'None');

-- Museum exhibit item inventory – catalog of objects on display or storage
CREATE TABLE museum_exhibit_item_inventory
(
    ItemId                 INTEGER PRIMARY KEY,
    ExhibitName            TEXT,
    Category               TEXT,
    AcquisitionDate        DATE,
    OriginCountry          TEXT,
    HistoricalPeriod       TEXT,
    Material               TEXT,
    DimensionsCm           TEXT,
    WeightKg               REAL,
    CurrentLocation        TEXT,
    DisplayStatus          TEXT,
    ConditionRating        INTEGER,
    ConservationTreatment  TEXT,
    InsuranceValueUsd      REAL,
    CuratorId              INTEGER,
    LoanStatus             TEXT,
    LoanStartDate          DATE,
    LoanEndDate            DATE,
    Sponsor                TEXT,
    QRCode                 TEXT,
    DigitalAssetLink       TEXT,
    AcquisitionMethod      TEXT,
    ProvenanceNotes        TEXT,
    ExhibitTheme           TEXT
);

INSERT INTO museum_exhibit_item_inventory (ItemId,ExhibitName,Category,AcquisitionDate,OriginCountry,HistoricalPeriod,Material,DimensionsCm,WeightKg,CurrentLocation,DisplayStatus,ConditionRating,ConservationTreatment,InsuranceValueUsd,CuratorId,LoanStatus,LoanStartDate,LoanEndDate,Sponsor,QRCode,DigitalAssetLink,AcquisitionMethod,ProvenanceNotes,ExhibitTheme) VALUES (501,'Ancient_Vase','Ceramics','2018-05-12','Greece','Hellenistic','Clay','30x15x15','2.5','Gallery_A','OnDisplay','8','Stabilization','120000','23','None',NULL,NULL,'National_Gift','QR001','http://museum.org/assets/501','Donation','Recovered from archaeological dig','Ancient_Art');
INSERT INTO museum_exhibit_item_inventory (ItemId,ExhibitName,Category,AcquisitionDate,OriginCountry,HistoricalPeriod,Material,DimensionsCm,WeightKg,CurrentLocation,DisplayStatus,ConditionRating,ConservationTreatment,InsuranceValueUsd,CuratorId,LoanStatus,LoanStartDate,LoanEndDate,Sponsor,QRCode,DigitalAssetLink,AcquisitionMethod,ProvenanceNotes,ExhibitTheme) VALUES (502,'Renaissance_Painting','Painting','2020-09-30','Italy','Renaissance','Oil_on_canvas','120x80','10.0','Storage_Room_3','InStorage','9','Cleaning','500000','35','OnLoan','2021-06-01','2022-06-01','Private_Collector','QR002','http://museum.org/assets/502','Purchase','Provenance documented through family estate','Renaissance_Masters');
INSERT INTO museum_exhibit_item_inventory (ItemId,ExhibitName,Category,AcquisitionDate,OriginCountry,HistoricalPeriod,Material,DimensionsCm,WeightKg,CurrentLocation,DisplayStatus,ConditionRating,ConservationTreatment,InsuranceValueUsd,CuratorId,LoanStatus,LoanStartDate,LoanEndDate,Sponsor,QRCode,DigitalAssetLink,AcquisitionMethod,ProvenanceNotes,ExhibitTheme) VALUES (503,'Modern_Sculpture','Sculpture','2022-03-15','USA','Contemporary','Bronze','200x50x50','150.0','Gallery_B','OnDisplay','7','Polishing','250000','42','None',NULL,NULL,'Corporate_Sponsor','QR003','http://museum.org/assets/503','Donation','Donated by artist','Modern_Art');

-- Urban planning project documents – metadata about plans and reports
CREATE TABLE urban_planning_project_documents
(
    DocumentId            INTEGER PRIMARY KEY,
    ProjectId             INTEGER,
    DocumentType          TEXT,
    Title                 TEXT,
    RevisionNumber        INTEGER,
    AuthorId              INTEGER,
    CreatedDate           DATE,
    ModifiedDate          DATE,
    FileFormat            TEXT,
    FileSizeKb            INTEGER,
    Language              TEXT,
    ApprovalStatus        TEXT,
    AccessLevel           TEXT,
    StoragePath           TEXT,
    Checksum              TEXT,
    Tags                  TEXT,
    Summary               TEXT,
    RelatedStakeholder    TEXT,
    PublicationDate       DATE,
    ConfidentialFlag      TEXT,
    VersionControlSystem  TEXT,
    DigitalSignature      TEXT,
    ReviewComments        TEXT,
    DistributionList      TEXT,
    RetentionPeriodMonths INTEGER,
    DocumentStatus        TEXT
);

INSERT INTO urban_planning_project_documents (DocumentId,ProjectId,DocumentType,Title,RevisionNumber,AuthorId,CreatedDate,ModifiedDate,FileFormat,FileSizeKb,Language,ApprovalStatus,AccessLevel,StoragePath,Checksum,Tags,Summary,RelatedStakeholder,PublicationDate,ConfidentialFlag,VersionControlSystem,DigitalSignature,ReviewComments,DistributionList,RetentionPeriodMonths,DocumentStatus) VALUES (601,101,'Plan','Riverfront_Master_Plan',2,12,'2022-01-10','2023-02-14','PDF',3500,'English','Approved','Public','/docs/riverfront_master.pdf','ABC123DEF','Infrastructure,Urban','Comprehensive plan for riverfront redevelopment','City_Council','2023-02-15','No','Git','SIG001','All comments addressed','All_Departments',60,'Active');
INSERT INTO urban_planning_project_documents (DocumentId,ProjectId,DocumentType,Title,RevisionNumber,AuthorId,CreatedDate,ModifiedDate,FileFormat,FileSizeKb,Language,ApprovalStatus,AccessLevel,StoragePath,Checksum,Tags,Summary,RelatedStakeholder,PublicationDate,ConfidentialFlag,VersionControlSystem,DigitalSignature,ReviewComments,DistributionList,RetentionPeriodMonths,DocumentStatus) VALUES (602,102,'Environmental_Impact_Study','Eastside_Transit_Environmental_Impact',1,27,'2022-05-01','2022-10-20','DOCX',2200,'English','Pending','Restricted','/docs/eastside_eis.docx','XYZ789GHI','Transport,Environment','Analysis of environmental effects','Environmental_Agency','2022-10-21','Yes','SVN','SIG002','Pending review','Planning_Team',36,'Draft');
INSERT INTO urban_planning_project_documents (DocumentId,ProjectId,DocumentType,Title,RevisionNumber,AuthorId,CreatedDate,ModifiedDate,FileFormat,FileSizeKb,Language,ApprovalStatus,AccessLevel,StoragePath,Checksum,Tags,Summary,RelatedStakeholder,PublicationDate,ConfidentialFlag,VersionControlSystem,DigitalSignature,ReviewComments,DistributionList,RetentionPeriodMonths,DocumentStatus) VALUES (603,103,'Report','Westside_Park_Revitalization_Final_Report',3,34,'2020-03-05','2021-01-15','PDF',1800,'English','Approved','Public','/reports/westside_final.pdf','LMN456OPQ','Recreation,Park','Final outcomes and metrics','Parks_Department','2021-01-16','No','Git','SIG003','No outstanding issues','Public',24,'Closed');

-- Food supply chain transactions – movement of food products between entities
CREATE TABLE food_supply_chain_transactions
(
    TransactionId          INTEGER PRIMARY KEY,
    ProductId              INTEGER,
    ProductName            TEXT,
    BatchNumber            TEXT,
    SupplierId             INTEGER,
    OriginCountry          TEXT,
    DestinationWarehouseId  INTEGER,
    QuantityKg             REAL,
    UnitCostUsd            REAL,
    TotalCostUsd           REAL,
    ShipmentDate           DATE,
    ArrivalDate            DATE,
    TransportMode          TEXT,
    CarrierName            TEXT,
    TemperatureControlledFlag TEXT,
    InspectionResult       TEXT,
    CustomsClearanceDate   DATE,
    InvoiceNumber          TEXT,
    PaymentStatus          TEXT,
    Remarks                TEXT,
    HazardAnalysisCert     TEXT,
    PalletCount            INTEGER,
    LoadSequenceNumber     INTEGER,
    WeightTolerancePercent REAL,
    ShippingDocumentLink   TEXT,
    QualityScore           REAL,
    ComplianceFlag         TEXT,
    DestinationRegion      TEXT,
    SupplierContactEmail   TEXT,
    ReceivedByEmployeeId   INTEGER,
    TransactionStatus      TEXT
);

INSERT INTO food_supply_chain_transactions (TransactionId,ProductId,ProductName,BatchNumber,SupplierId,OriginCountry,DestinationWarehouseId,QuantityKg,UnitCostUsd,TotalCostUsd,ShipmentDate,ArrivalDate,TransportMode,CarrierName,TemperatureControlledFlag,InspectionResult,CustomsClearanceDate,InvoiceNumber,PaymentStatus,Remarks,HazardAnalysisCert,PalletCount,LoadSequenceNumber,WeightTolerancePercent,ShippingDocumentLink,QualityScore,ComplianceFlag,DestinationRegion,SupplierContactEmail,ReceivedByEmployeeId,TransactionStatus) VALUES (701,2001,'Organic_Almonds','BATCHA001',55,'Spain',101,1500.0,3.2,4800.0,'2023-04-10','2023-04-12','Truck','FastLogistics','Yes','Pass','2023-04-13','INV7001','Paid','All good','CERT123',30,1,0.5,'http://logistics.com/doc/7001','95.0','Yes','Europe','supplier@almonds.es',3001,'Completed');
INSERT INTO food_supply_chain_transactions (TransactionId,ProductId,ProductName,BatchNumber,SupplierId,OriginCountry,DestinationWarehouseId,QuantityKg,UnitCostUsd,TotalCostUsd,ShipmentDate,ArrivalDate,TransportMode,CarrierName,TemperatureControlledFlag,InspectionResult,CustomsClearanceDate,InvoiceNumber,PaymentStatus,Remarks,HazardAnalysisCert,PalletCount,LoadSequenceNumber,WeightTolerancePercent,ShippingDocumentLink,QualityScore,ComplianceFlag,DestinationRegion,SupplierContactEmail,ReceivedByEmployeeId,TransactionStatus) VALUES (702,2002,'Free_Range_Eggs','BATCHE045',62,'USA',102,800.0,2.5,2000.0,'2023-05-01','2023-05-02','Air','AirCargoInc','Yes','Pass','2023-05-03','INV7002','Pending','Awaiting payment','CERT456',40,2,1.0,'http://logistics.com/doc/7002','92.5','Yes','North_America','eggs@supplier.com',3002,'InTransit');
INSERT INTO food_supply_chain_transactions (TransactionId,ProductId,ProductName,BatchNumber,SupplierId,OriginCountry,DestinationWarehouseId,QuantityKg,UnitCostUsd,TotalCostUsd,ShipmentDate,ArrivalDate,TransportMode,CarrierName,TemperatureControlledFlag,InspectionResult,CustomsClearanceDate,InvoiceNumber,PaymentStatus,Remarks,HazardAnalysisCert,PalletCount,LoadSequenceNumber,WeightTolerancePercent,ShippingDocumentLink,QualityScore,ComplianceFlag,DestinationRegion,SupplierContactEmail,ReceivedByEmployeeId,TransactionStatus) VALUES (703,2003,'Cold_Stored_Fish','BATCHF009',78,'Norway',103,500.0,5.0,2500.0,'2023-06-15','2023-06-18','Ship','OceanicFreight','Yes','Fail','2023-06-19','INV7003','Overdue','Temperature breach detected','CERT789',20,3,2.0,'http://logistics.com/doc/7003','78.0','No','Europe','fish@supplier.no',3003,'UnderReview');

-- Marine biology sample records – collected specimens and associated data
CREATE TABLE marine_biology_sample_records
(
    SampleId               INTEGER PRIMARY KEY,
    ExpeditionId           INTEGER,
    SampleDate             DATE,
    SiteName               TEXT,
    Latitude               REAL,
    Longitude              REAL,
    DepthMeters            REAL,
    SampleType             TEXT,
    SpeciesCollected       TEXT,
    VolumeMl               REAL,
    PreservationMethod     TEXT,
    CollectorId            INTEGER,
    LabId                  INTEGER,
    AnalysisResults        TEXT,
    DNASequencingFlag      TEXT,
    SequenceAccession      TEXT,
    DataQualityScore       REAL,
    Notes                  TEXT,
    FundingAgency          TEXT,
    ProjectCode            TEXT,
    TemperatureCelsius     REAL,
    SalinityPSU            REAL,
    pHLevel                REAL,
    CollectionMethod       TEXT,
    SampleConditionScore   REAL,
    StorageLocation        TEXT,
    RetrievalDate          DATE,
    RegulatoryCompliance   TEXT,
    AssociatedPublication   TEXT,
    SampleVolumeUnits      TEXT
);

INSERT INTO marine_biology_sample_records (SampleId,ExpeditionId,SampleDate,SiteName,Latitude,Longitude,DepthMeters,SampleType,SpeciesCollected,VolumeMl,PreservationMethod,CollectorId,LabId,AnalysisResults,DNASequencingFlag,SequenceAccession,DataQualityScore,Notes,FundingAgency,ProjectCode,TemperatureCelsius,SalinityPSU,pHLevel,CollectionMethod,SampleConditionScore,StorageLocation,RetrievalDate,RegulatoryCompliance,AssociatedPublication,SampleVolumeUnits) VALUES (801,3001,'2023-02-10','Coral_Reef_A','-15.1234','145.6789',12.5,'Water','Algae_Species_X',250.0,'Ethanol',45,12,'Metabolite_Profile','Yes','SEQ001','9.5','Sample clear','Marine_Research_Fund','MRF2023A',24.5,35.0,8.1,'SCUBA','8.7','Freezer_A','2023-07-15','Compliant','Marine_Journal_2024','ml');
INSERT INTO marine_biology_sample_records (SampleId,ExpeditionId,SampleDate,SiteName,Latitude,Longitude,DepthMeters,SampleType,SpeciesCollected,VolumeMl,PreservationMethod,CollectorId,LabId,AnalysisResults,DNASequencingFlag,SequenceAccession,DataQualityScore,Notes,FundingAgency,ProjectCode,TemperatureCelsius,SalinityPSU,pHLevel,CollectionMethod,SampleConditionScore,StorageLocation,RetrievalDate,RegulatoryCompliance,AssociatedPublication,SampleVolumeUnits) VALUES (802,3002,'2023-03-22','Seagrass_Bay','-16.5678','146.1234',5.0,'Sediment','Bivalve_Species_Y',500.0,'Freezer',52,14,'Elemental_Composition','No','',8.9,'Slightly cloudy','Oceanic_Institute','OI2023B',22.0,33.5,7.9,'Dredge','9.1','Freezer_B','2023-08-01','Compliant','Oceanic_Proceedings','ml');
INSERT INTO marine_biology_sample_records (SampleId,ExpeditionId,SampleDate,SiteName,Latitude,Longitude,DepthMeters,SampleType,SpeciesCollected,VolumeMl,PreservationMethod,CollectorId,LabId,AnalysisResults,DNASequencingFlag,SequenceAccession,DataQualityScore,Notes,FundingAgency,ProjectCode,TemperatureCelsius,SalinityPSU,pHLevel,CollectionMethod,SampleConditionScore,StorageLocation,RetrievalDate,RegulatoryCompliance,AssociatedPublication,SampleVolumeUnits) VALUES (803,3003,'2023-04-15','Deep_Sea_Trench','-18.3456','147.9876',1500.0,'Water','Microbe_Species_Z',100.0,'Liquid_Nitrogen',60,16,'Genomic_Sequencing','Yes','SEQ002','9.8','High pressure sample','Deep_Sea_Foundation','DSF2023C',2.5,36.2,8.3,'ROV','9.9','Cryo_Storage','2024-01-10','Compliant','Deep_Sea_Journal','ml');

-- Automotive fleet maintenance schedule – planned service activities for company vehicles
CREATE TABLE automotive_fleet_maintenance_schedule
(
    VehicleId                 INTEGER,
    MaintenanceScheduleId     INTEGER PRIMARY KEY,
    ServiceType               TEXT,
    ScheduledDate             DATE,
    OdometerKm                INTEGER,
    ServiceCenterId           INTEGER,
    TechnicianId              INTEGER,
    EstimatedDurationHours    REAL,
    PartsNeeded               TEXT,
    CostEstimateUsd           REAL,
    PriorityLevel             TEXT,
    WarrantyFlag              TEXT,
    ServiceStatus             TEXT,
    FollowUpDate              DATE,
    NextServiceDueKm          INTEGER,
    FuelType                  TEXT,
    EmissionStandard         TEXT,
    LastInspectionDate        DATE,
    MileageSinceLastService   INTEGER,
    VehicleModel              TEXT,
    VIN                       TEXT,
    LicensePlate              TEXT,
    AssignedDriverId          INTEGER,
    MaintenanceCategory       TEXT,
    ServiceNotes              TEXT,
    CreatedBy                 TEXT,
    CreatedDate               DATE,
    UpdatedBy                 TEXT,
    UpdatedDate               DATE,
    FleetDivision             TEXT,
    ServiceContractId         INTEGER,
    ServiceOrderNumber        TEXT,
    ServiceProvider           TEXT,
    WarrantyExpirationDate    DATE,
    ServiceApprovalStatus    TEXT,
    EstimatedDowntimeHours    REAL,
    AdditionalComments        TEXT,
    MaintenanceFlag          TEXT
);

INSERT INTO automotive_fleet_maintenance_schedule (VehicleId,MaintenanceScheduleId,ServiceType,ScheduledDate,OdometerKm,ServiceCenterId,TechnicianId,EstimatedDurationHours,PartsNeeded,CostEstimateUsd,PriorityLevel,WarrantyFlag,ServiceStatus,FollowUpDate,NextServiceDueKm,FuelType,EmissionStandard,LastInspectionDate,MileageSinceLastService,VehicleModel,VIN,LicensePlate,AssignedDriverId,MaintenanceCategory,ServiceNotes,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,FleetDivision,ServiceContractId,ServiceOrderNumber,ServiceProvider,WarrantyExpirationDate,ServiceApprovalStatus,EstimatedDowntimeHours,AdditionalComments,MaintenanceFlag) VALUES (9001,10001,'Oil_Change','2023-07-01',45200,5,101,1.5,'Oil_Filter;Engine_Oil',120.0,'Medium','Yes','Scheduled','2023-07-08',50000,'Diesel','Euro5','2023-06-15',800,'Ford_F150','1FTEW1E50KFA12345','ABC1234',3001,'Routine','Replace oil and filter','system','2023-06-01','system','2023-06-01','Logistics',4001,'SO1001','AutoServiceCo','2026-12-31','Approved',0.0,'','Yes');
INSERT INTO automotive_fleet_maintenance_schedule (VehicleId,MaintenanceScheduleId,ServiceType,ScheduledDate,OdometerKm,ServiceCenterId,TechnicianId,EstimatedDurationHours,PartsNeeded,CostEstimateUsd,PriorityLevel,WarrantyFlag,ServiceStatus,FollowUpDate,NextServiceDueKm,FuelType,EmissionStandard,LastInspectionDate,MileageSinceLastService,VehicleModel,VIN,LicensePlate,AssignedDriverId,MaintenanceCategory,ServiceNotes,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,FleetDivision,ServiceContractId,ServiceOrderNumber,ServiceProvider,WarrantyExpirationDate,ServiceApprovalStatus,EstimatedDowntimeHours,AdditionalComments,MaintenanceFlag) VALUES (9002,10002,'Brake_Inspection','2023-08-15',78500,7,102,2.0,'Brake_Pads;Brake_Fluid',250.0,'High','No','Pending','2023-08-22',85000,'Petrol','Euro6','2023-07-20',1200,'Toyota_Corolla','JTDBU4EE9B9176543','XYZ5678',3002,'Safety','Inspect and replace brake components if needed','system','2023-07-01','system','2023-07-01','Transport',4002,'SO1002','BrakeMasters','2025-05-15','Pending',0.0,'','No');
INSERT INTO automotive_fleet_maintenance_schedule (VehicleId,MaintenanceScheduleId,ServiceType,ScheduledDate,OdometerKm,ServiceCenterId,TechnicianId,EstimatedDurationHours,PartsNeeded,CostEstimateUsd,PriorityLevel,WarrantyFlag,ServiceStatus,FollowUpDate,NextServiceDueKm,FuelType,EmissionStandard,LastInspectionDate,MileageSinceLastService,VehicleModel,VIN,LicensePlate,AssignedDriverId,MaintenanceCategory,ServiceNotes,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,FleetDivision,ServiceContractId,ServiceOrderNumber,ServiceProvider,WarrantyExpirationDate,ServiceApprovalStatus,EstimatedDowntimeHours,AdditionalComments,MaintenanceFlag) VALUES (9003,10003,'Tire_Rotation','2023-09-10',23000,3,103,1.0,'N/A',80.0,'Low','Yes','Completed','2023-09-17',30000,'Electric','Euro5','2023-08-30',2000,'Nissan_Leaf','1N4BZ0CP5LC123456','LMN3456',3003,'Routine','Rotate all four tires','system','2023-08-01','system','2023-08-01','Fleet',4003,'SO1003','TireTech','2027-03-31','Approved',0.0,'','Yes');