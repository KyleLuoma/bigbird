-- League affiliations for racing series
CREATE TABLE league_affiliations
(
    affiliationId      INTEGER PRIMARY KEY AUTOINCREMENT,
    leagueName         TEXT NOT NULL,
    countryCode        TEXT NOT NULL,
    establishedYear    INTEGER NOT NULL,
    governingBody      TEXT,
    logoUrl            TEXT,
    websiteUrl         TEXT,
    contactEmail       TEXT,
    contactPhone       TEXT,
    headquartersAddr   TEXT,
    headquartersCity   TEXT,
    headquartersState  TEXT,
    headquartersZip    TEXT,
    membershipCount    INTEGER,
    annualBudget       REAL,
    sponsorPartner1    TEXT,
    sponsorPartner2    TEXT,
    sponsorPartner3    TEXT,
    complianceStatus   TEXT,
    lastAuditDate      DATE,
    notes              TEXT
);
INSERT INTO league_affiliations (leagueName,countryCode,establishedYear,governingBody,logoUrl,websiteUrl,contactEmail,contactPhone,headquartersAddr,headquartersCity,headquartersState,headquartersZip,membershipCount,annualBudget,sponsorPartner1,sponsorPartner2,sponsorPartner3,complianceStatus,lastAuditDate,notes) VALUES ('International Grand League','US',1995,'FIA','http://example.com/logo1.png','http://igl.org','info@igl.org','555-0100','123 Main St','New York','NY','10001',120,8500000.00,'EnergyCo','TechSolutions','AutoMotors','Compliant','2024-06-15','Main league for global events');
INSERT INTO league_affiliations (leagueName,countryCode,establishedYear,governingBody,logoUrl,websiteUrl,contactEmail,contactPhone,headquartersAddr,headquartersCity,headquartersState,headquartersZip,membershipCount,annualBudget,sponsorPartner1,sponsorPartner2,sponsorPartner3,complianceStatus,lastAuditDate,notes) VALUES ('Continental Speed Union','DE',2002,'CSU Board','http://example.com/logo2.png','http://csu.de','contact@csu.de','555-0200','45 Berliner Strasse','Berlin','BE','10115',45,2100000.00,'FuelPlus','GearWorks','TurboDynamics','Pending','2023-12-01','European regional association');
INSERT INTO league_affiliations (leagueName,countryCode,establishedYear,governingBody,logoUrl,websiteUrl,contactEmail,contactPhone,headquartersAddr,headquartersCity,headquartersState,headquartersZip,membershipCount,annualBudget,sponsorPartner1,sponsorPartner2,sponsorPartner3,complianceStatus,lastAuditDate,notes) VALUES ('Southern Motorsport Federation','AU',2010,'SMF Council','http://example.com/logo3.png','http://smf.au','admin@smf.au','555-0300','78 Coast Rd','Sydney','NSW','2000',30,950000.00,'AussieOil','DownUnderTech','SolarRacing','Compliant','2024-01-20','Governs series in Oceania');

-- Broadcast metadata tags for race videos
CREATE TABLE broadcast_metadata_tags
(
    tagId               INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId        INTEGER NOT NULL,
    tagCategory        TEXT NOT NULL,
    tagValue           TEXT NOT NULL,
    creatorUserId      INTEGER,
    createdTimestamp   DATETIME DEFAULT CURRENT_TIMESTAMP,
    modifierUserId      INTEGER,
    modifiedTimestamp  DATETIME,
    confidenceScore    REAL,
    isPrimary          INTEGER DEFAULT 0,
    sourceSystem       TEXT,
    languageCode       TEXT,
    regionCode         TEXT,
    relatedEventId     INTEGER,
    isAutomated        INTEGER DEFAULT 0,
    processingVersion  TEXT,
    notes              TEXT,
    approvedByUserId   INTEGER,
    approvalTimestamp  DATETIME,
    deprecatedFlag     INTEGER DEFAULT 0
);
INSERT INTO broadcast_metadata_tags (broadcastId,tagCategory,tagValue,creatorUserId,confidenceScore,isPrimary,sourceSystem,languageCode,regionCode,isAutomated,processingVersion,notes) VALUES (101,'Sport','Formula 1',12,0.98,1,'AutoTagger','en','EU',1,'v1.2','Auto-generated tag for series');
INSERT INTO broadcast_metadata_tags (broadcastId,tagCategory,tagValue,creatorUserId,confidenceScore,isPrimary,sourceSystem,languageCode,regionCode,isAutomated,processingVersion,notes) VALUES (102,'Weather','Sunny',15,0.95,0,'ManualEntry','en','NA',0,'v1.0','Entered by analyst');
INSERT INTO broadcast_metadata_tags (broadcastId,tagCategory,tagValue,creatorUserId,confidenceScore,isPrimary,sourceSystem,languageCode,regionCode,isAutomated,processingVersion,notes) VALUES (103,'Incident','SafetyCarDeployed',18,0.99,0,'AutoTagger','en','EU',1,'v2.0','Detected safety car period');

