-- Table storing information about environmental monitoring stations in the district
CREATE TABLE environmental_monitoring_stations
(
    StationID                TEXT NOT NULL PRIMARY KEY,
    StationName              TEXT,
    Latitude                 REAL,
    Longitude                REAL,
    ElevationMeters          REAL,
    InstallationDate         DATE,
    SensorTypes              TEXT,
    DataFrequencyHours       INTEGER,
    CurrentStatus            TEXT,
    LastMaintenanceDate      DATE,
    MaintenanceFrequencyDays INTEGER,
    OwnerAgency              TEXT,
    FundingSource            TEXT,
    ContractNumber           TEXT,
    CalibrationDate          DATE,
    CalibrationDueDate       DATE,
    PowerSource              TEXT,
    ConnectivityType         TEXT,
    DataPortalURL            TEXT,
    Notes                    TEXT
);
INSERT INTO environmental_monitoring_stations (StationID,StationName,Latitude,Longitude,ElevationMeters,InstallationDate,SensorTypes,DataFrequencyHours,CurrentStatus,LastMaintenanceDate,MaintenanceFrequencyDays,OwnerAgency,FundingSource,ContractNumber,CalibrationDate,CalibrationDueDate,PowerSource,ConnectivityType,DataPortalURL,Notes) VALUES ('EMS001','RiverBankStation',34.1234,-117.2345,250,'2020-03-15','Temp Humidity AQI','24','Active','2023-05-10','180','EnvironmentalDept','StateGrant','CON123','2023-01-01','2024-01-01','Solar','Cellular','http://data.district.gov/ems001','Initial deployment');
INSERT INTO environmental_monitoring_stations (StationID,StationName,Latitude,Longitude,ElevationMeters,InstallationDate,SensorTypes,DataFrequencyHours,CurrentStatus,LastMaintenanceDate,MaintenanceFrequencyDays,OwnerAgency,FundingSource,ContractNumber,CalibrationDate,CalibrationDueDate,PowerSource,ConnectivityType,DataPortalURL,Notes) VALUES ('EMS002','HillTopStation',34.5678,-117.6789,420,'2021-07-20','Temp Wind','12','Active','2023-04-22','180','EnvironmentalDept','FederalAid','CON456','2023-02-15','2024-02-15','Battery','WiFi','http://data.district.gov/ems002','Serves western catchment');
INSERT INTO environmental_monitoring_stations (StationID,StationName,Latitude,Longitude,ElevationMeters,InstallationDate,SensorTypes,DataFrequencyHours,CurrentStatus,LastMaintenanceDate,MaintenanceFrequencyDays,OwnerAgency,FundingSource,ContractNumber,CalibrationDate,CalibrationDueDate,PowerSource,ConnectivityType,DataPortalURL,Notes) VALUES ('EMS003','UrbanCenterStation',34.9012,-117.3456,150,'2019-11-05','AQI Noise','6','Inactive','2022-12-01','365','EnvironmentalDept','CityBond','CON789','2022-11-01','2023-11-01','Mains','Fiber','http://data.district.gov/ems003','Decommissioned pending upgrade');

