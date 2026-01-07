-- Energy storage facilities used at each venue
CREATE TABLE venue_energy_storage (
    storageId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    storageType TEXT,
    capacityMwh REAL,
    currentLevelMwh REAL,
    installationDate DATE,
    manufacturer TEXT,
    modelNumber TEXT,
    warrantyYears INTEGER,
    status TEXT,
    lastMaintenanceDate DATE,
    efficiencyPercent REAL,
    coolingSystemType TEXT,
    locationDescription TEXT,
    maxOutputMw REAL,
    minOperatingTemp REAL,
    maxOperatingTemp REAL,
    sensorCount INTEGER,
    complianceStandard TEXT,
    notes TEXT
);
INSERT INTO venue_energy_storage VALUES (1,101,'Battery','5.0','4.2','2022-03-15','PowerCo','PX1000',10,'Active','2023-07-10','95.5','Liquid','NorthWing','2.5','-10','45',12,'ISO9001','InitialInstall');
INSERT INTO venue_energy_storage VALUES (2,102,'Hydrogen','12.0','11.5','2021-09-01','HydroTech','HT200',8,'Active','2023-05-22','93.0','Air','SouthEastSection','4.0','-20','50',8,'ISO14001','RoutineCheck');
INSERT INTO venue_energy_storage VALUES (3,103,'Flywheel','3.5','3.0','2023-01-20','SpinEnergy','SF300',5,'Pending','2023-08-01','97.2','Vacuum','EastAnnex','1.8','0','40',6,'ISO45001','Commissioning');

-- Contracts with broadcast advertisers
CREATE TABLE broadcast_advertiser_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiserName TEXT,
    campaignTitle TEXT,
    startDate DATE,
    endDate DATE,
    totalSpendUsd REAL,
    primaryChannel TEXT,
    secondaryChannel TEXT,
    impressionGoal INTEGER,
    cpmUsd REAL,
    creativeFormat TEXT,
    approvalStatus TEXT,
    contractVersion INTEGER,
    paymentTerms TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    billingAddress TEXT,
    agencyName TEXT,
    agencyContact TEXT,
    notes TEXT
);
INSERT INTO broadcast_advertiser_contracts VALUES (1,'AutoMakers','SpeedSeries','2023-01-01','2023-12-31','2500000','TV','Online','5000000','5','Video','Approved',1,'Net30','John Doe','jdoe@automakers.com','123 Auto Blvd','AdWorks','Jane Smith','InitialContract');
INSERT INTO broadcast_advertiser_contracts VALUES (2,'FoodiesInc','TasteTheRace','2022-06-01','2023-05-31','1500000','Radio','TV','3000000','4','Audio','Pending',2,'Net45','Mike Lee','mlee@foodiesinc.com','456 Gourmet Rd','MediaMakers','Sara Khan','RenewalPending');
INSERT INTO broadcast_advertiser_contracts VALUES (3,'TechSphere','FutureDrive','2023-04-15','2024-04-14','3200000','Online','Social','4000000','6','Banner','Approved',1,'Net30','Anna Patel','apatel@techsphere.com','789 Silicon Ave','CreativeHub','Liam Wong','NewCampaign');

-- Fan experience feedback forms
CREATE TABLE fan_experience_feedback_forms (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    fanId INTEGER,
    submittedDate DATE,
    overallRating INTEGER,
    venueRating INTEGER,
    raceAtmosphereRating INTEGER,
    foodQualityRating INTEGER,
    staffFriendlinessRating INTEGER,
    transportEaseRating INTEGER,
    wifiPerformanceRating INTEGER,
    merchandiseSelectionRating INTEGER,
    seatingComfortRating INTEGER,
    likelihoodToReturn INTEGER,
    favoriteMoment TEXT,
    suggestions TEXT,
    surveyVersion INTEGER,
    deviceType TEXT,
    appVersion TEXT,
    ipAddress TEXT
);
INSERT INTO fan_experience_feedback_forms VALUES (1,501,10001,'2023-07-21',9,8,9,7,8,6,5,8,7,9,'OvertakeOnLap3','MoreVegOptions',1,'Mobile','1.2.3','192.168.1.10');
INSERT INTO fan_experience_feedback_forms VALUES (2,502,10002,'2023-08-05',8,9,8,8,9,7,6,7,8,8,'PodiumCelebration','ImproveQueueSigns',1,'Tablet','1.2.5','192.168.1.22');
INSERT INTO fan_experience_feedback_forms VALUES (3,503,10003,'2023-09-12',7,7,7,6,6,5,4,6,5,6,'SafetyCarDeployment','AddMoreRestrooms',1,'Desktop','1.3.0','192.168.1.33');

