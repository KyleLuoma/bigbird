-- Table storing periodic readings from urban traffic sensors
CREATE TABLE urban_traffic_sensor_data
(
    SensorId INTEGER,
    LocationCode TEXT,
    Timestamp DATETIME,
    VehicleCount INTEGER,
    AvgSpeed FLOAT,
    CongestionLevel INTEGER,
    IncidentFlag INTEGER,
    WeatherCondition TEXT,
    Temperature FLOAT,
    Humidity FLOAT,
    AirQualityIndex INTEGER,
    RoadSurface TEXT,
    LaneCount INTEGER,
    SignalState TEXT,
    CameraSnapshotUrl TEXT,
    DataSource TEXT,
    Latitude FLOAT,
    Longitude FLOAT,
    MaintenanceDueDate DATE,
    FirmwareVersion TEXT,
    BatteryLevel FLOAT,
    SignalStrength INTEGER,
    PRIMARY KEY (SensorId, Timestamp)
);
INSERT INTO urban_traffic_sensor_data VALUES (101,'LOC001','2024-12-01 08:00:00',120,45.3,2,0,'Clear',22.5,55.0,42,'Asphalt',4,'Green','http://example.com/snap1.jpg','SensorHubA',40.7128,-74.0060,'2025-01-15','v1.2.3',95.0,78);
INSERT INTO urban_traffic_sensor_data VALUES (102,'LOC002','2024-12-01 08:05:00',87,38.7,3,1,'Rain',18.2,78.0,58,'Concrete',3,'Yellow','http://example.com/snap2.jpg','SensorHubB',34.0522,-118.2437,'2024-12-30','v1.2.4',88.5,65);
INSERT INTO urban_traffic_sensor_data VALUES (103,'LOC003','2024-12-01 08:10:00',150,50.0,1,0,'Clear',25.0,45.0,30,'Asphalt',5,'Green','http://example.com/snap3.jpg','SensorHubC',41.8781,-87.6298,'2025-03-10','v1.3.0',97.2,82);

