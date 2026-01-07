-- Table storing detailed information about the materials used on each track surface segment
CREATE TABLE track_surface_materials
(
    surfaceId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    segmentName TEXT NOT NULL,
    materialType TEXT,
    materialBrand TEXT,
    layerCount INTEGER,
    baseDepthCm REAL,
    topDepthCm REAL,
    hardnessShoreA REAL,
    porosityPercent REAL,
    drainageRating INTEGER,
    installationDate DATE,
    lastMaintenanceDate DATE,
    surfaceColor TEXT,
    textureDescription TEXT,
    warrantyYears INTEGER,
    costPerSqM REAL,
    supplierId INTEGER,
    ecoRating INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO track_surface_materials
(circuitId,segmentName,materialType,materialBrand,layerCount,baseDepthCm,topDepthCm,hardnessShoreA,porosityPercent,drainageRating,installationDate,lastMaintenanceDate,surfaceColor,textureDescription,warrantyYears,costPerSqM,supplierId,ecoRating,notes)
VALUES
(1,'MainStraight','Asphalt','PaveCo',3,5.0,2.0,78.5,0.8,9,'2022-03-15','2023-04-20','DarkGrey','FineGrain',10,150.0,5,8,'Initial installation');

INSERT INTO track_surface_materials
(circuitId,segmentName,materialType,materialBrand,layerCount,baseDepthCm,topDepthCm,hardnessShoreA,porosityPercent,drainageRating,installationDate,lastMaintenanceDate,surfaceColor,textureDescription,warrantyYears,costPerSqM,supplierId,ecoRating,notes)
VALUES
(2,'Turn12','Synthetic','TrackTex',2,4.5,1.5,70.0,1.2,8,'2021-07-01','2022-08-10','LightGrey','MediumGrain',7,120.0,8,7,'Replaced after resurfacing');

INSERT INTO track_surface_materials
(circuitId,segmentName,materialType,materialBrand,layerCount,baseDepthCm,topDepthCm,hardnessShoreA,porosityPercent,drainageRating,installationDate,lastMaintenanceDate,surfaceColor,textureDescription,warrantyYears,costPerSqM,supplierId,ecoRating,notes)
VALUES
(3,'PitLane','Asphalt','RoadMix',3,6.0,2.5,80.0,0.5,9,'2020-11-20','2023-01-05','Gray','CoarseGrain',12,160.0,12,9,'Full depth reconstruction');

-- Table containing records of championship awards given each season
CREATE TABLE race_championship_awards
(
    awardId INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER NOT NULL,
    awardName TEXT NOT NULL,
    recipientType TEXT,          -- Driver or Constructor
    recipientId INTEGER,
    presentationDate DATE,
    venue TEXT,
    sponsor TEXT,
    awardCategory TEXT,
    prizeMoney REAL,
    trophyMaterial TEXT,
    trophyHeightCm REAL,
    trophyWeightKg REAL,
    ceremonyHost TEXT,
    broadcastChannel TEXT,
    audienceRating REAL,
    photoUrl TEXT,
    videoUrl TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO race_championship_awards
(year,awardName,recipientType,recipientId,presentationDate,venue,sponsor,awardCategory,prizeMoney,trophyMaterial,trophyHeightCm,trophyWeightKg,ceremonyHost,broadcastChannel,audienceRating,photoUrl,videoUrl,notes)
VALUES
(2022,'World Drivers Champion','Driver',44,'2022-12-10','AbuDhabiCircuit','Marlboro','Championship',2500000,'Gold',75.0,12.5,'JohnDoe','ChannelOne',9.2,'http://example.com/photo1.jpg','http://example.com/video1.mp4','First time champion');

INSERT INTO race_championship_awards
(year,awardName,recipientType,recipientId,presentationDate,venue,sponsor,awardCategory,prizeMoney,trophyMaterial,trophyHeightCm,trophyWeightKg,ceremonyHost,broadcastChannel,audienceRating,photoUrl,videoUrl,notes)
VALUES
(2022,'World Constructors Champion','Constructor',7,'2022-12-10','AbuDhabiCircuit','Shell','Championship',1500000,'Silver',80.0,15.0,'JaneSmith','ChannelTwo',8.8,'http://example.com/photo2.jpg','http://example.com/video2.mp4','Record 15th title');

INSERT INTO race_championship_awards
(year,awardName,recipientType,recipientId,presentationDate,venue,sponsor,awardCategory,prizeMoney,trophyMaterial,trophyHeightCm,trophyWeightKg,ceremonyHost,broadcastChannel,audienceRating,photoUrl,videoUrl,notes)
VALUES
(2022,'Best Rookie Driver','Driver',99,'2022-12-10','AbuDhabiCircuit','RedBull','Rookie',500000,'Bronze',60.0,8.0,'MikeBrown','ChannelThree',7.5,'http://example.com/photo3.jpg','http://example.com/video3.mp4','First season');

-- Table tracking mental health assessment records for drivers
CREATE TABLE driver_mental_health_assessments
(
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    assessmentDate DATE NOT NULL,
    psychologistId INTEGER,
    stressLevel INTEGER,           -- Scale 1-10
    anxietyScore INTEGER,          -- Scale 1-10
    depressionScore INTEGER,       -- Scale 1-10
    sleepQuality INTEGER,          -- Scale 1-10
    concentrationScore INTEGER,    -- Scale 1-10
    copingStrategy TEXT,
    recommendedActions TEXT,
    followUpDate DATE,
    notes TEXT,
    confidentialityLevel TEXT,
    assessorSignature TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    sessionDurationMin INTEGER,
    medicationPrescribed TEXT,
    therapyType TEXT,
    riskFlag BOOLEAN
);

INSERT INTO driver_mental_health_assessments
(driverId,assessmentDate,psychologistId,stressLevel,anxietyScore,depressionScore,sleepQuality,concentrationScore,copingStrategy,recommendedActions,followUpDate,notes,confidentialityLevel,assessorSignature,sessionDurationMin,medicationPrescribed,therapyType,riskFlag)
VALUES
(44,'2022-09-15',101,4,3,2,8,9,'Meditation','Maintain routine',NULL,'All scores within normal range','High','DrLee',60,'None','CognitiveBehavioral',0);

INSERT INTO driver_mental_health_assessments
(driverId,assessmentDate,psychologistId,stressLevel,anxietyScore,depressionScore,sleepQuality,concentrationScore,copingStrategy,recommendedActions,followUpDate,notes,confidentialityLevel,assessorSignature,sessionDurationMin,medicationPrescribed,therapyType,riskFlag)
VALUES
(99,'2022-08-20',102,7,6,5,5,6,'Physical exercise','Consult psychiatrist',NULL,'Elevated stress, monitor closely','Medium','DrKim',45,'Sertraline','TalkTherapy',1);

INSERT INTO driver_mental_health_assessments
(driverId,assessmentDate,psychologistId,stressLevel,anxietyScore,depressionScore,sleepQuality,concentrationScore,copingStrategy,recommendedActions,followUpDate,notes,confidentialityLevel,assessorSignature,sessionDurationMin,medicationPrescribed,therapyType,riskFlag)
VALUES
(77,'2022-07-30',103,3,2,1,9,9,'Mindfulness','No action needed',NULL,'Excellent mental health','High','DrPatel',50,'None','Mindfulness',0);

-- Table storing information about engine suppliers for constructors
CREATE TABLE constructor_engine_suppliers
(
    supplierId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER NOT NULL,
    engineManufacturer TEXT NOT NULL,
    contractStartDate DATE,
    contractEndDate DATE,
    performanceRating INTEGER,      -- Scale 1-10
    fuelEfficiencyRating INTEGER,   -- Scale 1-10
    powerOutputKw REAL,
    reliabilityScore INTEGER,       -- Scale 1-10
    exclusive BOOLEAN,
    sponsorshipAmount REAL,
    technicalSupportLevel TEXT,
    lastUpgradeDate DATE,
    nextUpgradePlanned DATE,
    warrantyYears INTEGER,
    penaltyClause TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    renewableFuelPercentage INTEGER,
    carbonFootprintKgPerRace REAL
);

INSERT INTO constructor_engine_suppliers
(constructorId,engineManufacturer,contractStartDate,contractEndDate,performanceRating,fuelEfficiencyRating,powerOutputKw,reliabilityScore,exclusive,sponsorshipAmount,technicalSupportLevel,lastUpgradeDate,nextUpgradePlanned,warrantyYears,penaltyClause,renewableFuelPercentage,carbonFootprintKgPerRace)
VALUES
(7,'Marelli','2021-01-01','2024-12-31',9,8,850.0,9,1,2500000,'Premium','2023-03-01','2024-05-01',5,'Late delivery penalty',30,120.5);

INSERT INTO constructor_engine_suppliers
(constructorId,engineManufacturer,contractStartDate,contractEndDate,performanceRating,fuelEfficiencyRating,powerOutputKw,reliabilityScore,exclusive,sponsorshipAmount,technicalSupportLevel,lastUpgradeDate,nextUpgradePlanned,warrantyYears,penaltyClause,renewableFuelPercentage,carbonFootprintKgPerRace)
VALUES
(10,'Ferrari','2020-06-15','2023-06-14',8,7,820.0,8,0,1800000,'Standard','2022-11-10','2023-02-20',3,'Early termination fee',20,140.0);

INSERT INTO constructor_engine_suppliers
(constructorId,engineManufacturer,contractStartDate,contractEndDate,performanceRating,fuelEfficiencyRating,powerOutputKw,reliabilityScore,exclusive,sponsorshipAmount,technicalSupportLevel,lastUpgradeDate,nextUpgradePlanned,warrantyYears,penaltyClause,renewableFuelPercentage,carbonFootprintKgPerRace)
VALUES
(15,'Honda','2022-03-01','2025-02-28',7,9,800.0,9,0,2000000,'Advanced','2023-07-15','2024-09-30',4,'Mileage overrun penalty',40,110.2);

-- Table describing parking and transport facilities at each circuit
CREATE TABLE circuit_transport_parking
(
    parkingId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    zoneName TEXT NOT NULL,
    capacity INTEGER,
    covered BOOLEAN,
    electricChargingSpots INTEGER,
    handicapSpots INTEGER,
    shuttleService BOOLEAN,
    shuttleFrequencyMin INTEGER,
    maxVehicleHeightM REAL,
    securityLevel INTEGER,
    entranceGate TEXT,
    exitGate TEXT,
    ticketingSystem TEXT,
    pricePerHour REAL,
    monthlyPassAvailable BOOLEAN,
    surveillanceCameras INTEGER,
    lightingLevelLux REAL,
    maintenanceSchedule TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    distanceToCircuitM INTEGER,
    averageWalkTimeMin INTEGER
);

INSERT INTO circuit_transport_parking
(circuitId,zoneName,capacity,covered,electricChargingSpots,handicapSpots,shuttleService,shuttleFrequencyMin,maxVehicleHeightM,securityLevel,entranceGate,exitGate,ticketingSystem,pricePerHour,monthlyPassAvailable,surveillanceCameras,lightingLevelLux,maintenanceSchedule,notes,distanceToCircuitM,averageWalkTimeMin)
VALUES
(1,'NorthLot',1500,1,50,20,1,15,2.5,8,'GateA','GateB','RFID',5.0,1,120,300,'Quarterly','Near main grandstand',300,5);

INSERT INTO circuit_transport_parking
(circuitId,zoneName,capacity,covered,electricChargingSpots,handicapSpots,shuttleService,shuttleFrequencyMin,maxVehicleHeightM,securityLevel,entranceGate,exitGate,ticketingSystem,pricePerHour,monthlyPassAvailable,surveillanceCameras,lightingLevelLux,maintenanceSchedule,notes,distanceToCircuitM,averageWalkTimeMin)
VALUES
(2,'SouthGarage',800,0,30,10,1,20,2.2,7,'GateC','GateD','Barcode',4.0,0,80,250,'Biannual','Underground level',500,7);

INSERT INTO circuit_transport_parking
(circuitId,zoneName,capacity,covered,electricChargingSpots,handicapSpots,shuttleService,shuttleFrequencyMin,maxVehicleHeightM,securityLevel,entranceGate,exitGate,ticketingSystem,pricePerHour,monthlyPassAvailable,surveillanceCameras,lightingLevelLux,maintenanceSchedule,notes,distanceToCircuitM,averageWalkTimeMin)
VALUES
(3,'EastShuttle',300,1,10,5,1,10,2.0,9,'GateE','GateF','MobileApp',6.5,1,60,350,'Monthly','Premium service area',200,3);

-- Table linking broadcast content items with descriptive tags
CREATE TABLE broadcast_content_tags
(
    tagId INTEGER PRIMARY KEY AUTOINCREMENT,
    contentId INTEGER NOT NULL,
    tag TEXT NOT NULL,
    relevanceScore REAL,
    taggedBy TEXT,
    tagDate DATE,
    sourceSystem TEXT,
    confidenceLevel INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    languageCode TEXT,
    regionCode TEXT,
    isPrimary BOOLEAN,
    category TEXT,
    subCategory TEXT,
    durationSec INTEGER,
    thumbnailUrl TEXT,
    analyticsId INTEGER,
    approved BOOLEAN
);

INSERT INTO broadcast_content_tags
(contentId,tag,relevanceScore,taggedBy,tagDate,sourceSystem,confidenceLevel,languageCode,regionCode,isPrimary,category,subCategory,durationSec,thumbnailUrl,analyticsId,approved)
VALUES
(101,'PitStopAnalysis',0.95,'EditorA','2022-11-01','CMS',90,'EN','EU',1,'Telemetry','PitStop',45,'http://example.com/thumb1.jpg',5001,1);

INSERT INTO broadcast_content_tags
(contentId,tag,relevanceScore,taggedBy,tagDate,sourceSystem,confidenceLevel,languageCode,regionCode,isPrimary,category,subCategory,durationSec,thumbnailUrl,analyticsId,approved)
VALUES
(102,'DriverInterview',0.88,'EditorB','2022-11-02','CMS',85,'EN','NA',0,'Interview','PostRace',180,'http://example.com/thumb2.jpg',5002,1);

INSERT INTO broadcast_content_tags
(contentId,tag,relevanceScore,taggedBy,tagDate,sourceSystem,confidenceLevel,languageCode,regionCode,isPrimary,category,subCategory,durationSec,thumbnailUrl,analyticsId,approved)
VALUES
(103,'TeamStrategy',0.92,'EditorC','2022-11-03','CMS',88,'EN','AS',0,'Analysis','Tactics',120,'http://example.com/thumb3.jpg',5003,0);

-- Table detailing fan loyalty program memberships and activity
CREATE TABLE fan_loyalty_programs
(
    membershipId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    programName TEXT NOT NULL,
    joinDate DATE,
    tier TEXT,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    lastRedemptionDate DATE,
    status TEXT,
    preferredCircuitId INTEGER,
    favoriteDriverId INTEGER,
    emailOptIn BOOLEAN,
    smsOptIn BOOLEAN,
    anniversaryBonus BOOLEAN,
    birthdayBonus BOOLEAN,
    exclusiveEventsAccess BOOLEAN,
    merchandiseDiscountPercent REAL,
    lastLogin DATETIME,
    totalVisits INTEGER,
    averageSpendPerVisit REAL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    referralCode TEXT,
    lastActivityDate DATE
);

INSERT INTO fan_loyalty_programs
(fanId,programName,joinDate,tier,pointsEarned,pointsRedeemed,lastRedemptionDate,status,preferredCircuitId,favoriteDriverId,emailOptIn,smsOptIn,anniversaryBonus,birthdayBonus,exclusiveEventsAccess,merchandiseDiscountPercent,lastLogin,totalVisits,averageSpendPerVisit,referralCode,lastActivityDate)
VALUES
(501,'GrandPrixClub','2021-04-10','Gold',12000,3000,'2022-10-15','Active',2,44,1,0,1,1,1,15.0,'2022-12-01 14:30:00',45,85.5,'REF123','2022-12-01');

INSERT INTO fan_loyalty_programs
(fanId,programName,joinDate,tier,pointsEarned,pointsRedeemed,lastRedemptionDate,status,preferredCircuitId,favoriteDriverId,emailOptIn,smsOptIn,anniversaryBonus,birthdayBonus,exclusiveEventsAccess,merchandiseDiscountPercent,lastLogin,totalVisits,averageSpendPerVisit,referralCode,lastActivityDate)
VALUES
(502,'RaceFansPlus','2020-09-22','Silver',8000,1500,'2022-09-30','Active',5,99,1,1,0,1,0,10.0,'2022-11-25 09:15:00',30,60.0,'REF456','2022-11-25');

INSERT INTO fan_loyalty_programs
(fanId,programName,joinDate,tier,pointsEarned,pointsRedeemed,lastRedemptionDate,status,preferredCircuitId,favoriteDriverId,emailOptIn,smsOptIn,anniversaryBonus,birthdayBonus,exclusiveEventsAccess,merchandiseDiscountPercent,lastLogin,totalVisits,averageSpendPerVisit,referralCode,lastActivityDate)
VALUES
(503,'VIPRacerRewards','2022-01-05','Platinum',20000,5000,'2022-11-20','Active',1,77,1,1,1,1,1,20.0,'2022-12-02 16:45:00',12,150.0,'REF789','2022-12-02');

-- Table tracking official staff training records
CREATE TABLE officials_training_records
(
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId INTEGER NOT NULL,
    trainingProgram TEXT NOT NULL,
    trainingDate DATE,
    trainerName TEXT,
    durationHours INTEGER,
    certificationLevel TEXT,
    score INTEGER,
    passed BOOLEAN,
    recertificationDue DATE,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    location TEXT,
    trainingMode TEXT,
    equipmentUsed TEXT,
    feedbackScore INTEGER,
    complianceFlag BOOLEAN,
    trainingProvider TEXT,
    auditTrail TEXT
);

INSERT INTO officials_training_records
(officialId,trainingProgram,trainingDate,trainerName,durationHours,certificationLevel,score,passed,recertificationDue,location,trainingMode,equipmentUsed,feedbackScore,complianceFlag,trainingProvider)
VALUES
(201,'Safety Car Operation','2022-06-10','TrainerMike',8,'Level2',85,1,'2024-06-10','MainCenter','InPerson','Simulators',9,1,'FIAAcademy');

INSERT INTO officials_training_records
(officialId,trainingProgram,trainingDate,trainerName,durationHours,certificationLevel,score,passed,recertificationDue,location,trainingMode,equipmentUsed,feedbackScore,complianceFlag,trainingProvider)
VALUES
(202,'Pit Lane Marshal','2022-07-15','TrainerSue',6,'Level1',78,1,'2023-07-15','SouthFacility','Online','VideoModules',8,1,'FIAAcademy');

INSERT INTO officials_training_records
(officialId,trainingProgram,trainingDate,trainerName,durationHours,certificationLevel,score,passed,recertificationDue,location,trainingMode,equipmentUsed,feedbackScore,complianceFlag,trainingProvider)
VALUES
(203,'Race Direction Basics','2022-05-20','TrainerLee',10,'Level3',92,1,'2025-05-20','Headquarters','Hybrid','VRSetup',10,1,'FIAInstitute');

-- Table describing digital ticketing platforms used for events
CREATE TABLE digital_ticketing_platforms
(
    platformId INTEGER PRIMARY KEY AUTOINCREMENT,
    platformName TEXT NOT NULL,
    provider TEXT,
    apiVersion TEXT,
    url TEXT,
    supportEmail TEXT,
    supportPhone TEXT,
    integrationMethod TEXT,
    securityProtocol TEXT,
    dataRetentionDays INTEGER,
    transactionFeePercent REAL,
    maxTicketsPerOrder INTEGER,
    ticketTypesSupported TEXT,
    mobileAppAvailable BOOLEAN,
    qrCodeEnabled BOOLEAN,
    barcodeEnabled BOOLEAN,
    analyticsDashboard BOOLEAN,
    uptimeSlaPercent REAL,
    lastUpdate DATETIME,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    regionalSupport TEXT,
    documentationUrl TEXT,
    certificationLevel TEXT
);

INSERT INTO digital_ticketing_platforms
(platformName,provider,apiVersion,url,supportEmail,supportPhone,integrationMethod,securityProtocol,dataRetentionDays,transactionFeePercent,maxTicketsPerOrder,ticketTypesSupported,mobileAppAvailable,qrCodeEnabled,barcodeEnabled,analyticsDashboard,uptimeSlaPercent,lastUpdate,regionalSupport,documentationUrl,certificationLevel)
VALUES
('TicketMasterPro','TicketMaster','v2.3','http://tickets.example.com','support@ticketmaster.com','+1234567890','REST','TLS1.2',365,2.5,10,'General,VIP,Season',1,1,1,1,99.9,'2022-11-30 12:00:00','Global','http://docs.ticketmaster.com','PCI-DSS');

INSERT INTO digital_ticketing_platforms
(platformName,provider,apiVersion,url,supportEmail,supportPhone,integrationMethod,securityProtocol,dataRetentionDays,transactionFeePercent,maxTicketsPerOrder,ticketTypesSupported,mobileAppAvailable,qrCodeEnabled,barcodeEnabled,analyticsDashboard,uptimeSlaPercent,lastUpdate,regionalSupport,documentationUrl,certificationLevel)
VALUES
('EventPass','EventTech','v1.8','http://eventpass.example.com','help@eventtech.com','+1987654321','GraphQL','TLS1.3',180,1.8,6,'General,Student,Group',1,1,0,1,99.5,'2022-12-01 08:30:00','EMEA','http://docs.eventtech.com','ISO27001');

INSERT INTO digital_ticketing_platforms
(platformName,provider,apiVersion,url,supportEmail,supportPhone,integrationMethod,securityProtocol,dataRetentionDays,transactionFeePercent,maxTicketsPerOrder,ticketTypesSupported,mobileAppAvailable,qrCodeEnabled,barcodeEnabled,analyticsDashboard,uptimeSlaPercent,lastUpdate,regionalSupport,documentationUrl,certificationLevel)
VALUES
('FastGate','GateSolutions','v3.0','http://fastgate.example.com','contact@gatesolutions.com','+1122334455','SOAP','TLS1.2',90,3.0,4,'General,VIP',0,1,1,0,98.7,'2022-11-28 16:45:00','APAC','http://docs.gatesolutions.com','SOC2');

-- Table listing emergency exit locations and capacities at venues
CREATE TABLE venue_emergency_exits
(
    exitId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    exitName TEXT NOT NULL,
    capacity INTEGER,
    isIlluminated BOOLEAN,
    isMarked BOOLEAN,
    widthMeters REAL,
    lengthMeters REAL,
    direction TEXT,
    doorMaterial TEXT,
    alarmConnected BOOLEAN,
    maintenanceLastDate DATE,
    maintenanceFrequencyDays INTEGER,
    signageType TEXT,
    backupPower BOOLEAN,
    clearanceHeightMeters REAL,
    accessibilityCompliant BOOLEAN,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    fireRating TEXT,
    exitCode TEXT,
    emergencyPlanVersion TEXT
);

INSERT INTO venue_emergency_exits
(venueId,exitName,capacity,isIlluminated,isMarked,widthMeters,lengthMeters,direction,doorMaterial,alarmConnected,maintenanceLastDate,maintenanceFrequencyDays,signageType,backupPower,clearanceHeightMeters,accessibilityCompliant,fireRating,exitCode,emergencyPlanVersion)
VALUES
(1,'NorthGate',500,1,1,2.5,1.0,'North','Steel',1,'2022-09-01',180,'Photoluminescent',1,2.2,1,'A','NG01','v1.2');

INSERT INTO venue_emergency_exits
(venueId,exitName,capacity,isIlluminated,isMarked,widthMeters,lengthMeters,direction,doorMaterial,alarmConnected,maintenanceLastDate,maintenanceFrequencyDays,signageType,backupPower,clearanceHeightMeters,accessibilityCompliant,fireRating,exitCode,emergencyPlanVersion)
VALUES
(2,'SouthSideExit',350,1,1,2.0,0.9,'South','Aluminum',1,'2022-08-15',365,'LED',1,2.0,0,'B','SS02','v2.0');

INSERT INTO venue_emergency_exits
(venueId,exitName,capacity,isIlluminated,isMarked,widthMeters,lengthMeters,direction,doorMaterial,alarmConnected,maintenanceLastDate,maintenanceFrequencyDays,signageType,backupPower,clearanceHeightMeters,accessibilityCompliant,fireRating,exitCode,emergencyPlanVersion)
VALUES
(3,'EastWingExit',400,0,1,2.3,1.1,'East','Composite',0,'2022-07-20',90,'ReflectiveTape',0,2.1,1,'C','EW03','v1.5');