-- Fan experience feedback surveys
CREATE TABLE fan_experience_feedback_surveys
(
    surveyId               INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId                  INTEGER NOT NULL,
    eventId                INTEGER NOT NULL,
    surveyDate             DATE NOT NULL,
    overallRating          INTEGER,
    venueCleanliness       INTEGER,
    foodQuality            INTEGER,
    staffFriendliness      INTEGER,
    seatComfort            INTEGER,
    wifiAvailability       INTEGER,
    merchandiseVariety     INTEGER,
    parkingEase            INTEGER,
    securityVisibility     INTEGER,
    audioClarity           INTEGER,
    visualQuality          INTEGER,
    appUsability           INTEGER,
    likelihoodToReturn     INTEGER,
    comments               TEXT,
    suggestedImprovements  TEXT,
    responseTimeSeconds    INTEGER,
    surveyVersion          TEXT,
    verifiedFlag           INTEGER DEFAULT 0
);
INSERT INTO fan_experience_feedback_surveys (fanId,eventId,surveyDate,overallRating,venueCleanliness,foodQuality,staffFriendliness,seatComfort,wifiAvailability,merchandiseVariety,parkingEase,securityVisibility,audioClarity,visualQuality,appUsability,likelihoodToReturn,comments,suggestedImprovements,responseTimeSeconds,surveyVersion,verifiedFlag) VALUES (1001,2001,'2024-05-10',9,8,9,10,8,7,9,6,9,8,9,9,10,'Great atmosphere!','Add more vegan food options',45,'v1.0',1);
INSERT INTO fan_experience_feedback_surveys (fanId,eventId,surveyDate,overallRating,venueCleanliness,foodQuality,staffFriendliness,seatComfort,wifiAvailability,merchandiseVariety,parkingEase,securityVisibility,audioClarity,visualQuality,appUsability,likelihoodToReturn,comments,suggestedImprovements,responseTimeSeconds,surveyVersion,verifiedFlag) VALUES (1002,2002,'2024-06-02',7,6,7,8,7,5,6,5,8,7,7,6,8,'Long queues at entry','Increase entry gates',30,'v1.0',1);
INSERT INTO fan_experience_feedback_surveys (fanId,eventId,surveyDate,overallRating,venueCleanliness,foodQuality,staffFriendliness,seatComfort,wifiAvailability,merchandiseVariety,parkingEase,securityVisibility,audioClarity,visualQuality,appUsability,likelihoodToReturn,comments,suggestedImprovements,responseTimeSeconds,surveyVersion,verifiedFlag) VALUES (1003,2003,'2024-07-15',8,9,8,9,8,8,9,7,9,8,8,9,9,'Excellent services','Maintain current standards',40,'v1.0',1);

