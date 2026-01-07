-- Marine biology sample collection records
CREATE TABLE marine_biology_samples
(
    SampleID INTEGER PRIMARY KEY,
    ExpeditionCode TEXT,
    SiteLatitude REAL,
    SiteLongitude REAL,
    CollectionDate DATE,
    SampleDepthMeters INTEGER,
    WaterTemperatureC REAL,
    SalinityPSU REAL,
    DissolvedOxygenMgL REAL,
    pHLevel REAL,
    ChlorophyllUgmL REAL,
    PhytoplanktonCount INTEGER,
    ZooplanktonCount INTEGER,
    BacterialCFU INTEGER,
    NutrientNitrateMgL REAL,
    NutrientPhosphateMgL REAL,
    SampleVolumeLiters INTEGER,
    CollectorName TEXT,
    ProcessingLab TEXT,
    AnalysisMethod TEXT,
    ResultFilePath TEXT
);

INSERT INTO marine_biology_samples VALUES
(1,'EXP2023A',34.0219,-118.4814,'2023-04-15',15,18.5,35.1,6.2,8.1,2.5,12000,8000,1500000,0.4,0.02,2,'DrSmith','LabNorth','FlowCytometry','/data/exp2023a/001.csv');

INSERT INTO marine_biology_samples VALUES
(2,'EXP2023B',36.7783,-119.4179,'2023-04-16',30,17.9,34.8,5.8,8.0,3.0,15000,9500,1800000,0.5,0.03,3,'DrLee','LabSouth','Spectrophotometry','/data/exp2023b/002.csv');

INSERT INTO marine_biology_samples VALUES
(3,'EXP2023C',33.4484,-112.0740,'2023-04-17',5,20.2,36.0,7.0,8.3,2.2,9000,6000,1200000,0.3,0.015,1,'DrGarcia','LabEast','Microscopy','/data/exp2023c/003.csv');

-- Historic climate index records
CREATE TABLE historic_climate_index
(
    RecordID INTEGER PRIMARY KEY,
    Year INTEGER,
    Month INTEGER,
    GlobalTempAnomalyC REAL,
    NorthernHemisphereTempAnomalyC REAL,
    SouthernHemisphereTempAnomalyC REAL,
    CO2ConcentrationPPM REAL,
    MethaneConcentrationPPB REAL,
    SeaLevelRiseMM REAL,
    IceExtentArcticMillionSqKm REAL,
    IceExtentAntarcticMillionSqKm REAL,
    SolarRadiationWm2 REAL,
    VolcanicAerosolOptDepth REAL,
    ENSOPhase TEXT,
    PDOIndex REAL,
    AOIndex REAL,
    NAOIndex REAL,
    PrecipitationAnomalyPercent REAL,
    DroughtSeverityIndex REAL,
    FloodFrequencyIndex REAL,
    ClimateRiskScore REAL
);

INSERT INTO historic_climate_index VALUES
(1,2020,1,0.98,1.12,0.84,416.2,1880,3.4,14.5,6.2,1361.5,0.02,'Neutral',0.5,0.3,-0.2,5.0,1.2,0.8,75.3);

INSERT INTO historic_climate_index VALUES
(2,2020,2,1.02,1.15,0.90,416.5,1885,3.6,14.6,6.1,1361.6,0.03,'ElNino',0.6,0.4,-0.1,6.0,1.0,1.1,78.9);

INSERT INTO historic_climate_index VALUES
(3,2020,3,0.95,1.08,0.82,416.8,1890,3.5,14.4,6.3,1361.7,0.01,'LaNina',0.4,0.2,-0.3,4.5,0.9,0.6,72.4);