-- Table tracking operational status of renewable energy facilities
CREATE TABLE renewable_energy_facility_status
(
    FacilityId INTEGER,
    FacilityName TEXT,
    FacilityType TEXT,
    CommissionDate DATE,
    RegionCode TEXT,
    CurrentOutputMW FLOAT,
    CapacityMW FLOAT,
    AvailabilityPercent FLOAT,
    NetGenerationMWh FLOAT,
    InverterHealthPercent FLOAT,
    TurbineHealthPercent FLOAT,
    WeatherImpactScore INTEGER,
    MaintenanceWindowStart DATETIME,
    MaintenanceWindowEnd DATETIME,
    LastInspectionDate DATE,
    OperationalStatus TEXT,
    GridConnectionStatus TEXT,
    CO2OffsetTons FLOAT,
    AnnualRevenueUSD FLOAT,
    OwnerOrganization TEXT,
    ContactEmail TEXT,
    Latitude FLOAT,
    Longitude FLOAT,
    PRIMARY KEY (FacilityId)
);
INSERT INTO renewable_energy_facility_status VALUES (201,'SolarParkAlpha','Solar','2020-06-15','RG01',45.6,60.0,92.0,42000.0,98.5,0.0,12,'2024-12-20 22:00:00','2024-12-21 06:00:00','2024-11-30','Active','Connected',1500.0,7800000.0,'EcoPower Inc','contact@ecopower.com',35.6895,139.6917);
INSERT INTO renewable_energy_facility_status VALUES (202,'WindFarmBeta','Wind','2018-04-20','RG02',120.3,150.0,80.2,105000.0,93.0,95.5,18,'2025-01-10 01:00:00','2025-01-10 09:00:00','2024-12-01','Active','Connected',3200.0,15000000.0,'WindEnergy LLC','info@windenergy.com',51.5074,-0.1278);
INSERT INTO renewable_energy_facility_status VALUES (203,'HydroStationGamma','Hydro','2015-09-05','RG03',85.0,100.0,85.0,74200.0,97.0,0.0,8,'2025-02-15 23:00:00','2025-02-16 07:00:00','2024-12-15','Active','Connected',2700.0,12000000.0','AquaPower Corp','support@aquapower.com',48.8566,2.3522);

-- Table recording telemetry from space missions
CREATE TABLE space_mission_telemetry
(
    MissionId INTEGER,
    MissionName TEXT,
    TelemetryTimestamp DATETIME,
    Subsystem TEXT,
    ParameterName TEXT,
    ParameterValue FLOAT,
    Units TEXT,
    StatusCode INTEGER,
    AnomalyFlag INTEGER,
    GroundStationId INTEGER,
    SignalStrengthDB FLOAT,
    DataRateKbps FLOAT,
    TemperatureCelsius FLOAT,
    VoltageVolts FLOAT,
    CurrentAmps FLOAT,
    FuelLevelPercent FLOAT,
    PowerMode TEXT,
    EventDescription TEXT,
    Latitude FLOAT,
    Longitude FLOAT,
    AltitudeKm FLOAT,
    VelocityKmh FLOAT,
    PRIMARY KEY (MissionId, TelemetryTimestamp, Subsystem)
);
INSERT INTO space_mission_telemetry VALUES (301,'LunaProbe','2024-12-01 12:00:00','Propulsion','Thrust','1500.0','N',0,0,11,85.2,256.0,-5.0,28.5,2.3,78.5,'Nominal','Engine nominal','0.0','0.0','200.0','27600.0');
INSERT INTO space_mission_telemetry VALUES (301,'LunaProbe','2024-12-01 12:01:00','Communication','SignalStrength','78.4','dB',0,0,11,78.4,256.0,0.0,0.0,0.0,0.0,'Nominal','Signal stable','0.0','0.0','200.0','27600.0');
INSERT INTO space_mission_telemetry VALUES (302,'MarsOrbiter','2024-12-01 13:15:00','Thermal','PanelTemp','-12.3','C',0,0,22,92.1,128.0,-12.3,0.0,0.0,0.0,'Nominal','Panels within range','-4.5','137.2','500.0','21000.0');

-- Table storing results of archaeological site surveys
CREATE TABLE archaeology_site_surveys
(
    SurveyId INTEGER,
    SiteCode TEXT,
    SurveyDate DATE,
    LeadArchaeologist TEXT,
    TeamSize INTEGER,
    AreaSqMeters FLOAT,
    DepthMeters FLOAT,
    ArtifactCount INTEGER,
    PotteryFragments INTEGER,
    MetalFinds INTEGER,
    StoneTools INTEGER,
    OrganicSamples INTEGER,
    SoilPH FLOAT,
    StratigraphyLevel INTEGER,
    GPSLat FLOAT,
    GPSLong FLOAT,
    WeatherDuringSurvey TEXT,
    Notes TEXT,
    FundingSource TEXT,
    ProjectPhase TEXT,
    ConservationStatus TEXT,
    EstimatedAgeYears INTEGER,
    PRIMARY KEY (SurveyId)
);
INSERT INTO archaeology_site_surveys VALUES (401,'ARC001','2024-06-10','Dr. Elena Ruiz',12,3500.0,2.5,124,87,5,32,14,6.8,3,34.0522,-118.2437','Sunny','Initial surface collection','NationalHeritageFund','Phase1','Pending','3500');
INSERT INTO archaeology_site_surveys VALUES (402,'ARC002','2024-07-22','Prof. Marco Tan',9,2100.0,1.8,58,40,2,15,7,7.2,2,41.8781,-87.6298','Cloudy','Deep trenching','UniversityGrant','Phase2','InProgress','1200');
INSERT INTO archaeology_site_surveys VALUES (403,'ARC003','2024-08-05','Dr. Aisha Khan',15,4800.0,3.0,210,150,12,45,20,6.5,4,51.5074,-0.1278','Rain','Waterlogged layers','InternationalOrg','Phase1','Completed','8000');

-- Table capturing details about clinical trial sites
CREATE TABLE clinical_trial_site_details
(
    SiteId INTEGER,
    SiteName TEXT,
    CountryCode TEXT,
    City TEXT,
    FacilityType TEXT,
    EnrollmentCapacity INTEGER,
    CurrentEnrollment INTEGER,
    PrincipalInvestigator TEXT,
    StartDate DATE,
    ExpectedEndDate DATE,
    IRBApprovalDate DATE,
    MonitoringPlan TEXT,
    DataCaptureSystem TEXT,
    StorageTemperatureCelsius FLOAT,
    BackupPowerAvailable INTEGER,
    SiteStatus TEXT,
    LastAuditDate DATE,
    ContactPhone TEXT,
    ContactEmail TEXT,
    Latitude FLOAT,
    Longitude FLOAT,
    StudyPhase TEXT,
    PRIMARY KEY (SiteId)
);
INSERT INTO clinical_trial_site_details VALUES (501,'MediCenter North','US','Boston','Hospital',200,150,'Dr. Linda Smith','2024-01-15','2025-12-31','2023-12-01','Monthly','Medidata',2.0,1,'Active','2024-10-01','6175550123','linda.smith@medicenter.org',42.3601,-71.0589','Phase3');
INSERT INTO clinical_trial_site_details VALUES (502,'HealthClinic East','CA','San Francisco','Clinic',120,80,'Dr. Raj Patel','2024-03-01','2025-08-15','2024-02-20','Quarterly','OpenClinica',4.0,1,'Active','2024-09-15','4155550198','raj.patel@healthclinic.com',37.7749,-122.4194','Phase2');
INSERT INTO clinical_trial_site_details VALUES (503,'ResearchInstitute West','UK','London','Research Center',300,260,'Prof. Emma Jones','2024-02-10','2026-02-10','2024-01-05','Biannual','REDCap',5.0,0,'Pending','2024-08-20','0205550156','emma.jones@researchinst.co.uk',51.5074,-0.1278','Phase3');

-- Table documenting inventory of museum artifacts
CREATE TABLE museum_artifact_inventory
(
    ArtifactId INTEGER,
    ArtifactName TEXT,
    Category TEXT,
    OriginPeriod TEXT,
    Provenance TEXT,
    AcquisitionDate DATE,
    CurrentLocation TEXT,
    ConditionStatus TEXT,
    EstimatedValueUSD FLOAT,
    DisplayStatus INTEGER,
    ConservationNotes TEXT,
    Material TEXT,
    DimensionsCm TEXT,
    WeightKg FLOAT,
    Artist TEXT,
    InsurancePolicyNumber TEXT,
    LastAppraisalDate DATE,
    CatalogNumber TEXT,
    AccessibilityLevel TEXT,
    RestrictedAccessFlag INTEGER,
    CuratorInCharge TEXT,
    StorageTemperatureCelsius FLOAT,
    PRIMARY KEY (ArtifactId)
);
INSERT INTO museum_artifact_inventory VALUES (601,'Bronze Age Mask','Sculpture','Bronze Age','Donated by John Doe','2010-05-12','Gallery A','Good',75000.0,1,'Minor patina','Bronze','30x20x15',2.5,'Unknown','POL123456','2023-11-01','CAT001','Public',0,'Dr. Anna Lee',20.0);
INSERT INTO museum_artifact_inventory VALUES (602,'Renaissance Painting','Painting','Renaissance','Purchased at auction','2015-09-23','Gallery B','Excellent',250000.0,1,'Frame restored','Oil on canvas','120x80',0.0,'Luca da Vinci','POL654321','2024-02-15','CAT002','Public',0,'Mr. Michael Brown',22.0);
INSERT INTO museum_artifact_inventory VALUES (603,'Ancient Coin','Numismatic','Roman Empire','Excavated site','2008-03-30','Vault','Fair',12000.0,0,'Corrosion on edge','Silver','Diameter 2.5',0.0,'Unknown','POL987654','2022-07-20','CAT003','Restricted',1,'Ms. Sara Kim',18.0);

-- Table storing historical records of food nutrition labels
CREATE TABLE food_nutrition_label_history
(
    LabelId INTEGER,
    ProductCode TEXT,
    BrandName TEXT,
    ProductName TEXT,
    ServingSize TEXT,
    Calories INTEGER,
    TotalFat_g FLOAT,
    SaturatedFat_g FLOAT,
    TransFat_g FLOAT,
    Cholesterol_mg INTEGER,
    Sodium_mg INTEGER,
    TotalCarbohydrate_g FLOAT,
    DietaryFiber_g FLOAT,
    TotalSugars_g FLOAT,
    AddedSugars_g FLOAT,
    Protein_g FLOAT,
    VitaminD_IU INTEGER,
    Calcium_mg INTEGER,
    Iron_mg FLOAT,
    Potassium_mg INTEGER,
    LabelEffectiveDate DATE,
    LabelExpirationDate DATE,
    PRIMARY KEY (LabelId)
);
INSERT INTO food_nutrition_label_history VALUES (701,'ABC123','Fresh Farms','Whole Wheat Bread','1 slice',80,1.5,0.3,0.0,0,150,14.0,2.0,2.5,0.5,6.0,0,0,40,120,'2023-01-01','2025-12-31');
INSERT INTO food_nutrition_label_history VALUES (702,'XYZ789','NutriSnack','Almond Butter','2 tbsp',190,16.0,1.5,0.0,0,5,6.0,3.0,3.0,0.0,7.0,0,0,260,200,'2024-03-15','2026-03-14');
INSERT INTO food_nutrition_label_history VALUES (703,'LMN456','Dairy Best','Greek Yogurt','150g',100,0.0,0.0,0.0,0,55,7.0,0.0,5.0,0.0,11.0,0,150,0.2,180,'2022-07-10','2024-07-09');

-- Table summarizing statistics of wildlife conservation projects
CREATE TABLE wildlife_conservation_project_stats
(
    ProjectId INTEGER,
    ProjectName TEXT,
    RegionCode TEXT,
    StartDate DATE,
    EndDate DATE,
    SpeciesTargeted TEXT,
    AreaProtectedSqKm FLOAT,
    BudgetUSD FLOAT,
    FundingSource TEXT,
    StaffCount INTEGER,
    VolunteersCount INTEGER,
    AnimalsTagged INTEGER,
    NestSitesCreated INTEGER,
    PatrolsConducted INTEGER,
    IllegalActivityIncidents INTEGER,
    CommunityOutreachEvents INTEGER,
    EducationSessions INTEGER,
    HabitatRestorationHa INTEGER,
    MonitoringFrequencyDays INTEGER,
    DataCollectedGB FLOAT,
    SuccessMetricScore FLOAT,
    CurrentStatus TEXT,
    PRIMARY KEY (ProjectId)
);
INSERT INTO wildlife_conservation_project_stats VALUES (801,'Savanna Elephant Initiative','AF01','2022-01-01','2025-12-31','Elephant',1500.0,5000000.0,'GlobalFund',25,120,340,15,200,5,40,12,300,30,120.5,78.4,'Active');
INSERT INTO wildlife_conservation_project_stats VALUES (802,'Rainforest Tiger Preserve','AS02','2021-04-15','2026-04-14','Tiger',800.0,7500000.0,'WorldWildlife',30,150,210,25,180,3,55,18,500,45,200.0,85.2,'Active');
INSERT INTO wildlife_conservation_project_stats VALUES (803,'Coastal Seabird Protection','OC03','2023-06-01','2028-05-31','Seabird',350.0,3000000.0,'OceanTrust',15,80,120,40,90,2,30,8,150,20,80.3,69.1,'Planning');

-- Table monitoring assets of the energy grid
CREATE TABLE energy_grid_asset_monitoring
(
    AssetId INTEGER,
    AssetType TEXT,
    InstallationDate DATE,
    Manufacturer TEXT,
    ModelNumber TEXT,
    SerialNumber TEXT,
    CapacityMW FLOAT,
    CurrentLoadMW FLOAT,
    VoltageKV FLOAT,
    CurrentKA FLOAT,
    TemperatureCelsius FLOAT,
    HumidityPercent FLOAT,
    FaultCode INTEGER,
    MaintenanceDueDate DATE,
    LastInspectionDate DATE,
    OperationalStatus TEXT,
    GPSLatitude FLOAT,
    GPSLongitude FLOAT,
    RegionCode TEXT,
    OwnerOrganization TEXT,
    ServiceContractId INTEGER,
    LastFailureDate DATE,
    PRIMARY KEY (AssetId)
);
INSERT INTO energy_grid_asset_monitoring VALUES (901,'Transformer','2015-08-20','Siemens','TX-5000','SN123456',250.0,180.5,33.0,10.2,45.0,55.0,0,'2025-08-20','2024-10-01','Operational',39.7392,-104.9903,'RG04','GridCo','SC001','2023-12-15');
INSERT INTO energy_grid_asset_monitoring VALUES (902,'CircuitBreaker','2018-03-11','GE','CB-200','SN654321',0.0,0.0,0.0,0.0,30.0,60.0,2,'2025-03-11','2024-09-20','Operational',34.0522,-118.2437,'RG05','PowerNet','SC002','2024-01-10');
INSERT INTO energy_grid_asset_monitoring VALUES (903,'Substation','2012-11-05','ABB','SS-800','SN777888',500.0,420.0,44.0,12.5,50.0,52.0,0,'2025-11-05','2024-08-15','Operational',51.5074,-0.1278,'RG06','EnergySys','SC003','2022-07-22');

-- Table logging access attempts to satellite communication systems
CREATE TABLE satellite_comm_access_logs
(
    LogId INTEGER,
    SatelliteId TEXT,
    GroundStationId TEXT,
    AccessStart DATETIME,
    AccessEnd DATETIME,
    FrequencyMHz FLOAT,
    BandwidthKHz INTEGER,
    ModulationScheme TEXT,
    AuthenticationResult INTEGER,
    EncryptionUsed INTEGER,
    DataVolumeMB FLOAT,
    UplinkPowerDbW FLOAT,
    DownlinkPowerDbW FLOAT,
    AntennaAzimuthDeg FLOAT,
    AntennaElevationDeg FLOAT,
    SNRdB FLOAT,
    BitErrorRate FLOAT,
    CommandSequence TEXT,
    OperatorId INTEGER,
    WeatherCondition TEXT,
    AtmosphericLossDB FLOAT,
    PRIMARY KEY (LogId)
);
INSERT INTO satellite_comm_access_logs VALUES (1001,'SAT-Alpha','GS-01','2024-12-01 00:00:00','2024-12-01 00:15:00',1450.0,2000,'QPSK',1,1,500.0,30.5,28.7,45.0,30.0,25.0,0.00001,'CMD-START;SETUP',101,'Clear',0.5);
INSERT INTO satellite_comm_access_logs VALUES (1002,'SAT-Beta','GS-02','2024-12-01 01:30:00','2024-12-01 01:45:00',2150.0,1500,'8PSK',1,0,350.0,28.0,26.5,60.0,20.0,22.5,0.00005,'CMD-INIT;CALIB',102,'Rain',1.2);
INSERT INTO satellite_comm_access_logs VALUES (1003,'SAT-Gamma','GS-03','2024-12-01 03:00:00','2024-12-01 03:20:00',860.0,2500,'BPSK',0,1,0.0,0.0,0.0,30.0,15.0,18.0,0.0,'',103,'Cloudy',0.8);