-- Racetrack noise monitoring
CREATE TABLE racetrack_noise_monitoring
(
    noiseLogId          INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId           INTEGER NOT NULL,
    measurementTimestamp DATETIME NOT NULL,
    noiseLevelDbA       REAL NOT NULL,
    frequencyLowHz      REAL,
    frequencyMidHz      REAL,
    frequencyHighHz     REAL,
    sensorId            TEXT,
    weatherCondition    TEXT,
    windSpeedKph        REAL,
    temperatureC        REAL,
    humidityPercent     REAL,
    complianceStatus    TEXT,
    notes               TEXT,
    analystUserId       INTEGER,
    verificationFlag    INTEGER DEFAULT 0,
    sourceSystem        TEXT,
    latitude            REAL,
    longitude           REAL,
    elevationMeters     REAL,
    recordedBySystem    TEXT
);
INSERT INTO racetrack_noise_monitoring (circuitId,measurementTimestamp,noiseLevelDbA,frequencyLowHz,frequencyMidHz,frequencyHighHz,sensorId,weatherCondition,windSpeedKph,temperatureC,humidityPercent,complianceStatus,notes,analystUserId,sourceSystem,latitude,longitude,elevationMeters,recordedBySystem) VALUES (1,'2024-05-20 14:30:00',112.5,45.2,1250.8,8200.1,'SN001','Sunny',12.3,23.5,45,'Compliant','Standard race day','5','AutoSensor',-33.865143,151.209900,5,'NoiseMonitorV1');
INSERT INTO racetrack_noise_monitoring (circuitId,measurementTimestamp,noiseLevelDbA,frequencyLowHz,frequencyMidHz,frequencyHighHz,sensorId,weatherCondition,windSpeedKph,temperatureC,humidityPercent,complianceStatus,notes,analystUserId,sourceSystem,latitude,longitude,elevationMeters,recordedBySystem) VALUES (2,'2024-06-15 16:45:00',108.2,48.0,1300.5,8400.0,'SN002','Cloudy',8.0,19.0,55,'Compliant','Qualifying session','7','AutoSensor',48.856613,2.352222,35,'NoiseMonitorV1');
INSERT INTO racetrack_noise_monitoring (circuitId,measurementTimestamp,noiseLevelDbA,frequencyLowHz,frequencyMidHz,frequencyHighHz,sensorId,weatherCondition,windSpeedKph,temperatureC,humidityPercent,complianceStatus,notes,analystUserId,sourceSystem,latitude,longitude,elevationMeters,recordedBySystem) VALUES (3,'2024-07-10 11:20:00',115.0,50.5,1350.0,8600.3,'SN003','Rainy',5.5,16.2,70,'NonCompliant','High noise due to extra laps','12','AutoSensor',35.689487,139.691711,44,'NoiseMonitorV1');

-- Driver heritage records
CREATE TABLE driver_heritage_records
(
    heritageId           INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId             INTEGER NOT NULL,
    ancestorName         TEXT NOT NULL,
    relationship         TEXT NOT NULL,
    birthYear            INTEGER,
    deathYear            INTEGER,
    nationality          TEXT,
    notableAchievement  TEXT,
    sourceDocument       TEXT,
    verifiedByUserId     INTEGER,
    verificationDate     DATE,
    notes                TEXT,
    legacyAward          TEXT,
    familyOccupation     TEXT,
    hometown             TEXT,
    migrationPattern     TEXT,
    militaryService      TEXT,
    educationLevel       TEXT,
    publicRecognition    TEXT,
    archivalReference    TEXT,
    digitalCopyUrl       TEXT
);
INSERT INTO driver_heritage_records (driverId,ancestorName,relationship,birthYear,deathYear,nationality,notableAchievement,sourceDocument,verifiedByUserId,verificationDate,legacyAward,familyOccupation,hometown) VALUES (1,'Johann Schumacher','greatgrandfather',1890,1965,'German','Pioneer racer in 1920s','family_archive.pdf',23,'2024-04-10','Heritage Medal','Mechanic','Stuttgart');
INSERT INTO driver_heritage_records (driverId,ancestorName,relationship,birthYear,deathYear,nationality,notableAchievement,sourceDocument,verifiedByUserId,verificationDate,legacyAward,familyOccupation,hometown) VALUES (2,'Maria Rossi','grandmother',1915,1998,'Italian','First female driver in national series','photo_album.jpg',29,'2024-05-12','Trailblazer Award','Teacher','Milan');
INSERT INTO driver_heritage_records (driverId,ancestorName,relationship,birthYear,deathYear,nationality,notableAchievement,sourceDocument,verifiedByUserId,verificationDate,legacyAward,familyOccupation,hometown) VALUES (3,'Samuel O\'Connor','greatgreatgrandfather',1865,1930,'Irish','Built first racing club in Dublin','club_register.doc',34,'2024-06-18','Founders Honor','Carpenter','Dublin');