-- Urban art installation registry
CREATE TABLE urban_art_installations
(
    InstallationID INTEGER PRIMARY KEY,
    Title TEXT,
    ArtistName TEXT,
    InstallationType TEXT,
    City TEXT,
    Neighborhood TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    MaterialPrimary TEXT,
    MaterialSecondary TEXT,
    HeightMeters REAL,
    WidthMeters REAL,
    DepthMeters REAL,
    LightingType TEXT,
    FundingSource TEXT,
    EstimatedCostUSD INTEGER,
    MaintenanceContractID INTEGER,
    PublicEngagementProgram TEXT,
    VisitorCountYear1 INTEGER,
    VisitorCountYear2 INTEGER,
    VisitorCountYear3 INTEGER,
    AccessibilityFeatures TEXT,
    Comments TEXT
);

INSERT INTO urban_art_installations VALUES
(1,'LightWave','Ava Torres','Sculpture','SanFrancisco','Mission','37.7599','-122.4148','2021-06-15','Steel','LED','12.5','3.0','2.0','LED','CityArtsFund',250000,101,'GuidedTours',15000,16000,17000,'WheelchairRamp','First night illumination event');

INSERT INTO urban_art_installations VALUES
(2,'RiverRun','Liam Patel','Mural','Portland','PearlDistrict','45.5215','-122.6793','2022-09-10','Acrylic','Concrete','0','15','0','Natural','CommunityGrant',120000,102,'SchoolVisits',8000,8500,9000,'BrailleInfo','Created with local youth');

INSERT INTO urban_art_installations VALUES
(3,'SkyPulse','Mia Ngu','Interactive','Austin','Downtown','30.2672','-97.7431','2023-03-22','Aluminum','Sensors','5','5','5','Solar','PrivateSponsor',300000,103,'TechWorkshops',20000,21000,22000,'AudioGuide','Integrated with city WiFi');

-- Space mission log entries
CREATE TABLE space_mission_logs
(
    LogID INTEGER PRIMARY KEY,
    MissionName TEXT,
    LaunchDate DATE,
    LaunchSite TEXT,
    OrbitType TEXT,
    SpacecraftID TEXT,
    CrewCount INTEGER,
    MissionDurationDays INTEGER,
    PrimaryObjective TEXT,
    SecondaryObjective TEXT,
    PayloadMassKg REAL,
    FuelRemainingKg REAL,
    SolarArrayDeployed BOOLEAN,
    CommunicationBand TEXT,
    GroundStationContact TEXT,
    EVA_Count INTEGER,
    EVA_TotalHours REAL,
    ScienceDataVolumeTB REAL,
    AnomalyReported BOOLEAN,
    AnomalyDescription TEXT,
    ResolutionStatus TEXT,
    FinalStatus TEXT,
    ReentryDate DATE,
    DisposalMethod TEXT,
    Remarks TEXT
);

INSERT INTO space_mission_logs VALUES
(1,'ArtemisII','2024-05-01','KennedySpaceCenter','Lunar','ORBITER-01',4,30,'Test lunar orbit','Biology experiments',12000,3000,1,'X-band','USGS','2',8.5,1.2,0,NULL,NULL,'Success','2024-05-31','ControlledDescent','No issues');

INSERT INTO space_mission_logs VALUES
(2,'VoyagerX','2025-11-12','Vandenberg','Interplanetary','PROBE-07',0,400,'Jupiter flyby','Magnetosphere study',5000,1500,1,'Ka-band','DSN','0',0,2.8,1,'Radiation spike','Mitigated','PartialSuccess','2026-12-10','Burnout','Extended mission');

INSERT INTO space_mission_logs VALUES
(3,'LunaSurveyor','2026-03-22','Baikonur','Lunar','LANDER-03',0,45,'Lunar surface mapping','Regolith analysis',2500,800,0,'S-band','ESA','1',3.0,0.9,0,NULL,NULL,'Success','2026-05-06','SoftLanding','Images transmitted');