-- Calibration records for trackside sensors
CREATE TABLE trackside_sensor_calibrations (
    calibrationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sensorId INTEGER,
    sensorType TEXT,
    locationReference TEXT,
    calibrationDate DATE,
    calibratedBy TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    pressureKPa REAL,
    offsetValue REAL,
    scaleFactor REAL,
    calibrationStatus TEXT,
    nextDueDate DATE,
    calibrationMethod TEXT,
    firmwareVersion TEXT,
    batteryLevelPercent INTEGER,
    signalStrengthDbm INTEGER,
    notes TEXT,
    maintenanceLogId INTEGER,
    verificationResult TEXT
);
INSERT INTO trackside_sensor_calibrations VALUES (1,2001,'Speed','SectorA1','2023-07-10','TechTeamA',22.5,45.0,101.3,0.02,0.998,'Passed','2024-07-10','Auto','v3.1.0',85,-70,'NoIssues',301,'Verified');
INSERT INTO trackside_sensor_calibrations VALUES (2,2002,'Temperature','SectorB3','2023-06-15','TechTeamB',18.0,50.0,100.8,-0.01,1.002,'Passed','2024-06-15','Manual','v3.0.5',78,-68,'SlightDrift',302,'Verified');
INSERT INTO trackside_sensor_calibrations VALUES (3,2003,'Pressure','SectorC2','2023-05-20','TechTeamC',20.0,48.5,101.0,0.00,1.000,'Passed','2024-05-20','Auto','v3.1.2',90,-65,'AllGood',303,'Verified');

-- Tags for media assets
CREATE TABLE media_asset_tags (
    tagId INTEGER PRIMARY KEY AUTOINCREMENT,
    assetId INTEGER,
    tagCategory TEXT,
    tagValue TEXT,
    createdBy TEXT,
    createdDate DATE,
    lastModifiedBy TEXT,
    lastModifiedDate DATE,
    confidenceScore REAL,
    isAutomated INTEGER,
    sourceSystem TEXT,
    relatedAssetId INTEGER,
    language TEXT,
    region TEXT,
    usageRights TEXT,
    expirationDate DATE,
    notes TEXT,
    workflowStage TEXT,
    approvalStatus TEXT,
    metadataVersion INTEGER
);
INSERT INTO media_asset_tags VALUES (1,4001,'Genre','Action','AutoTagger','2023-07-01','John Admin','2023-07-02',0.95,1,'CMS',NULL,'EN','EU','Standard','2025-12-31','InitialTag','Review','Approved',1);
INSERT INTO media_asset_tags VALUES (2,4002,'Topic','Safety','ManualTagger','2023-07-03','Jane Editor','2023-07-04',0.88,0,'CMS',4001,'EN','EU','Restricted','2024-06-30','AddedByEditor','Publish','Pending',1);
INSERT INTO media_asset_tags VALUES (3,4003,'Event','Podium','AutoTagger','2023-07-05','Mike Ops','2023-07-05',0.92,1,'CMS',NULL,'EN','EU','Standard','2026-01-01','AutoGenerated','Archive','Approved',1);

-- Freight inspection records for logistics
CREATE TABLE logistics_freight_inspections (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    containerNumber TEXT,
    inspectionDate DATE,
    inspectorName TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    sealIntact INTEGER,
    damageObserved INTEGER,
    cargoWeightKg REAL,
    cargoType TEXT,
    complianceStatus TEXT,
    notes TEXT,
    nextInspectionDue DATE,
    customsCleared INTEGER,
    originPort TEXT,
    destinationPort TEXT,
    transportMode TEXT,
    hazardLevel TEXT,
    documentationComplete INTEGER
);
INSERT INTO logistics_freight_inspections VALUES (1,8001,'CONT1234567','2023-07-12','InspectorA',5.0,30.0,1,0,12000,'Tyres','Compliant','NoIssues','2023-08-12',1,'Rotterdam','Monaco','Truck','Low',1);
INSERT INTO logistics_freight_inspections VALUES (2,8002,'CONT7654321','2023-07-15','InspectorB',7.5,35.0,1,1,15000,'EngineParts','NonCompliant','MinorCorrosion','2023-08-15',0,'Hamburg','Monaco','Ship','Medium',0);
INSERT INTO logistics_freight_inspections VALUES (3,8003,'CONT1122334','2023-07-20','InspectorC',4.0,28.0,1,0,8000,'FuelCells','Compliant','AllGood','2023-08-20',1,'Genoa','Monaco','Rail','Low',1);