-- Constructor legal entities
CREATE TABLE constructor_legal_entities
(
    entityId               INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId          INTEGER NOT NULL,
    legalName              TEXT NOT NULL,
    registrationNumber     TEXT NOT NULL,
    incorporationDate      DATE,
    jurisdiction           TEXT,
    taxId                  TEXT,
    entityType             TEXT,
    ceoName                TEXT,
    boardChair             TEXT,
    headquartersAddress    TEXT,
    headquartersCity       TEXT,
    headquartersState      TEXT,
    headquartersZip        TEXT,
    parentCompanyId        INTEGER,
    subsidiaryCount        INTEGER,
    annualRevenue          REAL,
    employeeCount          INTEGER,
    complianceStatus       TEXT,
    lastAuditDate          DATE,
    notes                  TEXT
);
INSERT INTO constructor_legal_entities (constructorId,legalName,registrationNumber,incorporationDate,jurisdiction,taxId,entityType,ceoName,boardChair,headquartersAddress,headquartersCity,headquartersState,headquartersZip,parentCompanyId,subsidiaryCount,annualRevenue,employeeCount,complianceStatus,lastAuditDate,notes) VALUES (1,'FastTrack Racing Ltd','FT123456','2002-03-15','UK','GB123456789','Limited','Laura Bennett','Mark Hughes','12 Speedway Rd','London','Greater London','SW1A 1AA',NULL,2,75.0,420,'Compliant','2023-12-01','Main constructor entity');
INSERT INTO constructor_legal_entities (constructorId,legalName,registrationNumber,incorporationDate,jurisdiction,taxId,entityType,ceoName,boardChair,headquartersAddress,headquartersCity,headquartersState,headquartersZip,parentCompanyId,subsidiaryCount,annualRevenue,employeeCount,complianceStatus,lastAuditDate,notes) VALUES (2,'Velocity Motors GmbH','VM987654','1998-07-22','DE','DE987654321','GmbH','Thomas Keller','Sabine Meier','45 Motorallee','Munich','Bavaria','80331',NULL,1,120.5,680,'Pending','2024-02-15','German based constructor');
INSERT INTO constructor_legal_entities (constructorId,legalName,registrationNumber,incorporationDate,jurisdiction,taxId,entityType,ceoName,boardChair,headquartersAddress,headquartersCity,headquartersState,headquartersZip,parentCompanyId,subsidiaryCount,annualRevenue,employeeCount,complianceStatus,lastAuditDate,notes) VALUES (3,'Apex Performance Inc','AP555777','2010-11-05','US','US555777888','Corporation','James Lee','Emily Davis','78 Apex Blvd','Detroit','MI','48201',NULL,0,210.3,950,'Compliant','2024-04-20','American constructor');

-- Season prize distribution
CREATE TABLE season_prize_distribution
(
    distributionId        INTEGER PRIMARY KEY AUTOINCREMENT,
    seasonYear            INTEGER NOT NULL,
    position              INTEGER NOT NULL,
    prizeAmountUSD        REAL NOT NULL,
    bonusPercentage       REAL,
    sponsorContribution   REAL,
    taxWithheld           REAL,
    payoutDate            DATE,
    paymentMethod         TEXT,
    currencyCode          TEXT,
    exchangeRateToUSD     REAL,
    notes                 TEXT,
    approvedByUserId      INTEGER,
    approvalTimestamp     DATETIME,
    isFinalized           INTEGER DEFAULT 0,
    auditTrailId          INTEGER,
    paymentReference      TEXT,
    disbursementAgent     TEXT,
    taxRegion             TEXT,
    specialAwardFlag      INTEGER DEFAULT 0
);
INSERT INTO season_prize_distribution (seasonYear,position,prizeAmountUSD,bonusPercentage,sponsorContribution,taxWithheld,payoutDate,paymentMethod,currencyCode,exchangeRateToUSD,notes,approvedByUserId,approvalTimestamp,isFinalized) VALUES (2023,1,2500000.00,10.0,500000.00,300000.00,'2023-12-20','BankTransfer','USD',1.0,'Champion prize','11','2023-12-01 10:00:00',1);
INSERT INTO season_prize_distribution (seasonYear,position,prizeAmountUSD,bonusPercentage,sponsorContribution,taxWithheld,payoutDate,paymentMethod,currencyCode,exchangeRateToUSD,notes,approvedByUserId,approvalTimestamp,isFinalized) VALUES (2023,2,1500000.00,8.0,300000.00,180000.00,'2023-12-22','BankTransfer','USD',1.0,'Runner-up prize','12','2023-12-02 11:30:00',1);
INSERT INTO season_prize_distribution (seasonYear,position,prizeAmountUSD,bonusPercentage,sponsorContribution,taxWithheld,payoutDate,paymentMethod,currencyCode,exchangeRateToUSD,notes,approvedByUserId,approvalTimestamp,isFinalized) VALUES (2023,3,1000000.00,5.0,200000.00,120000.00,'2023-12-24','BankTransfer','USD',1.0,'Third place prize','13','2023-12-03 09:45:00',1);