-- Renewable energy certificate registry
CREATE TABLE renewable_energy_certificate_registry
(
    CertificateID INTEGER PRIMARY KEY,
    IssuerOrganization TEXT,
    IssueDate DATE,
    ExpirationDate DATE,
    EnergySource TEXT,
    CapacityMW REAL,
    GenerationStartDate DATE,
    GenerationEndDate DATE,
    CertifierAgency TEXT,
    CertifiedAmountMWh REAL,
    Country TEXT,
    Region TEXT,
    CertificateSerial TEXT,
    TransactionID TEXT,
    OwnerOrganization TEXT,
    TransferDate DATE,
    Status TEXT,
    VerificationMethod TEXT,
    RenewableAttribute TEXT,
    GridConnectionPoint TEXT,
    CO2eOffsetTonnes REAL,
    Notes TEXT,
    CreatedBy TEXT,
    LastUpdated TIMESTAMP
);

INSERT INTO renewable_energy_certificate_registry VALUES
(1,'GreenPowerCo','2023-01-15','2025-01-14','Solar',50.0,'2023-02-01','2024-12-31','EIA','420000','USA','Midwest','GP-20230115-001','TXN-1001','EcoUtilities','2024-06-01','Active','RemoteMonitoring','SolarPV','NodeA','0','Initial issuance','SystemAdmin','2024-06-01 12:00:00');

INSERT INTO renewable_energy_certificate_registry VALUES
(2,'WindWorks','2022-07-10','2024-07-09','Wind',120.5,'2022-08-01','2024-06-30','DOE','1020000','USA','Plains','WW-20220710-007','TXN-2002','PowerGridCorp','2023-09-15','Transferred','OnsiteAudit','OnshoreWind','NodeB','0','Certificate transferred','SystemAdmin','2023-09-15 09:30:00');

INSERT INTO renewable_energy_certificate_registry VALUES
(3,'HydroFuture','2021-03-05','2026-03-04','Hydro',200.0,'2021-04-01','2025-12-31','EPA','1800000','Canada','Ontario','HF-20210305-003','TXN-3003','OntarioEnergy','2025-01-20','Active','SatelliteImagery','RunOfRiver','NodeC','0','Renewable hydro project','SystemAdmin','2025-01-20 14:45:00');

-- City parking meter readings
CREATE TABLE city_parking_meter_readings
(
    MeterID INTEGER PRIMARY KEY,
    City TEXT,
    Zone TEXT,
    StreetAddress TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    LastCalibrationDate DATE,
    MeterType TEXT,
    PaymentMethod TEXT,
    RatePerHourUSD REAL,
    MaxParkingHours INTEGER,
    IsEnabled BOOLEAN,
    CurrentStatus TEXT,
    LastPaymentTimestamp TIMESTAMP,
    TotalCollectedUSD REAL,
    TransactionsCount INTEGER,
    ViolationsReported INTEGER,
    MaintenanceRequestID INTEGER,
    FirmwareVersion TEXT,
    BatteryLevelPercent INTEGER,
    SignalStrengthDbm INTEGER,
    OwnerAgency TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt TIMESTAMP
);

INSERT INTO city_parking_meter_readings VALUES
(101,'Seattle','A1','1stAve&UnionSt',47.6038,-122.3301,'2020-05-01','2023-04-15','Coin','CashCard',2.5,4,1,'Active','2024-10-12 08:15:00',15000.75,6200,15,500,'v2.3',85,-70,'DeptTransportation','No issues','Admin','2024-01-01 09:00:00');

INSERT INTO city_parking_meter_readings VALUES
(102,'Seattle','B2','2ndAve&PineSt',47.6085,-122.3340,'2021-03-12','2023-05-20','Digital','MobileApp',3.0,6,1,'Active','2024-10-12 09:00:00',11200.40,4500,8,320,'v2.3',78,-68,'DeptTransportation','Battery replaced 2024','Admin','2024-01-15 10:30:00');

INSERT INTO city_parking_meter_readings VALUES
(103,'Seattle','C3','3rdAve&UnionSt',47.6102,-122.3375,'2019-11-22','2022-12-10','Hybrid','CashCard',2.0,8,0,'OutOfOrder','2023-11-30 11:45:00',0.00,0,0,800,'v1.9',30,-85,'DeptTransportation','Awaiting repair','Admin','2023-01-01 08:45:00');

