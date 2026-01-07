-- District capital projects table
CREATE TABLE district_capital_projects
(
    ProjectID                TEXT NOT NULL PRIMARY KEY,
    ProjectName              TEXT,
    ProjectType              TEXT,
    StartDate                TEXT,
    EndDate                  TEXT,
    EstimatedCost            REAL,
    AwardedFunding           REAL,
    FundingSource            TEXT,
    Status                   TEXT,
    LeadAgency               TEXT,
    County                   TEXT,
    City                     TEXT,
    ZipCode                  TEXT,
    Latitude                 REAL,
    Longitude                REAL,
    EstimatedJobsCreated     INTEGER,
    ActualJobsCreated        INTEGER,
    EnvironmentalImpactScore REAL,
    CommunitySupportLevel    REAL,
    ProjectDescription       TEXT
);

INSERT INTO district_capital_projects (ProjectID,ProjectName,ProjectType,StartDate,EndDate,EstimatedCost,AwardedFunding,FundingSource,Status,LeadAgency,County,City,ZipCode,Latitude,Longitude,EstimatedJobsCreated,ActualJobsCreated,EnvironmentalImpactScore,CommunitySupportLevel,ProjectDescription) VALUES
('DP001','RiverfrontParkRedevelopment','Park','2021-06-01','2023-12-31',7500000,5000000,'StateGrant','InProgress','DeptOfParks','Orange','Orlando','32801',28.5383,-81.3792,120,0,85.5,92.0,'Redeveloping the riverfront area with walking trails and playgrounds');

INSERT INTO district_capital_projects (ProjectID,ProjectName,ProjectType,StartDate,EndDate,EstimatedCost,AwardedFunding,FundingSource,Status,LeadAgency,County,City,ZipCode,Latitude,Longitude,EstimatedJobsCreated,ActualJobsCreated,EnvironmentalImpactScore,CommunitySupportLevel,ProjectDescription) VALUES
('DP002','EastSideHighSchoolExpansion','School','2022-01-15','2025-06-30',12000000,8000000,'BondIssue','Planned','DeptOfEducation','Miami-Dade','Miami','33101',25.7617,-80.1918,200,0,78.0,88.5,'Adding new science labs and a performing arts wing');

INSERT INTO district_capital_projects (ProjectID,ProjectName,ProjectType,StartDate,EndDate,EstimatedCost,AwardedFunding,FundingSource,Status,LeadAgency,County,City,ZipCode,Latitude,Longitude,EstimatedJobsCreated,ActualJobsCreated,EnvironmentalImpactScore,CommunitySupportLevel,ProjectDescription) VALUES
('DP003','SolarFarmNorth','Energy','2020-03-10','2024-09-20',25000000,25000000,'FederalProgram','Completed','DeptOfEnergy','Broward','Fort Lauderdale','33301',26.1224,-80.1373,350,350,92.0,95.0,'Utility-scale solar farm providing renewable energy to the district');

-- School transport network table
CREATE TABLE school_transport_network
(
    RouteID                 TEXT NOT NULL PRIMARY KEY,
    RouteName               TEXT,
    ServiceArea             TEXT,
    DistanceMiles           REAL,
    AvgTravelTimeMin        REAL,
    VehicleCount            INTEGER,
    DriverCount             INTEGER,
    FuelType                TEXT,
    AvgFuelConsumption      REAL,
    EmissionTonnesCO2       REAL,
    ScheduleStartTime       TEXT,
    ScheduleEndTime         TEXT,
    FrequencyMinutes        INTEGER,
    InServiceFlag           INTEGER,
    MaintenanceCostAnnual   REAL,
    LastInspectionDate      TEXT,
    MaxCapacity             INTEGER,
    CurrentRidership        INTEGER,
    OnTimePerformancePct   REAL,
    Comments                TEXT
);

INSERT INTO school_transport_network (RouteID,RouteName,ServiceArea,DistanceMiles,AvgTravelTimeMin,VehicleCount,DriverCount,FuelType,AvgFuelConsumption,EmissionTonnesCO2,ScheduleStartTime,ScheduleEndTime,FrequencyMinutes,InServiceFlag,MaintenanceCostAnnual,LastInspectionDate,MaxCapacity,CurrentRidership,OnTimePerformancePct,Comments) VALUES
('R001','NorthLoop','North District',15.2,35.0,12,12,'Diesel',120.5,1.2,'06:30','18:00',30,1,25000,'2023-04-12',800,720,96.5,'High demand during morning hours');