-- Historical incidents recorded at circuits (non-driver specific)
CREATE TABLE circuit_historical_incidents (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    incidentDate DATE,
    incidentType TEXT,
    description TEXT,
    severityLevel INTEGER,
    weatherCondition TEXT,
    trackSection TEXT,
    responseTeam TEXT,
    downtimeMinutes INTEGER,
    causeAnalysis TEXT,
    correctiveAction TEXT,
    reportedBy TEXT,
    verificationStatus TEXT,
    followUpDate DATE,
    documentationLink TEXT,
    notes TEXT,
    riskRating INTEGER,
    mitigationPlan TEXT,
    incidentStatus TEXT
);
INSERT INTO circuit_historical_incidents VALUES (1,10,'2022-05-14','OilSpill','LeakFromPitLane','3','Sunny','PitLane','SafetyCrew',45,'ValveFailure','ReplaceValve','OpsLead','Closed','2022-05-21','http://example.com/incident1','Resolved','2','InspectAllValves','Closed');
INSERT INTO circuit_historical_incidents VALUES (2,12,'2021-09-30','Fire','GrassFireNearGrandstand','4','Windy','GrandstandWest','FireDept',120,'ElectricalFault','UpgradeWiring','SafetyMgr','Closed','2021-10-07','http://example.com/incident2','Extinguished','3','InstallFireBreaks','Closed');
INSERT INTO circuit_historical_incidents VALUES (3,15,'2023-03-22','Debris','LooseDebrisOnTurn3','2','Rain','Turn3','MaintenanceTeam',15,'TrackWear','CleanTrack','TrackMgr','Closed','2023-03-29','http://example.com/incident3','Cleared','1','IncreaseInspectionFreq','Closed');

-- Schedules for spectator transport services
CREATE TABLE spectator_transport_schedules (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    transportMode TEXT,
    routeName TEXT,
    departureTime TEXT,
    arrivalTime TEXT,
    capacity INTEGER,
    ticketsAllocated INTEGER,
    operatingCompany TEXT,
    contactNumber TEXT,
    serviceStatus TEXT,
    frequencyMinutes INTEGER,
    firstStop TEXT,
    lastStop TEXT,
    specialNeedsAvailable INTEGER,
    fareAmountUsd REAL,
    discountCode TEXT,
    notes TEXT,
    lastUpdated DATE,
    updatedBy TEXT
);
INSERT INTO spectator_transport_schedules VALUES (1,501,'Shuttle','CircuitEastShuttle','08:00','09:30',200,180,'TransitCo','5551234','OnTime',30,'HotelA','CircuitGate','1','5.00','EARLYBIRD','NoIssues','2023-07-01','SchedulerA');
INSERT INTO spectator_transport_schedules VALUES (2,502,'Bus','CityCenterExpress','07:30','09:00',50,45,'CityBus','5555678','Delayed',45,'StationX','CircuitEntrance','0','3.00','NONE','MinorDelay','2023-07-05','SchedulerB');
INSERT INTO spectator_transport_schedules VALUES (3,503,'Rail','MetroLine1','06:45','08:15',150,140,'MetroRail','5559012','OnTime',20,'MetroStation','CircuitParking','1','4.50','SPRING2023','AllGood','2023-07-10','SchedulerC');

-- Metrics for sustainability projects
CREATE TABLE sustainability_project_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    projectId INTEGER,
    reportingPeriod TEXT,
    carbonReductionTonnes REAL,
    waterSavedCubicMeters REAL,
    wasteDivertedTonnes REAL,
    renewableEnergyPct REAL,
    stakeholderEngagementScore REAL,
    certificationAchieved TEXT,
    budgetUtilizationPct REAL,
    timelineDeviationDays INTEGER,
    lessonsLearned TEXT,
    nextMilestoneDate DATE,
    responsibleTeam TEXT,
    dataSource TEXT,
    verificationStatus TEXT,
    notes TEXT,
    riskLevel TEXT,
    improvementRecommendations TEXT,
    status TEXT
);
INSERT INTO sustainability_project_metrics VALUES (1,3001,'Q1-2023',120.5,4500.0,30.2,75.0,88.5,'ISO14001',95.0,5,'ImproveDataCollection','2023-09-15','EcoTeam','SensorNetwork','Verified','OnTrack','Medium','IncreaseSensorCoverage','Active');
INSERT INTO sustainability_project_metrics VALUES (2,3002,'Q1-2023',85.0,3000.0,20.0,60.0,80.0,'ISO50001',90.0,10,'AdjustBudgetForecast','2023-10-01','EnergyTeam','AuditReports','Pending','DelayedDueBudget','High','ReallocateFunds','Delayed');
INSERT INTO sustainability_project_metrics VALUES (3,3003,'Q1-2023',150.0,5000.0,40.0,85.0,92.0,'ISO26000',98.0,2,'MaintainCurrentPace','2023-08-30','WaterTeam','MeterReadings','Verified','ExcellentProgress','Low','MaintainPractices','OnTrack');