-- Table describing city parks and their facilities
CREATE TABLE city_parks_facilities
(
    ParkID                 TEXT NOT NULL PRIMARY KEY,
    ParkName               TEXT,
    AreaAcres              REAL,
    EstablishedDate        DATE,
    Neighborhood           TEXT,
    Latitude               REAL,
    Longitude              REAL,
    PlaygroundCount        INTEGER,
    AthleticFieldCount     INTEGER,
    PicnicTableCount       INTEGER,
    RestroomCount          INTEGER,
    DogParkAvailable       INTEGER,
    LightedTrailsMiles     REAL,
    WaterFeatureType       TEXT,
    AnnualVisitors         INTEGER,
    MaintenanceAgency      TEXT,
    FundingSource          TEXT,
    LastRenovationDate     DATE,
    AccessibilityRating    INTEGER,
    Notes                  TEXT
);
INSERT INTO city_parks_facilities (ParkID,ParkName,AreaAcres,EstablishedDate,Neighborhood,Latitude,Longitude,PlaygroundCount,AthleticFieldCount,PicnicTableCount,RestroomCount,DogParkAvailable,LightedTrailsMiles,WaterFeatureType,AnnualVisitors,MaintenanceAgency,FundingSource,LastRenovationDate,AccessibilityRating,Notes) VALUES ('PK001','Maple Grove',12.5,'1995-04-01','Northside',34.1122,-117.2333,4,1,20,3,1,2.5,'Pond',35000,'ParksDept','CityBond','2022-06-15',4,'Recent playground upgrade');
INSERT INTO city_parks_facilities (ParkID,ParkName,AreaAcres,EstablishedDate,Neighborhood,Latitude,Longitude,PlaygroundCount,AthleticFieldCount,PicnicTableCount,RestroomCount,DogParkAvailable,LightedTrailsMiles,WaterFeatureType,AnnualVisitors,MaintenanceAgency,FundingSource,LastRenovationDate,AccessibilityRating,Notes) VALUES ('PK002','Riverfront',45.0,'1980-09-12','Riverside',34.2233,-117.3444,8,3,45,6,0,5.0,'River',125000,'ParksDept','StateGrant','2021-09-30',5,'Added bike path');
INSERT INTO city_parks_facilities (ParkID,ParkName,AreaAcres,EstablishedDate,Neighborhood,Latitude,Longitude,PlaygroundCount,AthleticFieldCount,PicnicTableCount,RestroomCount,DogParkAvailable,LightedTrailsMiles,WaterFeatureType,AnnualVisitors,MaintenanceAgency,FundingSource,LastRenovationDate,AccessibilityRating,Notes) VALUES ('PK003','Sunset Hills',30.2,'2005-05-20','West End',34.3344,-117.4555,5,2,30,4,1,3.2,'Lake',68000,'ParksDept','CityBond','2023-03-10',3,'Planned upgrade for restrooms');