INSERT INTO school_transport_network (RouteID,RouteName,ServiceArea,DistanceMiles,AvgTravelTimeMin,VehicleCount,DriverCount,FuelType,AvgFuelConsumption,EmissionTonnesCO2,ScheduleStartTime,ScheduleEndTime,FrequencyMinutes,InServiceFlag,MaintenanceCostAnnual,LastInspectionDate,MaxCapacity,CurrentRidership,OnTimePerformancePct,Comments) VALUES
('R002','EastSideExpress','East District',22.5,45.0,8,8,'Electric',0.0,0.0,'07:00','17:30',20,1,18000,'2023-03-20',600,560,98.2,'Zero emission electric buses');

INSERT INTO school_transport_network (RouteID,RouteName,ServiceArea,DistanceMiles,AvgTravelTimeMin,VehicleCount,DriverCount,FuelType,AvgFuelConsumption,EmissionTonnesCO2,ScheduleStartTime,ScheduleEndTime,FrequencyMinutes,InServiceFlag,MaintenanceCostAnnual,LastInspectionDate,MaxCapacity,CurrentRidership,OnTimePerformancePct,Comments) VALUES
('R003','SouthLoop','South District',18.7,40.0,10,10,'Hybrid',85.0,0.8,'06:45','19:00',25,1,22000,'2023-02-10',750,680,94.0,'Mixed fleet with hybrid vehicles');

-- Community sustainability metrics table
CREATE TABLE community_sustainability_metrics
(
    MetricID                TEXT NOT NULL PRIMARY KEY,
    MetricName              TEXT,
    Year                    INTEGER,
    County                  TEXT,
    Population              INTEGER,
    AvgHouseholdEnergyUseKWh REAL,
    RenewableEnergyPct      REAL,
    WaterUsePerCapitaGallons REAL,
    WasteRecycledPct        REAL,
    AirQualityIndex         REAL,
    GreenSpaceAcres         REAL,
    BikeLaneMiles           REAL,
    PublicTransitRidership  INTEGER,
    TreeCanopyPct           REAL,
    ClimateResilienceScore  REAL,
    FundingAllocatedUSD     REAL,
    ProjectsCompleted       INTEGER,
    SurveyScore             REAL,
    DataSource              TEXT,
    Notes                   TEXT
);

INSERT INTO community_sustainability_metrics (MetricID,MetricName,Year,County,Population,AvgHouseholdEnergyUseKWh,RenewableEnergyPct,WaterUsePerCapitaGallons,WasteRecycledPct,AirQualityIndex,GreenSpaceAcres,BikeLaneMiles,PublicTransitRidership,TreeCanopyPct,ClimateResilienceScore,FundingAllocatedUSD,ProjectsCompleted,SurveyScore,DataSource,Notes) VALUES
('M001','OverallSustainability',2022,'Orange',1400000,3500,22.5,120,45,42,500,120,3000000,30,78,15000000,25,85,'CountyReport','Includes new solar initiatives');

INSERT INTO community_sustainability_metrics (MetricID,MetricName,Year,County,Population,AvgHouseholdEnergyUseKWh,RenewableEnergyPct,WaterUsePerCapitaGallons,WasteRecycledPct,AirQualityIndex,GreenSpaceAcres,BikeLaneMiles,PublicTransitRidership,TreeCanopyPct,ClimateResilienceScore,FundingAllocatedUSD,ProjectsCompleted,SurveyScore,DataSource,Notes) VALUES
('M002','EnergyUse',2022,'Miami-Dade',2700000,3800,18.0,130,38,50,800,150,4200000,35,71,20000000,30,80,'StateEnergyAgency','Focus on demand response');

INSERT INTO community_sustainability_metrics (MetricID,MetricName,Year,County,Population,AvgHouseholdEnergyUseKWh,RenewableEnergyPct,WaterUsePerCapitaGallons,WasteRecycledPct,AirQualityIndex,GreenSpaceAcres,BikeLaneMiles,PublicTransitRidership,TreeCanopyPct,ClimateResilienceScore,FundingAllocatedUSD,ProjectsCompleted,SurveyScore,DataSource,Notes) VALUES
('M003','WaterConservation',2022,'Broward',1900000,3400,20.0,110,48,45,600,100,2500000,28,82,12000000,22,88,'WaterDept','Implemented tiered pricing');