-- Circuit utility usage
CREATE TABLE circuit_utility_usage
(
    usageId                INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId              INTEGER NOT NULL,
    usageDate              DATE NOT NULL,
    electricityKWh         REAL,
    waterLiters            REAL,
    gasCubicMeters         REAL,
    renewablePercentage    REAL,
    peakDemandKW           REAL,
    avgDemandKW            REAL,
    outageDurationMinutes  INTEGER,
    maintenanceFlag        INTEGER DEFAULT 0,
    notes                  TEXT,
    recordedByUserId       INTEGER,
    verificationFlag       INTEGER DEFAULT 0,
    sourceSystem           TEXT,
    meterReadingId         TEXT,
    temperatureC           REAL,
    humidityPercent        REAL,
    carbonEmissionsKgCO2   REAL,
    energyCostUSD          REAL,
    waterCostUSD           REAL
);
INSERT INTO circuit_utility_usage (circuitId,usageDate,electricityKWh,waterLiters,gasCubicMeters,renewablePercentage,peakDemandKW,avgDemandKW,outageDurationMinutes,notes,recordedByUserId,sourceSystem,meterReadingId,temperatureC,humidityPercent,carbonEmissionsKgCO2,energyCostUSD,waterCostUSD) VALUES (1,'2024-05-01',125000.5,350000.0,18000.2,45.0,850.0,560.0,0,'Normal operation','7','UtilityMeter','MTR001',22.5,55,32000.0,15000.75,800.25);
INSERT INTO circuit_utility_usage (circuitId,usageDate,electricityKWh,waterLiters,gasCubicMeters,renewablePercentage,peakDemandKW,avgDemandKW,outageDurationMinutes,notes,recordedByUserId,sourceSystem,meterReadingId,temperatureC,humidityPercent,carbonEmissionsKgCO2,energyCostUSD,waterCostUSD) VALUES (2,'2024-06-01',98000.0,280000.0,15000.0,60.0,720.0,470.0,15,'Minor outage due to storm','8','UtilityMeter','MTR002',18.0,70,25000.0,12000.50,650.40);
INSERT INTO circuit_utility_usage (circuitId,usageDate,electricityKWh,waterLiters,gasCubicMeters,renewablePercentage,peakDemandKW,avgDemandKW,outageDurationMinutes,notes,recordedByUserId,sourceSystem,meterReadingId,temperatureC,humidityPercent,carbonEmissionsKgCO2,energyCostUSD,waterCostUSD) VALUES (3,'2024-07-01',112000.3,320000.0,17000.8,50.0,800.0,530.0,5,'Scheduled maintenance','9','UtilityMeter','MTR003',24.0,60,30000.0,13800.80,720.60);