-- Table for public art installations across the city
CREATE TABLE public_art_installations
(
    ArtID                 TEXT NOT NULL PRIMARY KEY,
    Title                 TEXT,
    ArtistName            TEXT,
    InstallationDate      DATE,
    LocationDescription   TEXT,
    Latitude              REAL,
    Longitude             REAL,
    Material              TEXT,
    DimensionsCm          TEXT,
    FundingSource         TEXT,
    SponsorOrganization   TEXT,
    MaintenanceContractID TEXT,
    ConditionRating       INTEGER,
    LastInspectionDate    DATE,
    VisibleToPublic       INTEGER,
    InteractiveFeature    TEXT,
    PhotoURL              TEXT,
    CoordinatesUTM        TEXT,
    Category              TEXT,
    Notes                 TEXT
);
INSERT INTO public_art_installations (ArtID,Title,ArtistName,InstallationDate,LocationDescription,Latitude,Longitude,Material,DimensionsCm,FundingSource,SponsorOrganization,MaintenanceContractID,ConditionRating,LastInspectionDate,VisibleToPublic,InteractiveFeature,PhotoURL,CoordinatesUTM,Category,Notes) VALUES ('ART001','Harmony','Liu Wei','2018-09-15','Central Plaza','34.1212','-117.2211','Bronze','200x150x100','CityBond','CulturalFund','MC001',5,'2023-04-01',1,'SoundSensor','http://arts.city.gov/art001.jpg','11S 345678 4567890','Sculpture','Commissioned for centennial');
INSERT INTO public_art_installations (ArtID,Title,ArtistName,InstallationDate,LocationDescription,Latitude,Longitude,Material,DimensionsCm,FundingSource,SponsorOrganization,MaintenanceContractID,ConditionRating,LastInspectionDate,VisibleToPublic,InteractiveFeature,PhotoURL,CoordinatesUTM,Category,Notes) VALUES ('ART002','River Flow','Ana Gomez','2020-06-22','Riverside Walkway','34.2323','-117.3322','StainlessSteel','500x20x20','StateGrant','RiverRevival','MC002',4,'2023-02-18',1','TouchPanel','http://arts.city.gov/art002.jpg','11S 346789 4568901','Installation','LED lighting added 2022');
INSERT INTO public_art_installations (ArtID,Title,ArtistName,InstallationDate,LocationDescription,Latitude,Longitude,Material,DimensionsCm,FundingSource,SponsorOrganization,MaintenanceContractID,ConditionRating,LastInspectionDate,VisibleToPublic,InteractiveFeature,PhotoURL,CoordinatesUTM,Category,Notes) VALUES ('ART003','Sky Mosaic','Jamal Khan','2015-04-10','Northside Library Roof','34.3434','-117.4433','Glass','300x300x10','PrivateDonor','SkyArts','MC003',3,'2022-11-05',0,'None','http://arts.city.gov/art003.jpg','11S 347890 4569912','Mural','Not accessible to public');

-- Table documenting smart city sensor deployments
CREATE TABLE smart_city_sensor_deployments
(
    DeploymentID           TEXT NOT NULL PRIMARY KEY,
    SensorType             TEXT,
    ModelNumber            TEXT,
    FirmwareVersion        TEXT,
    InstallationDate       DATE,
    Latitude               REAL,
    Longitude              REAL,
    InstallationLocation   TEXT,
    NetworkSegment         TEXT,
    PowerSupply            TEXT,
    DataRetentionDays      INTEGER,
    CalibrationStatus      TEXT,
    LastCalibrationDate    DATE,
    OwnerDepartment        TEXT,
    MaintenanceProvider    TEXT,
    ServiceLevelAgreement  TEXT,
    Status                 TEXT,
    UptimePercentage       REAL,
    ExpectedLifetimeYears  INTEGER,
    Notes                  TEXT
);
INSERT INTO smart_city_sensor_deployments (DeploymentID,SensorType,ModelNumber,FirmwareVersion,InstallationDate,Latitude,Longitude,InstallationLocation,NetworkSegment,PowerSupply,DataRetentionDays,CalibrationStatus,LastCalibrationDate,OwnerDepartment,MaintenanceProvider,ServiceLevelAgreement,Status,UptimePercentage,ExpectedLifetimeYears,Notes) VALUES ('SD001','TrafficCount','TC-100','v2.3','2021-01-05',34.1111,-117.2222,'5th Ave & Main St','FiberBackbone','Solar','365','Calibrated','2023-01-15','TransportationDept','VendorA','SLA001','Active',99.8,7,'High traffic corridor');
INSERT INTO smart_city_sensor_deployments (DeploymentID,SensorType,ModelNumber,FirmwareVersion,InstallationDate,Latitude,Longitude,InstallationLocation,NetworkSegment,PowerSupply,DataRetentionDays,CalibrationStatus,LastCalibrationDate,OwnerDepartment,MaintenanceProvider,ServiceLevelAgreement,Status,UptimePercentage,ExpectedLifetimeYears,Notes) VALUES ('SD002','AirQuality','AQ-200','v1.9','2020-06-20',34.2222,-117.3333,'Park Central','WiFiMesh','Mains','180','Pending','2023-03-10','EnvironmentalDept','VendorB','SLA002','Active',98.5,10,'Near school zone');
INSERT INTO smart_city_sensor_deployments (DeploymentID,SensorType,ModelNumber,FirmwareVersion,InstallationDate,Latitude,Longitude,InstallationLocation,NetworkSegment,PowerSupply,DataRetentionDays,CalibrationStatus,LastCalibrationDate,OwnerDepartment,MaintenanceProvider,ServiceLevelAgreement,Status,UptimePercentage,ExpectedLifetimeYears,Notes) VALUES ('SD003','WaterLevel','WL-300','v3.0','2019-11-12',34.3333,-117.4444,'Riverbank Dam','Cellular','Battery','90','Calibrated','2022-12-01','PublicWorks','VendorC','SLA003','Inactive',0,12,'Decommissioned after dam removal');

-- Table tracking stormwater management projects
CREATE TABLE stormwater_management_projects
(
    ProjectID               TEXT NOT NULL PRIMARY KEY,
    ProjectName             TEXT,
    StartDate               DATE,
    CompletionDate          DATE,
    LeadAgency              TEXT,
    FundingSource           TEXT,
    TotalBudgetUSD          REAL,
    ContractorName          TEXT,
    DesignEngineer          TEXT,
    ProjectStatus           TEXT,
    AcresImproved           REAL,
    BMPType                 TEXT,
    ExpectedRunoffReduction REAL,
    ActualRunoffReduction   REAL,
    PermittingAgency        TEXT,
    InspectionFrequencyDays INTEGER,
    LastInspectionDate      DATE,
    GISLayerID              TEXT,
    CommunityOutreachHours  INTEGER,
    Notes                   TEXT
);
INSERT INTO stormwater_management_projects (ProjectID,ProjectName,StartDate,CompletionDate,LeadAgency,FundingSource,TotalBudgetUSD,ContractorName,DesignEngineer,ProjectStatus,AcresImproved,BMPType,ExpectedRunoffReduction,ActualRunoffReduction,PermittingAgency,InspectionFrequencyDays,LastInspectionDate,GISLayerID,CommunityOutreachHours,Notes) VALUES ('SWP001','North Creek Retention Basin','2021-03-01','2023-09-30','PublicWorks','StateGrant',2500000,'BuildCo','EngineersInc','Completed',15.5,'Retention Basin',30.2,NULL,'DEP','180','2023-08-15','LAYER001',120,'Met all performance metrics');
INSERT INTO stormwater_management_projects (ProjectID,ProjectName,StartDate,CompletionDate,LeadAgency,FundingSource,TotalBudgetUSD,ContractorName,DesignEngineer,ProjectStatus,AcresImproved,BMPType,ExpectedRunoffReduction,ActualRunoffReduction,PermittingAgency,InspectionFrequencyDays,LastInspectionDate,GISLayerID,CommunityOutreachHours,Notes) VALUES ('SWP002','Eastside Green Street','2022-05-15',NULL,'PublicWorks','CityBond',1300000,'GreenBuild','DesignPlus','InProgress',8.3,'Permeable Pavement',22.5,NULL,'DEP','365','2023-04-10','LAYER002',80,'Construction ongoing');
INSERT INTO stormwater_management_projects (ProjectID,ProjectName,StartDate,CompletionDate,LeadAgency,FundingSource,TotalBudgetUSD,ContractorName,DesignEngineer,ProjectStatus,AcresImproved,BMPType,ExpectedRunoffReduction,ActualRunoffReduction,PermittingAgency,InspectionFrequencyDays,LastInspectionDate,GISLayerID,CommunityOutreachHours,Notes) VALUES ('SWP003','South Hills Wetland Restoration','2020-01-20','2022-12-05','PublicWorks','FederalAid',3400000,'EcoBuilders','WetlandDesign','Completed',25.0,'Wetland Restoration',45.0,NULL,'EPA','90','2022-11-20','LAYER003',150,'Awarded sustainability prize');

-- Table listing renewable energy assets owned by the district
CREATE TABLE renewable_energy_assets
(
    AssetID               TEXT NOT NULL PRIMARY KEY,
    AssetType             TEXT,
    CapacityKW            REAL,
    InstallationDate      DATE,
    LocationLatitude      REAL,
    LocationLongitude     REAL,
    OwnerDepartment       TEXT,
    FundingSource         TEXT,
    Contractor            TEXT,
    CommissioningDate     DATE,
    OperationalStatus     TEXT,
    ExpectedLifetimeYears INTEGER,
    MaintenanceProvider   TEXT,
    LastMaintenanceDate   DATE,
    AnnualGenerationMWh   REAL,
    CO2eReductionTonnes   REAL,
    GridConnectionID      TEXT,
    WarrantyExpiration    DATE,
    DecommissionDate      DATE,
    Notes                 TEXT
);
INSERT INTO renewable_energy_assets (AssetID,AssetType,CapacityKW,InstallationDate,LocationLatitude,LocationLongitude,OwnerDepartment,FundingSource,Contractor,CommissioningDate,OperationalStatus,ExpectedLifetimeYears,MaintenanceProvider,LastMaintenanceDate,AnnualGenerationMWh,CO2eReductionTonnes,GridConnectionID,WarrantyExpiration,DecommissionDate,Notes) VALUES ('RE001','SolarPV','500','2019-04-10',34.1456,-117.2567,'Facilities','StateGrant','SunPower','2019-09-15','Active',25,'EnergyMaint','2023-06-01',600,420,'GRID001','2029-09-15',NULL,' rooftop array on admin building');
INSERT INTO renewable_energy_assets (AssetID,AssetType,CapacityKW,InstallationDate,LocationLatitude,LocationLongitude,OwnerDepartment,FundingSource,Contractor,CommissioningDate,OperationalStatus,ExpectedLifetimeYears,MaintenanceProvider,LastMaintenanceDate,AnnualGenerationMWh,CO2eReductionTonnes,GridConnectionID,WarrantyExpiration,DecommissionDate,Notes) VALUES ('RE002','WindTurbine','1500','2020-08-22',34.2567,-117.3678,'Facilities','FederalAid','WindWorks','2021-02-10','Active',20,'WindCare','2023-04-20',4500,3500,'GRID002','2031-02-10',NULL,'3‑blade turbine on north ridge');
INSERT INTO renewable_energy_assets (AssetID,AssetType,CapacityKW,InstallationDate,LocationLatitude,LocationLongitude,OwnerDepartment,FundingSource,Contractor,CommissioningDate,OperationalStatus,ExpectedLifetimeYears,MaintenanceProvider,LastMaintenanceDate,AnnualGenerationMWh,CO2eReductionTonnes,GridConnectionID,WarrantyExpiration,DecommissionDate,Notes) VALUES ('RE003','Geothermal','800','2018-05-15',34.3678,-117.4789,'Facilities','CityBond','GeoEnergy','2018-12-01','Inactive',30,'GeoMaint','2022-09-30',0,0,'GRID003','2028-12-01','2024-03-01','Closed loop system decommissioned for upgrade');

-- Table cataloguing historic building registry entries
CREATE TABLE historic_building_registry
(
    RegistryID            TEXT NOT NULL PRIMARY KEY,
    BuildingName          TEXT,
    Address               TEXT,
    YearConstructed       INTEGER,
    ArchitecturalStyle    TEXT,
    PreservationStatus    TEXT,
    OwnerEntity           TEXT,
    DesignationDate       DATE,
    RegistryAgency        TEXT,
    Latitude              REAL,
    Longitude             REAL,
    CurrentUse            TEXT,
    RenovationHistory     TEXT,
    HistoricalSignificance TEXT,
    PhotoReference        TEXT,
    GISFeatureID          TEXT,
    FundingProgram        TEXT,
    LastInspectionDate    DATE,
    InspectionScore       INTEGER,
    Notes                 TEXT
);
INSERT INTO historic_building_registry (RegistryID,BuildingName,Address,YearConstructed,ArchitecturalStyle,PreservationStatus,OwnerEntity,DesignationDate,RegistryAgency,Latitude,Longitude,CurrentUse,RenovationHistory,HistoricalSignificance,PhotoReference,GISFeatureID,FundingProgram,LastInspectionDate,InspectionScore,Notes) VALUES ('HB001','Old Town Hall','123 Main St',1885,'Victorian','Protected','City','1995-06-01','StateHistoric','34.1122','-117.2233','Municipal Offices','1998 remodel','First civic building in district','http://historic.city.gov/hb001.jpg','HBFE001','HeritageGrant','2023-02-15',9,'Restored façade in 2018');
INSERT INTO historic_building_registry (RegistryID,BuildingName,Address,YearConstructed,ArchitecturalStyle,PreservationStatus,OwnerEntity,DesignationDate,RegistryAgency,Latitude,Longitude,CurrentUse,RenovationHistory,HistoricalSignificance,PhotoReference,GISFeatureID,FundingProgram,LastInspectionDate,InspectionScore,Notes) VALUES ('HB002','Riverside Library','456 River Rd',1920,'BeauxArts','Protected','County','2001-09-12','CountyHistoric','34.2233','-117.3344','Public Library','2005 seismic upgrade','Only river‑front library built pre‑WWII','http://historic.city.gov/hb002.jpg','HBFE002','CulturalFund','2022-11-20',8,'Planned addition 2024');
INSERT INTO historic_building_registry (RegistryID,BuildingName,Address,YearConstructed,ArchitecturalStyle,PreservationStatus,OwnerEntity,DesignationDate,RegistryAgency,Latitude,Longitude,CurrentUse,RenovationHistory,HistoricalSignificance,PhotoReference,GISFeatureID,FundingProgram,LastInspectionDate,InspectionScore,Notes) VALUES ('HB003','Grand Theater','789 Broadway','1935','ArtDeco','Protected','Private','2010-03-05','NationalHistoric','34.3344','-117.4455','Performing Arts Venue','2015 interior restoration','Iconic venue for 20th‑century performances','http://historic.city.gov/hb003.jpg','HBFE003','ArtsTrust','2023-07-01',7,'Digital projection installed 2021');

-- Table logging public Wi‑Fi hotspot locations
CREATE TABLE public_wifi_hotspots
(
    HotspotID            TEXT NOT NULL PRIMARY KEY,
    SSID                 TEXT,
    LocationDescription  TEXT,
    Latitude             REAL,
    Longitude            REAL,
    InstallationDate     DATE,
    ProviderCompany      TEXT,
    BandSupported        TEXT,
    MaxClients           INTEGER,
    DailyDataCapGB       REAL,
    LastMaintenanceDate  DATE,
    MaintenanceProvider  TEXT,
    CoverageRadiusMeters REAL,
    PowerSource          TEXT,
    NetworkSegment       TEXT,
    EncryptionType       TEXT,
    FirmwareVersion      TEXT,
    ActiveStatus         TEXT,
    InstallationCostUSD  REAL,
    Notes                TEXT
);
INSERT INTO public_wifi_hotspots (HotspotID,SSID,LocationDescription,Latitude,Longitude,InstallationDate,ProviderCompany,BandSupported,MaxClients,DailyDataCapGB,LastMaintenanceDate,MaintenanceProvider,CoverageRadiusMeters,PowerSource,NetworkSegment,EncryptionType,FirmwareVersion,ActiveStatus,InstallationCostUSD,Notes) VALUES ('WP001','CITY_FREE','Central Plaza','34.1234','-117.2356','2021-01-15','NetConnect','2.4GHz/5GHz',200,100,2023-03-10,'NetMaintain',100,'Mains','SegmentA','WPA2','v1.2','Active',5000,'High traffic area');
INSERT INTO public_wifi_hotspots (HotspotID,SSID,LocationDescription,Latitude,Longitude,InstallationDate,ProviderCompany,BandSupported,MaxClients,DailyDataCapGB,LastMaintenanceDate,MaintenanceProvider,CoverageRadiusMeters,PowerSource,NetworkSegment,EncryptionType,FirmwareVersion,ActiveStatus,InstallationCostUSD,Notes) VALUES ('WP002','PARK_WIFI','Northside Park','34.2345','-117.3467','2020-06-20','ConnectNow','2.4GHz',150,80,2022-12-01,'ParkTech',80,'Solar','SegmentB','WPA2','v1.0','Active',3500,'Solar powered');
INSERT INTO public_wifi_hotspots (HotspotID,SSID,LocationDescription,Latitude,Longitude,InstallationDate,ProviderCompany,BandSupported,MaxClients,DailyDataCapGB,LastMaintenanceDate,MaintenanceProvider,CoverageRadiusMeters,PowerSource,NetworkSegment,EncryptionType,FirmwareVersion,ActiveStatus,InstallationCostUSD,Notes) VALUES ('WP003','LIB_FREE','Main Library Lobby','34.3456','-117.4578','2019-09-05','LibraryNet','5GHz',100,60,2023-01-20,'LibraryMaint',60,'Mains','SegmentC','WPA3','v2.1','Inactive',2500,'Decommissioned after renovation');

-- Table recording air quality compliance inspections
CREATE TABLE air_quality_compliance_records
(
    InspectionID          TEXT NOT NULL PRIMARY KEY,
    FacilityName          TEXT,
    FacilityType          TEXT,
    Address               TEXT,
    Latitude              REAL,
    Longitude             REAL,
    InspectionDate        DATE,
    InspectorAgency       TEXT,
    ComplianceStatus      TEXT,
    PM25LevelUgM3         REAL,
    OzoneLevelPPB         REAL,
    NO2LevelPPB           REAL,
    SO2LevelPPB           REAL,
    LeadLevelPPB          REAL,
    ReferenceStandard     TEXT,
    CorrectiveActionDue   DATE,
    FollowUpInspectionDate DATE,
    Remarks               TEXT,
    DocumentReferenceURL  TEXT,
    Notes                 TEXT
);
INSERT INTO air_quality_compliance_records (InspectionID,FacilityName,FacilityType,Address,Latitude,Longitude,InspectionDate,InspectorAgency,ComplianceStatus,PM25LevelUgM3,OzoneLevelPPB,NO2LevelPPB,SO2LevelPPB,LeadLevelPPB,ReferenceStandard,CorrectiveActionDue,FollowUpInspectionDate,Remarks,DocumentReferenceURL,Notes) VALUES ('AQ001','Riverfront Plant','PowerStation','200 River Rd',34.1111,-117.2222,'2023-05-10','StateEPA','Compliant',12.5,0.045,0.018,0.005,0.001,'EPAStandard','2024-05-10',NULL,'All readings within limits','http://epa.state.gov/aq001.pdf','Routine annual inspection');
INSERT INTO air_quality_compliance_records (InspectionID,FacilityName,FacilityType,Address,Latitude,Longitude,InspectionDate,InspectorAgency,ComplianceStatus,PM25LevelUgM3,OzoneLevelPPB,NO2LevelPPB,SO2LevelPPB,LeadLevelPPB,ReferenceStandard,CorrectiveActionDue,FollowUpInspectionDate,Remarks,DocumentReferenceURL,Notes) VALUES ('AQ002','Eastside Manufacturing','Industrial','350 East Ave',34.2222,-117.3333,'2023-07-22','StateEPA','Non‑Compliant',35.8,0.078,0.045,0.012,0.003,'EPAStandard','2023-12-01','2024-01-15','Exceeds PM2.5 threshold','http://epa.state.gov/aq002.pdf','Issued notice of violation');
INSERT INTO air_quality_compliance_records (InspectionID,FacilityName,FacilityType,Address,Latitude,Longitude,InspectionDate,InspectorAgency,ComplianceStatus,PM25LevelUgM3,OzoneLevelPPB,NO2LevelPPB,SO2LevelPPB,LeadLevelPPB,ReferenceStandard,CorrectiveActionDue,FollowUpInspectionDate,Remarks,DocumentReferenceURL,Notes) VALUES ('AQ003','Central School','School','500 Main St',34.3333,-117.4444,'2023-09-05','StateEPA','Compliant',10.2,0.040,0.015,0.004,0.0005,'EPAStandard',NULL,NULL,'No violations detected','http://epa.state.gov/aq003.pdf','Part of school district monitoring program');

-- Table describing city traffic signal maintenance logs
CREATE TABLE traffic_signal_maintenance_log
(
    LogID                 TEXT NOT NULL PRIMARY KEY,
    IntersectionID        TEXT,
    IntersectionName      TEXT,
    Latitude              REAL,
    Longitude             REAL,
    SignalManufacturer    TEXT,
    ModelNumber           TEXT,
    InstallationDate      DATE,
    LastServicedDate      DATE,
    ServiceProvider       TEXT,
    ServiceType           TEXT,
    PartsReplacedCount    INTEGER,
    FirmwareVersion       TEXT,
    PowerSupplyStatus     TEXT,
    LEDStatus             TEXT,
    CommunicationStatus   TEXT,
    HoursOfOperation      REAL,
    FaultCodesLogged      TEXT,
    MaintenanceNotes      TEXT,
    NextServiceDueDate    DATE
);
INSERT INTO traffic_signal_maintenance_log (LogID,IntersectionID,IntersectionName,Latitude,Longitude,SignalManufacturer,ModelNumber,InstallationDate,LastServicedDate,ServiceProvider,ServiceType,PartsReplacedCount,FirmwareVersion,PowerSupplyStatus,LEDStatus,CommunicationStatus,HoursOfOperation,FaultCodesLogged,MaintenanceNotes,NextServiceDueDate) VALUES ('TS001','INT001','1st & Main',34.1010,-117.2020,'SignalTech','ST-400','2015-04-01','2023-03-15','MetroMaint','Preventive',2,'v3.2','OK','OK','OK',8760,'None','Replaced two LED modules','2024-03-15');
INSERT INTO traffic_signal_maintenance_log (LogID,IntersectionID,IntersectionName,Latitude,Longitude,SignalManufacturer,ModelNumber,InstallationDate,LastServicedDate,ServiceProvider,ServiceType,PartsReplacedCount,FirmwareVersion,PowerSupplyStatus,LEDStatus,CommunicationStatus,HoursOfOperation,FaultCodesLogged,MaintenanceNotes,NextServiceDueDate) VALUES ('TS002','INT002','2nd & Oak','34.2020','-117.3030','SignalTech','ST-500','2018-07-12','2023-06-20','MetroMaint','Corrective',1,'v3.5','OK','Degraded','OK',4380,'E01','Replaced faulty power supply','2024-06-20');
INSERT INTO traffic_signal_maintenance_log (LogID,IntersectionID,IntersectionName,Latitude,Longitude,SignalManufacturer,ModelNumber,InstallationDate,LastServicedDate,ServiceProvider,ServiceType,PartsReplacedCount,FirmwareVersion,PowerSupplyStatus,LEDStatus,CommunicationStatus,HoursOfOperation,FaultCodesLogged,MaintenanceNotes,NextServiceDueDate) VALUES ('TS003','INT003','3rd & Pine','34.3030','-117.4040','SignalPro','SP-300','2020-01-15','2023-09-10','MetroMaint','Preventive',0,'v4.0','OK','OK','OK',2190,'None','Routine check, no issues','2024-09-10');