-- School artifact inventory table
CREATE TABLE school_artifact_inventory
(
    ArtifactID              TEXT NOT NULL PRIMARY KEY,
    ArtifactName            TEXT,
    Category                TEXT,
    AcquisitionDate         TEXT,
    Origin                  TEXT,
    ConditionRating         REAL,
    EstimatedValueUSD       REAL,
    DisplayLocation         TEXT,
    Custodian               TEXT,
    ConservationStatus      TEXT,
    LastConservationDate    TEXT,
    InsurancePolicyNumber   TEXT,
    InsuredValueUSD         REAL,
    ExhibitStatus           TEXT,
    LoanedToInstitution     TEXT,
    LoanStartDate           TEXT,
    LoanEndDate             TEXT,
    Materials               TEXT,
    Dimensions              TEXT,
    PhotoReference          TEXT
);

INSERT INTO school_artifact_inventory (ArtifactID,ArtifactName,Category,AcquisitionDate,Origin,ConditionRating,EstimatedValueUSD,DisplayLocation,Custodian,ConservationStatus,LastConservationDate,InsurancePolicyNumber,InsuredValueUSD,ExhibitStatus,LoanedToInstitution,LoanStartDate,LoanEndDate,Materials,Dimensions,PhotoReference) VALUES
('A001','Bronze Statue of Athena','Sculpture','2010-05-20','Greece',9.2,15000,'Main Lobby','John Doe','Stable','2023-01-15','POL12345',15000,'OnDisplay','','','','Bronze','5ft x 2ft','IMG001');

INSERT INTO school_artifact_inventory (ArtifactID,ArtifactName,Category,AcquisitionDate,Origin,ConditionRating,EstimatedValueUSD,DisplayLocation,Custodian,ConservationStatus,LastConservationDate,InsurancePolicyNumber,InsuredValueUSD,ExhibitStatus,LoanedToInstitution,LoanStartDate,LoanEndDate,Materials,Dimensions,PhotoReference) VALUES
('A002','Historical Flag of 1965','Textile','2015-09-10','USA',8.5,8000,'History Wing','Jane Smith','Good','2022-11-03','POL67890',8000,'InStorage','University Museum','2024-01-01','2025-01-01','Cotton','6ft x 4ft','IMG002');

INSERT INTO school_artifact_inventory (ArtifactID,ArtifactName,Category,AcquisitionDate,Origin,ConditionRating,EstimatedValueUSD,DisplayLocation,Custodian,ConservationStatus,LastConservationDate,InsurancePolicyNumber,InsuredValueUSD,ExhibitStatus,LoanedToInstitution,LoanStartDate,LoanEndDate,Materials,Dimensions,PhotoReference) VALUES
('A003','Ancient Clay Pot','Ceramics','2018-03-05','Mexico',7.8,1200,'Culture Room','Emily Lee','Fair','2023-05-20','POL54321',1200,'OnDisplay','','','','Clay','12in height','IMG003');

-- District technology asset audit table
CREATE TABLE district_technology_asset_audit
(
    AssetID                 TEXT NOT NULL PRIMARY KEY,
    AssetType               TEXT,
    Manufacturer            TEXT,
    Model                   TEXT,
    SerialNumber            TEXT,
    PurchaseDate            TEXT,
    WarrantyEndDate         TEXT,
    AssignedSchoolID        TEXT,
    AssignedDepartment      TEXT,
    LifecycleStage          TEXT,
    CostUSD                 REAL,
    DepreciationRate        REAL,
    CurrentValueUSD         REAL,
    MaintenanceSchedule     TEXT,
    LastServiceDate         TEXT,
    ServiceProvider         TEXT,
    FirmwareVersion         TEXT,
    NetworkIP               TEXT,
    MACAddress              TEXT,
    Status                  TEXT
);

INSERT INTO district_technology_asset_audit (AssetID,AssetType,Manufacturer,Model,SerialNumber,PurchaseDate,WarrantyEndDate,AssignedSchoolID,AssignedDepartment,LifecycleStage,CostUSD,DepreciationRate,CurrentValueUSD,MaintenanceSchedule,LastServiceDate,ServiceProvider,FirmwareVersion,NetworkIP,MACAddress,Status) VALUES
('T001','Server','Dell','PowerEdge R740','SN123456','2019-08-01','2022-08-01','SCH001','IT','Midlife',25000,15,21250,'Annual','2023-06-10','TechServCo','v2.3','10.0.0.5','00:1A:2B:3C:4D:5E','Active');