-- Public transport vehicle maintenance logs
CREATE TABLE public_transport_vehicle_maintenance_logs
(
    LogID INTEGER PRIMARY KEY,
    VehicleID TEXT,
    VehicleType TEXT,
    DepotName TEXT,
    MaintenanceDate DATE,
    OdometerKm INTEGER,
    ServiceType TEXT,
    PartsReplaced TEXT,
    LaborHours REAL,
    LaborCostUSD REAL,
    PartsCostUSD REAL,
    TotalCostUSD REAL,
    TechnicianName TEXT,
    InspectionPassed BOOLEAN,
    NextServiceDueKm INTEGER,
    NextServiceDueDate DATE,
    DowntimeHours REAL,
    FuelEfficiencyBeforeLper100km REAL,
    FuelEfficiencyAfterLper100km REAL,
    EmissionsCO2gkm REAL,
    ComplianceStatus TEXT,
    WarrantyValid BOOLEAN,
    Remarks TEXT,
    RecordedBy TEXT,
    RecordedAt TIMESTAMP
);

INSERT INTO public_transport_vehicle_maintenance_logs VALUES
(1,'BUS-001','Bus','CentralDepot','2024-03-10',120500,'EngineTune','FuelPump',4.5,300.00,150.00,450.00,'JohnDoe',1,130000,'2024-09-15',2.0,30.5,28.0,850,'Compliant',1,'Engine running smoother', 'SystemUser','2024-03-10 14:20:00');

INSERT INTO public_transport_vehicle_maintenance_logs VALUES
(2,'TRAM-045','Tram','EastDepot','2024-04-22',84500,'BrakeReplacement','BrakePads;BrakeDiscs',6.0,400.00,600.00,1000.00,'JaneSmith',1,90000,'2024-10-30',3.5,22.0,21.5,720,'Compliant',1,'Reduced brake noise', 'SystemUser','2024-04-22 09:45:00');

INSERT INTO public_transport_vehicle_maintenance_logs VALUES
(3,'METRO-12','Metro','NorthDepot','2024-02-18',215000,'HVACCheck','AirFilter',2.0,120.00,80.00,200.00,'MikeLee',0,220000,'2024-08-01',5.0,13.0,12.8,650,'NonCompliant',0,'Temperature fluctuation noted', 'SystemUser','2024-02-18 11:10:00');

-- Waste to energy conversion facility records
CREATE TABLE waste_to_energy_conversion
(
    FacilityID INTEGER PRIMARY KEY,
    FacilityName TEXT,
    LocationCity TEXT,
    LocationState TEXT,
    Latitude REAL,
    Longitude REAL,
    CapacityMW REAL,
    OperationalSince DATE,
    FeedstockType TEXT,
    AvgDailyWasteTonnes REAL,
    AvgDailyEnergyMWh REAL,
    CO2eAvoidedTonnes REAL,
    EmissionControlSystem TEXT,
    AshDisposalMethod TEXT,
    EnergyExportPartner TEXT,
    MaintenanceIntervalDays INTEGER,
    LastMaintenanceDate DATE,
    CurrentStatus TEXT,
    RegulatoryCompliance BOOLEAN,
    PermitNumber TEXT,
    ContactPerson TEXT,
    ContactPhone TEXT,
    Notes TEXT,
    CreatedBy TEXT,
    CreatedAt TIMESTAMP
);

INSERT INTO waste_to_energy_conversion VALUES
(1,'GreenFlare Plant','Cleveland','OH',41.4993,-81.6944,30.0,'2015-06-01','MunicipalSolidWaste',500.0,720.0,1500.0,'Scrubber','Landfill','UtilityCo',180,'2024-06-01','Operating',1,'PERM-2020-045','LauraWhite','5551234567','Upgrading ash handling system','Admin','2024-01-01 08:00:00');

INSERT INTO waste_to_energy_conversion VALUES
(2,'EcoTherm Facility','Memphis','TN',35.1495,-90.0490,45.5,'2018-09-15','IndustrialWaste',800.0,1152.0,2400.0,'CatalyticConverter','RecycledMetal','EnergyGroup',365,'2023-12-01','Operating',1,'PERM-2019-112','BenCarter','5559876543','Considering expansion','Admin','2024-02-10 09:30:00');