-- Media bibliography
CREATE TABLE media_bibliography
(
    bibliographyId         INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaId                INTEGER NOT NULL,
    referenceType          TEXT NOT NULL,
    title                  TEXT NOT NULL,
    author                 TEXT,
    publicationYear        INTEGER,
    publisher              TEXT,
    isbn                   TEXT,
    doi                    TEXT,
    url                    TEXT,
    accessedDate           DATE,
    citationStyle          TEXT,
    notes                  TEXT,
    language               TEXT,
    pageCount              INTEGER,
    edition                TEXT,
    volume                 TEXT,
    issue                  TEXT,
    abstract               TEXT,
    keywords               TEXT,
    addedByUserId          INTEGER,
    addedTimestamp         DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO media_bibliography (mediaId,referenceType,title,author,publicationYear,publisher,doi,url,accessedDate,citationStyle,language,keywords) VALUES (1,'Book','The History of Grand Prix','John Maxwell',2018,'Racing Press','10.1000/xyz123','http://example.com/book1','2024-05-10','APA','en','motorsport,history');
INSERT INTO media_bibliography (mediaId,referenceType,title,author,publicationYear,publisher,doi,url,accessedDate,citationStyle,language,keywords) VALUES (2,'Journal','Aerodynamic Advances in Formula 1','L. Chen; M. Patel',2021,'Journal of Sports Engineering','10.2000/abc456','http://example.com/journal2','2024-06-12','MLA','en','aerodynamics,technology');
INSERT INTO media_bibliography (mediaId,referenceType,title,author,publicationYear,publisher,doi,url,accessedDate,citationStyle,language,keywords) VALUES (3,'Report','Sustainability Report 2023','Global Racing Federation',2024,'GRF Publications','10.3000/def789','http://example.com/report3','2024-07-01','Chicago','en','sustainability,environment');

-- Event sustainability targets
CREATE TABLE event_sustainability_targets
(
    targetId               INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId                INTEGER NOT NULL,
    targetYear             INTEGER NOT NULL,
    carbonNeutralGoal      REAL,
    wasteReductionGoalPct  REAL,
    renewableEnergyPctGoal REAL,
    waterConservationLiters REAL,
    biodiversityEnhancement TEXT,
    stakeholderEngagement  TEXT,
    certificationTarget    TEXT,
    budgetUSD              REAL,
    responsibleDept        TEXT,
    status                 TEXT,
    lastReviewDate         DATE,
    nextReviewDate         DATE,
    notes                  TEXT,
    createdByUserId        INTEGER,
    createdTimestamp       DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedByUserId        INTEGER,
    updatedTimestamp       DATETIME,
    verificationFlag       INTEGER DEFAULT 0
);
INSERT INTO event_sustainability_targets (eventId,targetYear,carbonNeutralGoal,wasteReductionGoalPct,renewableEnergyPctGoal,waterConservationLiters,biodiversityEnhancement,stakeholderEngagement,certificationTarget,budgetUSD,responsibleDept,status,lastReviewDate,nextReviewDate,notes,createdByUserId) VALUES (2001,2024,0.0,30.0,50.0,50000.0,'Plant native trees','Community workshops','ISO14001',250000.00,'Sustainability Office','On Track','2024-05-01','2025-05-01','Initial targets set',15);
INSERT INTO event_sustainability_targets (eventId,targetYear,carbonNeutralGoal,wasteReductionGoalPct,renewableEnergyPctGoal,waterConservationLiters,biodiversityEnhancement,stakeholderEngagement,certificationTarget,budgetUSD,responsibleDept,status,lastReviewDate,nextReviewDate,notes,createdByUserId) VALUES (2002,2025,0.0,35.0,55.0,60000.0,'Create insect habitats','Fan engagement campaign','LEED Gold',300000.00,'Environmental Services','Planned','2024-06-15','2025-06-15','Planning phase',16);
INSERT INTO event_sustainability_targets (eventId,targetYear,carbonNeutralGoal,wasteReductionGoalPct,renewableEnergyPctGoal,waterConservationLiters,biodiversityEnhancement,stakeholderEngagement,certificationTarget,budgetUSD,responsibleDept,status,lastReviewDate,nextReviewDate,notes,createdByUserId) VALUES (2003,2026,0.0,40.0,60.0,70000.0,'Rewilding adjacent land','Educational seminars','BREEAM Excellent',350000.00,'Green Initiatives','Draft','2024-07-20','2025-07-20','Draft version',17);

-- Broadcast technology inventory
CREATE TABLE broadcast_technology_inventory
(
    inventoryId            INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId           INTEGER NOT NULL,
    equipmentType         TEXT NOT NULL,
    manufacturer          TEXT,
    modelNumber           TEXT,
    serialNumber          TEXT,
    purchaseDate          DATE,
    warrantyExpiration    DATE,
    firmwareVersion       TEXT,
    ipAddress             TEXT,
    macAddress            TEXT,
    locationRoom          TEXT,
    rackUnit              INTEGER,
    powerRequirementW     REAL,
    maintenanceIntervalDays INTEGER,
    lastMaintenanceDate   DATE,
    operationalStatus     TEXT,
    assignedTechnicianId  INTEGER,
    calibrationDate       DATE,
    notes                 TEXT,
    decommissionDate      DATE,
    replacementPlanId     INTEGER,
    lastUpdatedByUserId   INTEGER,
    lastUpdatedTimestamp  DATETIME
);
INSERT INTO broadcast_technology_inventory (broadcastId,equipmentType,manufacturer,modelNumber,serialNumber,purchaseDate,warrantyExpiration,firmwareVersion,ipAddress,macAddress,locationRoom,rackUnit,powerRequirementW,maintenanceIntervalDays,lastMaintenanceDate,operationalStatus,assignedTechnicianId,calibrationDate,notes) VALUES (101,'VideoEncoder','Blackmagic','ATEM Mini Pro','SN1001','2022-01-15','2025-01-15','v2.3','192.168.1.10','00:1A:2B:3C:4D:5E','ControlRoom','3',45.0,180,'2024-04-20','Operational','21','2024-04-01','Primary live switcher');
INSERT INTO broadcast_technology_inventory (broadcastId,equipmentType,manufacturer,modelNumber,serialNumber,purchaseDate,warrantyExpiration,firmwareVersion,ipAddress,macAddress,locationRoom,rackUnit,powerRequirementW,maintenanceIntervalDays,lastMaintenanceDate,operationalStatus,assignedTechnicianId,calibrationDate,notes) VALUES (102,'AudioMixer','Yamaha','CL5','SN2002','2021-06-10','2024-06-10','v1.9','192.168.1.20','00:1A:2B:3C:4D:5F','AudioRoom','5',120.0,365,'2024-03-15','Operational','22','2024-03-01','Main house mix');
INSERT INTO broadcast_technology_inventory (broadcastId,equipmentType,manufacturer,modelNumber,serialNumber,purchaseDate,warrantyExpiration,firmwareVersion,ipAddress,macAddress,locationRoom,rackUnit,powerRequirementW,maintenanceIntervalDays,lastMaintenanceDate,operationalStatus,assignedTechnicianId,calibrationDate,notes) VALUES (103,'StreamingServer','Wowza','StreamingEngine','SN3003','2023-02-20','2026-02-20','v4.5','192.168.1.30','00:1A:2B:3C:4D:5G','ServerRoom','7',250.0,90,'2024-05-05','Operational','23','2024-04-25','Handles live CDN distribution');

-- Media content distribution
CREATE TABLE media_content_distribution
(
    distributionId         INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaAssetId           INTEGER NOT NULL,
    platformName           TEXT NOT NULL,
    distributionDate       DATE NOT NULL,
    format                 TEXT,
    resolution             TEXT,
    bitrateKbps            INTEGER,
    languageCode           TEXT,
    subtitlesAvailable     INTEGER,
    geoRestriction         TEXT,
    accessType             TEXT,
    licensingAgreementId   INTEGER,
    costUSD                REAL,
    revenueUSD             REAL,
    viewCount              INTEGER,
    uniqueViewers          INTEGER,
    averageWatchTimeSec    INTEGER,
    engagementScore        REAL,
    notes                  TEXT,
    createdByUserId        INTEGER,
    createdTimestamp       DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedByUserId        INTEGER,
    updatedTimestamp       DATETIME
);
INSERT INTO media_content_distribution (mediaAssetId,platformName,distributionDate,format,resolution,bitrateKbps,languageCode,subtitlesAvailable,geoRestriction,accessType,costUSD,revenueUSD,viewCount,uniqueViewers,averageWatchTimeSec,engagementScore,notes,createdByUserId) VALUES (5001,'YouTube','2024-05-21','MP4','1080p',8000,'en',1,'Global','Free','0','150000','25000','20000',180,'0.85','Primary public upload',12);
INSERT INTO media_content_distribution (mediaAssetId,platformName,distributionDate,format,resolution,bitrateKbps,languageCode,subtitlesAvailable,geoRestriction,accessType,costUSD,revenueUSD,viewCount,uniqueViewers,averageWatchTimeSec,engagementScore,notes,createdByUserId) VALUES (5002,'Netflix','2024-06-01','MKV','4K',15000,'en',1,'US,CA','Subscription','0','300000','50000','35000',240,'0.92','Premium streaming partner',13);
INSERT INTO media_content_distribution (mediaAssetId,platformName,distributionDate,format,resolution,bitrateKbps,languageCode,subtitlesAvailable,geoRestriction,accessType,costUSD,revenueUSD,viewCount,uniqueViewers,averageWatchTimeSec,engagementScore,notes,createdByUserId) VALUES (5003,'AmazonPrime','2024-07-10','MP4','720p',5000,'en',0,'Global','Subscription','0','120000','18000','15000',150,'0.78','Secondary distribution channel',14);

-- Fuel supplier contracts
CREATE TABLE fuel_supplier_contracts
(
    contractId           INTEGER PRIMARY KEY AUTOINCREMENT,
    supplierName         TEXT NOT NULL,
    contractStartDate    DATE NOT NULL,
    contractEndDate      DATE NOT NULL,
    fuelType             TEXT,
    volumeLitersPerRace  REAL,
    pricePerLiterUSD     REAL,
    discountRatePct      REAL,
    exclusiveProvider    INTEGER,
    complianceAuditId    INTEGER,
    penaltyClause        TEXT,
    renewalOptionYears   INTEGER,
    contractStatus       TEXT,
    signedByUserId       INTEGER,
    signedDate           DATE,
    notes                TEXT,
    amendmentCount       INTEGER DEFAULT 0,
    lastAmendmentDate    DATE,
    governingLaw         TEXT,
    terminationNoticeDays INTEGER,
    insuranceProvider    TEXT
);
INSERT INTO fuel_supplier_contracts (supplierName,contractStartDate,contractEndDate,fuelType,volumeLitersPerRace,pricePerLiterUSD,discountRatePct,exclusiveProvider,contractStatus,signedByUserId,signedDate,notes,governingLaw,terminationNoticeDays,insuranceProvider) VALUES ('PetroMax','2023-01-01','2025-12-31','Petrol',12000.0,1.15,5.0,1,'Active','31','2022-12-15','Standard supply contract','UK Law',90,'GlobalInsure');
INSERT INTO fuel_supplier_contracts (supplierName,contractStartDate,contractEndDate,fuelType,volumeLitersPerRace,pricePerLiterUSD,discountRatePct,exclusiveProvider,contractStatus,signedByUserId,signedDate,notes,governingLaw,terminationNoticeDays,insuranceProvider) VALUES ('EcoFuel','2024-03-01','2027-02-28','Biofuel',10000.0,1.30,7.5,0,'Pending','32','2024-02-20','Eco-friendly fuel option','EU Law',120,'EcoSure');
INSERT INTO fuel_supplier_contracts (supplierName,contractStartDate,contractEndDate,fuelType,volumeLitersPerRace,pricePerLiterUSD,discountRatePct,exclusiveProvider,contractStatus,signedByUserId,signedDate,notes,governingLaw,terminationNoticeDays,insuranceProvider) VALUES ('RapidFuel','2022-06-15','2024-06-14','Diesel',15000.0,0.98,3.0,1,'Expired','33','2022-05-30','Legacy contract','US Law',60,'RapidCover');

-- Race network infrastructure
CREATE TABLE race_network_infrastructure
(
    infraId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId             INTEGER NOT NULL,
    networkSegmentName    TEXT NOT NULL,
    ipRangeStart          TEXT,
    ipRangeEnd            TEXT,
    subnetMask            TEXT,
    vlanId                INTEGER,
    bandwidthGbps         REAL,
    primaryProvider       TEXT,
    secondaryProvider     TEXT,
    redundancyMode        TEXT,
    lastUpgradeDate       DATE,
    firmwareVersion       TEXT,
    accessControlList     TEXT,
    monitoringTool        TEXT,
    alertThresholdMs      INTEGER,
    maintenanceWindowStart TIME,
    maintenanceWindowEnd TIME,
    notes                 TEXT,
    createdByUserId       INTEGER,
    createdTimestamp      DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedByUserId       INTEGER,
    updatedTimestamp      DATETIME
);
INSERT INTO race_network_infrastructure (circuitId,networkSegmentName,ipRangeStart,ipRangeEnd,subnetMask,vlanId,bandwidthGbps,primaryProvider,secondaryProvider,redundancyMode,lastUpgradeDate,firmwareVersion,monitoringTool,alertThresholdMs,maintenanceWindowStart,maintenanceWindowEnd,notes,createdByUserId) VALUES (1,'ControlRoom','10.0.0.1','10.0.0.255','255.255.255.0',10,10.0,'NetSpeed','BackupNet','Active-Active','2023-11-10','v3.2','Nagios',200,'02:00','04:00','Core control network',20);
INSERT INTO race_network_infrastructure (circuitId,networkSegmentName,ipRangeStart,ipRangeEnd,subnetMask,vlanId,bandwidthGbps,primaryProvider,secondaryProvider,redundancyMode,lastUpgradeDate,firmwareVersion,monitoringTool,alertThresholdMs,maintenanceWindowStart,maintenanceWindowEnd,notes,createdByUserId) VALUES (2,'MediaBroadcast','10.1.0.1','10.1.0.127','255.255.255.128',20,5.0,'MediaNet','SpareNet','Active-Standby','2024-01-20','v2.8','Zabbix',150,'01:00','03:00','Dedicated media streams',21);
INSERT INTO race_network_infrastructure (circuitId,networkSegmentName,ipRangeStart,ipRangeEnd,subnetMask,vlanId,bandwidthGbps,primaryProvider,secondaryProvider,redundancyMode,lastUpgradeDate,firmwareVersion,monitoringTool,alertThresholdMs,maintenanceWindowStart,maintenanceWindowEnd,notes,createdByUserId) VALUES (3,'Telemetry','10.2.0.1','10.2.0.63','255.255.255.192',30,2.0,'DataLink','BackupData','Active-Active','2024-03-15','v1.5','Prometheus',100,'03:00','05:00','High‑frequency telemetry data',22);