INSERT INTO district_technology_asset_audit (AssetID,AssetType,Manufacturer,Model,SerialNumber,PurchaseDate,WarrantyEndDate,AssignedSchoolID,AssignedDepartment,LifecycleStage,CostUSD,DepreciationRate,CurrentValueUSD,MaintenanceSchedule,LastServiceDate,ServiceProvider,FirmwareVersion,NetworkIP,MACAddress,Status) VALUES
('T002','Laptop','Apple','MacBook Pro','SN987654','2021-01-15','2024-01-15','SCH045','Administration','New',1800,10,1620,'Biannual','2023-09-01','AppleCare','macOS12.5','10.0.1.22','00:1B:2C:3D:4E:5F','Active');

INSERT INTO district_technology_asset_audit (AssetID,AssetType,Manufacturer,Model,SerialNumber,PurchaseDate,WarrantyEndDate,AssignedSchoolID,AssignedDepartment,LifecycleStage,CostUSD,DepreciationRate,CurrentValueUSD,MaintenanceSchedule,LastServiceDate,ServiceProvider,FirmwareVersion,NetworkIP,MACAddress,Status) VALUES
('T003','Projector','Epson','PowerLite X41','SN555777','2018-05-20','2021-05-20','SCH012','Classroom','EndOfLife',1200,20,720,'Annual','2022-12-15','AVTech','v1.9','10.0.2.8','00:1C:2D:3E:4F:5A','Retired');

-- School energy storage inventory table
CREATE TABLE school_energy_storage_inventory
(
    StorageID               TEXT NOT NULL PRIMARY KEY,
    StorageType             TEXT,
    CapacityMWh             REAL,
    Manufacturer            TEXT,
    Model                   TEXT,
    InstallationDate        TEXT,
    SiteLocation            TEXT,
    CurrentChargePct        REAL,
    ExpectedLifeYears       INTEGER,
    SafetyCertification     TEXT,
    OperatingTemperatureC   REAL,
    VoltageKV               REAL,
    OwnerEntity             TEXT,
    MaintenanceContractID   TEXT,
    LastInspectionDate      TEXT,
    DecommissionDate        TEXT,
    Notes                   TEXT,
    FundingSource           TEXT,
    ProjectID               TEXT,
    GridConnectionPoint     TEXT,
    Status                  TEXT
);

INSERT INTO school_energy_storage_inventory (StorageID,StorageType,CapacityMWh,Manufacturer,Model,InstallationDate,SiteLocation,CurrentChargePct,ExpectedLifeYears,SafetyCertification,OperatingTemperatureC,VoltageKV,OwnerEntity,MaintenanceContractID,LastInspectionDate,DecommissionDate,Notes,FundingSource,ProjectID,GridConnectionPoint,Status) VALUES
('S001','Battery','0.5','Tesla','Powerwall 2','2022-02-10','North Campus','85',15,'UL9540A',25,0.48,'District','MC1001','2023-02-15','', 'Supports peak shaving','Bond','PRJ001','NodeA','Active');

INSERT INTO school_energy_storage_inventory (StorageID,StorageType,CapacityMWh,Manufacturer,Model,InstallationDate,SiteLocation,CurrentChargePct,ExpectedLifeYears,SafetyCertification,OperatingTemperatureC,VoltageKV,OwnerEntity,MaintenanceContractID,LastInspectionDate,DecommissionDate,Notes,FundingSource,ProjectID,GridConnectionPoint,Status) VALUES
('S002','Battery','1.2','LG','RESU','2021-09-05','South Campus','60',20,'UL9540A',30,0.48,'District','MC1002','2023-01-20','', 'Used for emergency backup','StateGrant','PRJ045','NodeB','Active');

INSERT INTO school_energy_storage_inventory (StorageID,StorageType,CapacityMWh,Manufacturer,Model,InstallationDate,SiteLocation,CurrentChargePct,ExpectedLifeYears,SafetyCertification,OperatingTemperatureC,VoltageKV,OwnerEntity,MaintenanceContractID,LastInspectionDate,DecommissionDate,Notes,FundingSource,ProjectID,GridConnectionPoint,Status) VALUES
('S003','Flywheel','0.3','Beacon','FlywheelX','2020-06-15','East Campus','40',10,'ISO9001',20,0.5,'District','MC1003','2022-12-01','2028-06-15','Demonstration project','FederalGrant','PRJ078','NodeC','PlannedDecommission');