INSERT INTO waste_to_energy_conversion VALUES
(3,'RenewPower Site','Boulder','CO',40.01499,-105.2705,20.0,'2020-01-20','AgriculturalResidue',300.0,480.0,900.0,'ElectrostaticPrecipitator','Composting','RegionalGrid',90,'2024-05-15','Maintenance',1,'PERM-2021-078','SophieKim','5557654321','Recent turbine upgrade','Admin','2024-03-05 10:15:00');

-- Smart city noise sensor inventory
CREATE TABLE smart_city_noise_sensor_inventory
(
    SensorID INTEGER PRIMARY KEY,
    InstallationDate DATE,
    Latitude REAL,
    Longitude REAL,
    StreetName TEXT,
    Neighborhood TEXT,
    SensorModel TEXT,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    NoiseThresholdDbA REAL,
    CurrentReadingDbA REAL,
    BatteryLevelPercent INTEGER,
    ConnectivityType TEXT,
    DataTransmissionIntervalSec INTEGER,
    PowerSource TEXT,
    MaintenanceDueDate DATE,
    LastMaintenanceDate DATE,
    OperationalStatus TEXT,
    OwnerAgency TEXT,
    InstallationCostUSD INTEGER,
    WarrantyEndDate DATE,
    SignalStrengthDbm INTEGER,
    EncryptionEnabled BOOLEAN,
    Comments TEXT,
    CatalogedBy TEXT,
    CatalogedAt TIMESTAMP
);

INSERT INTO smart_city_noise_sensor_inventory VALUES
(1001,'2022-03-01',34.0522,-118.2437,'MainSt','Downtown','NoiseX200','1.4.2','2024-01-15',85.0,70.5,92,'5G',60,'Solar','2024-12-01','2024-06-20','Active','CityOps',1500,'2026-03-01',-68,1,'Mounted on lamp post','TechTeam','2024-01-10 08:30:00');

INSERT INTO smart_city_noise_sensor_inventory VALUES
(1002,'2023-07-12',36.1699,-115.1398,'Broadway','Midtown','AcoustiPro','2.1.0','2024-02-10',90.0,78.0,85,'LoRaWAN',120,'Battery','2024-11-15','2024-07-01','Active','CityOps',1300,'2025-07-12',-72,1,'Near bus stop','TechTeam','2024-02-05 09:45:00');

INSERT INTO smart_city_noise_sensor_inventory VALUES
(1003,'2021-11-20',40.7128,-74.0060,'5thAve','FinancialDistrict','SoundGuard','1.9.5','2023-12-05',88.0,85.0,40,'WiFi',30,'Mains','2024-10-10','2024-05-30','MaintenanceNeeded','CityOps',2000,'2024-11-20',-80,0,'Requires battery replacement','TechTeam','2024-05-01 07:15:00');

-- Satellite observations metadata
CREATE TABLE satellite_observations
(
    ObservationID INTEGER PRIMARY KEY,
    SatelliteName TEXT,
    SensorType TEXT,
    ObservationDate DATE,
    CaptureTimeUTC TEXT,
    Latitude REAL,
    Longitude REAL,
    SpatialResolutionMeters REAL,
    CloudCoverPercent REAL,
    SpectralBand TEXT,
    ProductLevel TEXT,
    DataVolumeGB REAL,
    ProcessingAlgorithm TEXT,
    GeoreferenceMethod TEXT,
    CalibrationVersion TEXT,
    OrbitNumber INTEGER,
    CycleNumber INTEGER,
    TileID TEXT,
    GroundSampleDistanceMeters REAL,
    ObservationPurpose TEXT,
    DataProvider TEXT,
    AccessRights TEXT,
    DownloadURL TEXT,
    QAFlag BOOLEAN,
    Comments TEXT,
    IngestedBy TEXT,
    IngestedAt TIMESTAMP
);