-- Records of emergency response drills
CREATE TABLE emergency_response_drills (
    drillId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    drillDate DATE,
    drillType TEXT,
    scenarioDescription TEXT,
    leadAgency TEXT,
    participantsCount INTEGER,
    durationMinutes INTEGER,
    objectivesMet INTEGER,
    issuesIdentified TEXT,
    correctiveActions TEXT,
    drillOutcome TEXT,
    externalObservers INTEGER,
    mediaCoverage TEXT,
    afterActionReportLink TEXT,
    lessonsLearned TEXT,
    nextDrillScheduled DATE,
    notes TEXT,
    status TEXT,
    updatedBy TEXT
);
INSERT INTO emergency_response_drills VALUES (1,501,'2023-06-20','FireEvac','SimulatedFireInGrandstand','FireDept',120,45,1,'ExitConfusion','ImproveSignage','Successful','0','None','http://example.com/aar1','BetterSignage','2023-12-20','NoIssues','Closed','CoordinatorA');
INSERT INTO emergency_response_drills VALUES (2,502,'2023-07-10','Medical','MassCasualtyScenario','MedicalTeam',80,60,0,'DelayedTriage','AddMoreMedics','PartiallySuccessful','1','LocalNews','http://example.com/aar2','IncreaseMedics','2024-01-15','SomeDelays','Open','CoordinatorB');
INSERT INTO emergency_response_drills VALUES (3,503,'2023-08-05','Security','UnauthorizedAccessAttempt','SecurityAgency',100,30,1,'None','AllProceduresFollowed','Successful','0','None','http://example.com/aar3','MaintainVigilance','2024-02-10','SmoothExecution','Closed','CoordinatorC');

-- Inventory of venue energy generation assets
CREATE TABLE venue_energy_generation_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    assetType TEXT,
    manufacturer TEXT,
    modelNumber TEXT,
    capacityMw REAL,
    installationYear INTEGER,
    operationalStatus TEXT,
    averageOutputMw REAL,
    maintenanceCycleMonths INTEGER,
    lastMaintenanceDate DATE,
    nextInspectionDate DATE,
    locationDescription TEXT,
    gridConnectionPoint TEXT,
    renewable BOOLEAN,
    CO2AvoidedTonnesPerYear REAL,
    warrantyEndYear INTEGER,
    notes TEXT,
    complianceStandard TEXT,
    procurementContractRef TEXT
);
INSERT INTO venue_energy_generation_assets VALUES (1,101,'Solar','SunPower','SP-5000',2.5,2020,'Active',2.1,12,'2023-06-01','2023-12-01','RoofNorth','GridNodeA',1,1200.0,2025,'NoIssues','ISO9001','CONTRACT-SP-2020');
INSERT INTO venue_energy_generation_assets VALUES (2,102,'Wind','WindTech','WT-300',4.0,2019,'Active',3.5,18,'2023-04-15','2024-10-15','FieldEast','GridNodeB',1,1500.0,2024,'MinorNoise','ISO14001','CONTRACT-WT-2019');
INSERT INTO venue_energy_generation_assets VALUES (3,103,'Hydro','AquaPower','AP-100',3.2,2021,'Commissioning',0.0,24,'2023-08-20','2025-08-20','RiverSide','GridNodeC',1,1800.0,2026,'AwaitingTesting','ISO45001','CONTRACT-AP-2021');

-- Records of spectator demographics and preferences
CREATE TABLE fan_demographics_preferences (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    eventId INTEGER,
    ageGroup TEXT,
    gender TEXT,
    country TEXT,
    preferredSection TEXT,
    merchandiseInterest TEXT,
    foodPreference TEXT,
    accessNeeds TEXT,
    loyaltyProgramMember INTEGER,
    loyaltyTier TEXT,
    averageSpendingUsd REAL,
    visitFrequencyPerYear INTEGER,
    socialMediaPlatform TEXT,
    engagementScore REAL,
    feedbackScore INTEGER,
    newsletterSubscribed INTEGER,
    promoCodeUsed TEXT,
    notes TEXT
);
INSERT INTO fan_demographics_preferences VALUES (1,20001,501,'25-34','Male','USA','GrandstandA','Apparel','Vegetarian','None',1,'Gold',150.75,3,'Twitter',85.5,9,1,'SPRING2023','FirstTimeVisitor');
INSERT INTO fan_demographics_preferences VALUES (2,20002,502,'35-44','Female','Germany','PaddockClub','Electronics','Vegan','Wheelchair',1,'Platinum',250.00,5,'Instagram',92.0,10,1,'SUMMER2023','SeasonTicketHolder');
INSERT INTO fan_demographics_preferences VALUES (3,20003,503,'18-24','NonBinary','Japan','GeneralAdmission','Collectibles','None','None',0,'None',45.20,1,'TikTok',70.0,6,0,'','FirstVisit');