-- Community arts festival events table
CREATE TABLE community_arts_festival_events
(
    EventID                 TEXT NOT NULL PRIMARY KEY,
    FestivalName            TEXT,
    EventDate               TEXT,
    Venue                   TEXT,
    City                    TEXT,
    County                  TEXT,
    ExpectedAttendance      INTEGER,
    TicketPriceUSD          REAL,
    Sponsor                 TEXT,
    ProgramDescription      TEXT,
    ArtistName              TEXT,
    PerformanceType         TEXT,
    DurationMinutes         INTEGER,
    AccessibilityFeatures   TEXT,
    SafetyPlanID            TEXT,
    MediaCoverageLink       TEXT,
    VolunteerCount          INTEGER,
    FundingAmountUSD        REAL,
    FeedbackScore           REAL,
    ContactEmail            TEXT,
    Notes                   TEXT
);

INSERT INTO community_arts_festival_events (EventID,FestivalName,EventDate,Venue,City,County,ExpectedAttendance,TicketPriceUSD,Sponsor,ProgramDescription,ArtistName,PerformanceType,DurationMinutes,AccessibilityFeatures,SafetyPlanID,MediaCoverageLink,VolunteerCount,FundingAmountUSD,FeedbackScore,ContactEmail,Notes) VALUES
('E001','Summer Arts Fest','2023-08-12','Central Park Amphitheater','Orlando','Orange',5000,15,'Arts Council','Live music, dance, and visual arts','The Rhythm Band','Music',120,'WheelchairRamp','SP1001','http://media.example.com/cover1','200',25000,4.6,'info@summerarts.org','First year of the festival');

INSERT INTO community_arts_festival_events (EventID,FestivalName,EventDate,Venue,City,County,ExpectedAttendance,TicketPriceUSD,Sponsor,ProgramDescription,ArtistName,PerformanceType,DurationMinutes,AccessibilityFeatures,SafetyPlanID,MediaCoverageLink,VolunteerCount,FundingAmountUSD,FeedbackScore,ContactEmail,Notes) VALUES
('E002','Autumn Sculpture Walk','2023-10-05','Riverwalk Trail','Miami','Miami-Dade',3000,0,'Sculpture Guild','Outdoor sculpture installations','Laura Chen','Installation',0,'AudioGuide','SP1002','http://media.example.com/cover2','150',18000,4.8,'contact@autumnsculpture.org','Free public event');

INSERT INTO community_arts_festival_events (EventID,FestivalName,EventDate,Venue,City,County,ExpectedAttendance,TicketPriceUSD,Sponsor,ProgramDescription,ArtistName,PerformanceType,DurationMinutes,AccessibilityFeatures,SafetyPlanID,MediaCoverageLink,VolunteerCount,FundingAmountUSD,FeedbackScore,ContactEmail,Notes) VALUES
('E003','Winter Lights Parade','2023-12-20','Downtown Main Street','Tampa','Hillsborough',8000,5,'City Council','Holiday parade with floats and bands','Various','Parade',180,'SignLanguageInterpreter','SP1003','http://media.example.com/cover3','300',35000,4.5,'parade@winterlights.org','Includes fireworks display');

-- District heritage preservation projects table
CREATE TABLE district_heritage_preservation_projects
(
    ProjectID               TEXT NOT NULL PRIMARY KEY,
    SiteName                TEXT,
    HistoricDesignation     TEXT,
    AcquisitionDate         TEXT,
    PreservationStatus      TEXT,
    FundingSource           TEXT,
    GrantAmountUSD          REAL,
    Contractor              TEXT,
    StartDate               TEXT,
    ExpectedCompletionDate  TEXT,
    EstimatedCostUSD        REAL,
    AreaAcres               REAL,
    Architect               TEXT,
    CurrentUse              TEXT,
    PublicAccessFlag       INTEGER,
    ConservationPlanID      TEXT,
    ConditionRating         REAL,
    ThreatLevel             TEXT,
    CommunityEngagementScore REAL,
    ProjectManager          TEXT,
    Notes                   TEXT
);