INSERT INTO satellite_observations VALUES
(5001,'Landsat8','OLI','2024-09-15','12:30:00',34.0564,-117.1956,30.0,10.5,'RedEdge','Level2',2.5,'AtmosphericCorrection','GroundControl','V2',12345,67,'T32TLM',15.0,'LandCoverMapping','USGS','Open','http://example.com/obs/5001','1','Clear scene','ETLUser','2024-09-16 10:00:00');

INSERT INTO satellite_observations VALUES
(5002,'Sentinel-2A','MSI','2024-09-20','14:45:00',48.8566,2.3522,10.0,5.0,'NIR','Level1C',3.1,'RadiometricCalibration','GroundControl','V3',54321,22,'T31UFS',5.0,'UrbanHeatIsland','ESA','Restricted','http://example.com/obs/5002','0','High clouds on edge','ETLUser','2024-09-21 08:30:00');

INSERT INTO satellite_observations VALUES
(5003,'WorldView-3','Pansharp','2024-09-25','09:15:00',-33.8688,151.2093,0.31,0.0,'Pan','Level3',1.8,'ImageFusion','GroundControl','V1',67890,13,'WV3_001',0.31,'DisasterResponse','Maxar','Open','http://example.com/obs/5003','1','No issues','ETLUser','2024-09-26 12:45:00');

-- Smart city water quality monitoring stations
CREATE TABLE smart_city_water_quality_monitoring_stations
(
    StationID INTEGER PRIMARY KEY,
    StationName TEXT,
    Latitude REAL,
    Longitude REAL,
    InstallationDate DATE,
    SensorModel TEXT,
    FirmwareVersion TEXT,
    CalibrationDate DATE,
    ParameterPH REAL,
    ParameterTurbidityNTU REAL,
    ParameterConductivityUS REAL,
    ParameterTemperatureC REAL,
    ParameterResidualChlorineMGPL REAL,
    SamplingFrequencyMin INTEGER,
    DataTransmissionIntervalSec INTEGER,
    PowerSource TEXT,
    BatteryLevelPercent INTEGER,
    ConnectivityType TEXT,
    MaintenanceDueDate DATE,
    LastMaintenanceDate DATE,
    OperationalStatus TEXT,
    OwnerAgency TEXT,
    InstallationCostUSD INTEGER,
    WarrantyEndDate DATE,
    SignalStrengthDbm INTEGER,
    EncryptionEnabled BOOLEAN,
    Comments TEXT,
    ManagedBy TEXT,
    ManagedAt TIMESTAMP
);

INSERT INTO smart_city_water_quality_monitoring_stations VALUES
(2001,'RiverPark Station',40.730610,-73.935242,'2023-05-10','AquaSense3000','3.2.1','2024-02-01',7.2,1.5,150,22.0,0.2,30,120,'Solar',85,'Cellular','2024-12-01','2024-06-15','Active','WaterDept',25000,'2026-05-10',-70,1,'Located near main footbridge','OpsTeam','2024-03-01 09:00:00');

INSERT INTO smart_city_water_quality_monitoring_stations VALUES
(2002,'LakeView Station',34.052235,-118.243683,'2022-08-20','HydroMonitorX','2.9.4','2023-11-20',7.5,0.8,120,18.5,0.3,15,60,'Mains',null,'WiFi','2024-10-15','2024-04-20','Active','WaterDept',30000,'2025-08-20',-65,1,'Near municipal intake','OpsTeam','2024-02-15 10:30:00');

INSERT INTO smart_city_water_quality_monitoring_stations VALUES
(2003,'CoastalEdge Station',36.778259,-119.417931,'2024-01-05','SeaGuard200','1.5.0','2024-01-25',8.0,2.0,200,25.0,0.1,45,180,'Battery',70,'Satellite','2025-01-05','2024-07-01','Inactive','WaterDept',20000,'2027-01-05',-80,0,'Awaiting power upgrade','OpsTeam','2024-04-01 11:45:00');