INSERT INTO district_heritage_preservation_projects (ProjectID,SiteName,HistoricDesignation,AcquisitionDate,PreservationStatus,FundingSource,GrantAmountUSD,Contractor,StartDate,ExpectedCompletionDate,EstimatedCostUSD,AreaAcres,Architect,CurrentUse,PublicAccessFlag,ConservationPlanID,ConditionRating,ThreatLevel,CommunityEngagementScore,ProjectManager,Notes) VALUES
('HP001','Old Town Hall','National Register','2018-04-12','InProgress','FederalGrant',500000,'Heritage Builders','2022-01-15','2025-12-31',1200000,2.5,'Smith Architects','Museum',1,'CP001',8.5,'Low',92,'Maria Gomez','Restoring original façade');

INSERT INTO district_heritage_preservation_projects (ProjectID,SiteName,HistoricDesignation,AcquisitionDate,PreservationStatus,FundingSource,GrantAmountUSD,Contractor,StartDate,ExpectedCompletionDate,EstimatedCostUSD,AreaAcres,Architect,CurrentUse,PublicAccessFlag,ConservationPlanID,ConditionRating,ThreatLevel,CommunityEngagementScore,ProjectManager,Notes) VALUES
('HP002','River Bridge','State Historic Landmark','2015-09-30','Completed','StateGrant',300000,'Bridge Renovators','2019-05-01','2021-08-31',700000,0.8,'River Engineering','Pedestrian Bridge',1,'CP002',9.2,'Medium',85,'John Lee','Added lighting and interpretive signage');

INSERT INTO district_heritage_preservation_projects (ProjectID,SiteName,HistoricDesignation,AcquisitionDate,PreservationStatus,FundingSource,GrantAmountUSD,Contractor,StartDate,ExpectedCompletionDate,EstimatedCostUSD,AreaAcres,Architect,CurrentUse,PublicAccessFlag,ConservationPlanID,ConditionRating,ThreatLevel,CommunityEngagementScore,ProjectManager,Notes) VALUES
('HP003','Historic Schoolhouse','Local Landmark','2020-02-20','Planning','PrivateDonation',150000,'Restore Co.','2024-03-01','2026-06-30',350000,0.3,'Legacy Designs','Community Center',0,'CP003',7.0,'High',78,'Sofia Patel','Will serve after renovation as a meeting space');

-- School cybersecurity incident report table
CREATE TABLE school_cybersecurity_incident_report
(
    IncidentID              TEXT NOT NULL PRIMARY KEY,
    ReportDate              TEXT,
    SchoolID                TEXT,
    IncidentType            TEXT,
    DetectedBy              TEXT,
    ImpactScope             TEXT,
    DataCompromisedFlag     INTEGER,
    SystemsAffected         TEXT,
    ResponseTimeHours       REAL,
    MitigationSteps         TEXT,
    Status                  TEXT,
    FollowUpDate            TEXT,
    ReportingOfficer        TEXT,
    IncidentDescription     TEXT,
    ContainmentStrategy     TEXT,
    NotificationSentFlag    INTEGER,
    RecoveryTimeHours       REAL,
    LessonsLearned          TEXT,
    RegulatoryComplianceFlag INTEGER,
    ExternalAgencyInvolved  TEXT,
    Notes                   TEXT
);

INSERT INTO school_cybersecurity_incident_report (IncidentID,ReportDate,SchoolID,IncidentType,DetectedBy,ImpactScope,DataCompromisedFlag,SystemsAffected,ResponseTimeHours,MitigationSteps,Status,FollowUpDate,ReportingOfficer,IncidentDescription,ContainmentStrategy,NotificationSentFlag,RecoveryTimeHours,LessonsLearned,RegulatoryComplianceFlag,ExternalAgencyInvolved,Notes) VALUES
('CI001','2023-04-10','SCH001','Phishing','SecurityTeam','Email accounts','0','EmailServer','2.5','Password resets, MFA enforced','Resolved','2023-04-20','Laura White','Staff received fraudulent email','User account isolation','1','4.0','Improved phishing training','1','StateCyberAgency','No data loss');

INSERT INTO school_cybersecurity_incident_report (IncidentID,ReportDate,SchoolID,IncidentType,DetectedBy,ImpactScope,DataCompromisedFlag,SystemsAffected,ResponseTimeHours,MitigationSteps,Status,FollowUpDate,ReportingOfficer,IncidentDescription,ContainmentStrategy,NotificationSentFlag,RecoveryTimeHours,LessonsLearned,RegulatoryComplianceFlag,ExternalAgencyInvolved,Notes) VALUES
('CI002','2023-07-22','SCH045','Ransomware','ITStaff','Network segment','1','StudentPortal','1.0','Isolated segment, restored from backup','Closed','2023-08-01','Mark Allen','Encrypted student records','Network segmentation','1','6.5','Regular backups essential','1','FederalCyberTaskForce','Encrypted files recovered');

INSERT INTO school_cybersecurity_incident_report (IncidentID,ReportDate,SchoolID,IncidentType,DetectedBy,ImpactScope,DataCompromisedFlag,SystemsAffected,ResponseTimeHours,MitigationSteps,Status,FollowUpDate,ReportingOfficer,IncidentDescription,ContainmentStrategy,NotificationSentFlag,RecoveryTimeHours,LessonsLearned,RegulatoryComplianceFlag,ExternalAgencyInvolved,Notes) VALUES
('CI003','2024-01-15','SCH012','DDoS','NetworkMonitor','Website','0','PublicWebsite','0.5','Traffic filtering, increased bandwidth','Monitoring','2024-01-30','Susan Patel','Large volume of traffic disrupted site','Rate limiting','0','0','Preparedness plan updated','0','None','No outage beyond 30 minutes');

-- District transportation fuel efficiency records table
CREATE TABLE district_transportation_fuel_efficiency_records
(
    RecordID                TEXT NOT NULL PRIMARY KEY,
    VehicleID               TEXT,
    FuelType                TEXT,
    Year                    INTEGER,
    TotalMilesDriven        REAL,
    TotalFuelConsumedGallons REAL,
    AvgMPG                  REAL,
    EmissionFactor          REAL,
    CO2EmissionsTons        REAL,
    MaintenanceCostUSD      REAL,
    DriverID                TEXT,
    RouteID                 TEXT,
    LoadFactorPct           REAL,
    FuelCostUSD             REAL,
    FuelSupplier            TEXT,
    AvgEngineLoadPct        REAL,
    IdleTimeHours           REAL,
    AvgSpeedMPH             REAL,
    EnvironmentalIncentiveFlag INTEGER,
    Notes                   TEXT
);

INSERT INTO district_transportation_fuel_efficiency_records (RecordID,VehicleID,FuelType,Year,TotalMilesDriven,TotalFuelConsumedGallons,AvgMPG,EmissionFactor,CO2EmissionsTons,MaintenanceCostUSD,DriverID,RouteID,LoadFactorPct,FuelCostUSD,FuelSupplier,AvgEngineLoadPct,IdleTimeHours,AvgSpeedMPH,EnvironmentalIncentiveFlag,Notes) VALUES
('FR001','VAN001','Diesel',2023,25000,1200,20.8,2.68,3.2,15000,'D001','R001',75,36000,'FuelCo','70',15,35,1,'Routine long‑haul bus');

INSERT INTO district_transportation_fuel_efficiency_records (RecordID,VehicleID,FuelType,Year,TotalMilesDriven,TotalFuelConsumedGallons,AvgMPG,EmissionFactor,CO2EmissionsTons,MaintenanceCostUSD,DriverID,RouteID,LoadFactorPct,FuelCostUSD,FuelSupplier,AvgEngineLoadPct,IdleTimeHours,AvgSpeedMPG,EnvironmentalIncentiveFlag,Notes) VALUES
('FR002','VAN002','Electric',2023,18000,0,0,0,0,12000,'D015','R002',65,24000,'ElectricUtility','90',10,40,1,'Zero‑emission shuttle');

INSERT INTO district_transportation_fuel_efficiency_records (RecordID,VehicleID,FuelType,Year,TotalMilesDriven,TotalFuelConsumedGallons,AvgMPG,EmissionFactor,CO2EmissionsTons,MaintenanceCostUSD,DriverID,RouteID,LoadFactorPct,FuelCostUSD,FuelSupplier,AvgEngineLoadPct,IdleTimeHours,AvgSpeedMPH,EnvironmentalIncentiveFlag,Notes) VALUES
('FR003','VAN003','Hybrid',2022,30000,1500,20.0,2.5,3.0,18000,'D023','R003',80,45000,'HybridFuelCo','75',20,38,0,'Hybrid bus nearing end of service');