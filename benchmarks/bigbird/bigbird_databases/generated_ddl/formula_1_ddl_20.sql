-- Details of sustainability initiatives applied at each venue
CREATE TABLE venue_sustainability_initiatives (
    initiativeId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    initiativeName TEXT NOT NULL,
    description TEXT,
    startDate DATE,
    endDate DATE,
    carbonReductionPct REAL,
    wasteDivertedTons REAL,
    waterSavingLiters REAL,
    renewableEnergyKWh REAL,
    certificationLevel TEXT,
    responsibleDept TEXT,
    budgetAllocated REAL,
    budgetUsed REAL,
    status TEXT,
    stakeholderContact TEXT,
    reportingFrequency TEXT,
    complianceDocumentUrl TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO venue_sustainability_initiatives (venueId,initiativeName,description,startDate,endDate,carbonReductionPct,wasteDivertedTons,waterSavingLiters,renewableEnergyKWh,certificationLevel,responsibleDept,budgetAllocated,budgetUsed,status,stakeholderContact,reportingFrequency,complianceDocumentUrl,notes,createdAt,updatedAt) VALUES (1,'SolarPanelInstallation','Install solar panels on parking structures','2023-01-01','2025-12-31',12.5,0,0,250000,'Gold','Facilities',500000,120000,'Active','env_manager@examplecom','Monthly','http://examplecom/docs/solar.pdf','Phase 1 complete','2023-01-01','2023-06-01');
INSERT INTO venue_sustainability_initiatives (venueId,initiativeName,description,startDate,endDate,carbonReductionPct,wasteDivertedTons,waterSavingLiters,renewableEnergyKWh,certificationLevel,responsibleDept,budgetAllocated,budgetUsed,status,stakeholderContact,reportingFrequency,complianceDocumentUrl,notes,createdAt,updatedAt) VALUES (2,'RainwaterHarvest','Collect rainwater for irrigation','2022-04-15','2024-04-15',0,15,300000,0,'Silver','Operations',200000,75000,'Ongoing','ops_lead@examplecom','Quarterly','http://examplecom/docs/rainwater.pdf','System operational','2022-04-15','2023-07-20');
INSERT INTO venue_sustainability_initiatives (venueId,initiativeName,description,startDate,endDate,carbonReductionPct,wasteDivertedTons,waterSavingLiters,renewableEnergyKWh,certificationLevel,responsibleDept,budgetAllocated,budgetUsed,status,stakeholderContact,reportingFrequency,complianceDocumentUrl,notes,createdAt,updatedAt) VALUES (3,'ZeroWastePolicy','Implement waste sorting and composting','2021-01-01','2023-12-31',0,45,0,0,'Platinum','Environmental',300000,210000,'Completed','sustainability@examplecom','Annual','http://examplecom/docs/zerowaste.pdf','Exceeded targets','2021-01-01','2023-12-31');

-- Inventory of hardware assets used by racing teams
CREATE TABLE team_hardware_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    hardwareType TEXT NOT NULL,
    modelNumber TEXT,
    serialNumber TEXT,
    purchaseDate DATE,
    warrantyEndDate DATE,
    supplierName TEXT,
    cost REAL,
    location TEXT,
    status TEXT,
    lastMaintenanceDate DATE,
    nextMaintenanceDue DATE,
    assignedToEmployeeId INTEGER,
    depreciationRate REAL,
    firmwareVersion TEXT,
    ipAddress TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    assetTag TEXT,
    inventoryCategory TEXT
);
INSERT INTO team_hardware_inventory (teamId,hardwareType,modelNumber,serialNumber,purchaseDate,warrantyEndDate,supplierName,cost,location,status,lastMaintenanceDate,nextMaintenanceDue,assignedToEmployeeId,depreciationRate,firmwareVersion,ipAddress,notes,createdAt,updatedAt,assetTag,inventoryCategory) VALUES (10,'TelemetryUnit','TU-900','SN123456','2022-03-10','2025-03-10','TechSupply','15000','Garage A','Active','2023-01-15','2024-01-15',2001,15.0,'v3.2.1','192.168.10.5','Calibrated','2022-03-10','2023-06-20','TU-900-10','Electronics');
INSERT INTO team_hardware_inventory (teamId,hardwareType,modelNumber,serialNumber,purchaseDate,warrantyEndDate,supplierName,cost,location,status,lastMaintenanceDate,nextMaintenanceDue,assignedToEmployeeId,depreciationRate,firmwareVersion,ipAddress,notes,createdAt,updatedAt,assetTag,inventoryCategory) VALUES (12,'EngineDyno','ED-2500','SN987654','2021-07-01','2024-07-01','EngineWorks','48000','Lab B','InRepair','2023-03-22','2024-03-22',2003,20.0,'v5.0','192.168.12.7','Pending parts','2021-07-01','2023-07-15','ED-2500-12','Testing');
INSERT INTO team_hardware_inventory (teamId,hardwareType,modelNumber,serialNumber,purchaseDate,warrantyEndDate,supplierName,cost,location,status,lastMaintenanceDate,nextMaintenanceDue,assignedToEmployeeId,depreciationRate,firmwareVersion,ipAddress,notes,createdAt,updatedAt,assetTag,inventoryCategory) VALUES (15,'PitLaneCamera','PC-400','SN555666','2023-01-20','2026-01-20','VisionTech','8000','Pit Lane','Active','2023-02-10','2024-02-10',2007,10.0,'v1.9','192.168.15.9','Operational','2023-01-20','2023-09-01','PC-400-15','Surveillance');

-- Metrics collected from media streaming platforms during race broadcasts
CREATE TABLE media_streaming_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    streamId INTEGER NOT NULL,
    platform TEXT NOT NULL,
    viewerCount INTEGER,
    avgWatchTimeSec REAL,
    bitrateKbps INTEGER,
    resolution TEXT,
    country TEXT,
    deviceType TEXT,
    subscriptionLevel TEXT,
    startTime DATETIME,
    endTime DATETIME,
    concurrentViewersMax INTEGER,
    bufferEvents INTEGER,
    avgBufferDurationMs REAL,
    peakBitrateKbps INTEGER,
    contentRating TEXT,
    adImpressions INTEGER,
    adRevenue REAL,
    createdAt DATETIME,
    updatedAt DATETIME,
    streamQualityScore REAL,
    region TEXT
);
INSERT INTO media_streaming_metrics (streamId,platform,viewerCount,avgWatchTimeSec,bitrateKbps,resolution,country,deviceType,subscriptionLevel,startTime,endTime,concurrentViewersMax,bufferEvents,avgBufferDurationMs,peakBitrateKbps,contentRating,adImpressions,adRevenue,createdAt,updatedAt,streamQualityScore,region) VALUES (101,'StreamX',125000,720.5,3500,'1080p','US','SmartTV','Premium','2023-06-15 13:00:00','2023-06-15 15:30:00',140000,12,350.2,5000,'PG','2500',7500.00,'2023-06-15 15:31:00','2023-06-15 15:31:00',92.4,'NorthAmerica');
INSERT INTO media_streaming_metrics (streamId,platform,viewerCount,avgWatchTimeSec,bitrateKbps,resolution,country,deviceType,subscriptionLevel,startTime,endTime,concurrentViewersMax,bufferEvents,avgBufferDurationMs,peakBitrateKbps,contentRating,adImpressions,adRevenue,createdAt,updatedAt,streamQualityScore,region) VALUES (102,'LiveStreamPro',89000,680.0,3000,'720p','GB','Desktop','Standard','2023-06-15 13:00:00','2023-06-15 15:30:00',95000,20,420.5,4200,'G','1800',4200.00,'2023-06-15 15:31:00','2023-06-15 15:31:00',85.7,'Europe');
INSERT INTO media_streaming_metrics (streamId,platform,viewerCount,avgWatchTimeSec,bitrateKbps,resolution,country,deviceType,subscriptionLevel,startTime,endTime,concurrentViewersMax,bufferEvents,avgBufferDurationMs,peakBitrateKbps,contentRating,adImpressions,adRevenue,createdAt,updatedAt,streamQualityScore,region) VALUES (103,'FastStream',54000,600.3,2800,'1080p','AU','Mobile','Premium','2023-06-15 13:00:00','2023-06-15 15:30:00',58000,8,210.0,3800,'PG-13','1300',3100.00,'2023-06-15 15:31:00','2023-06-15 15:31:00',88.9,'Oceania');

-- Detailed information about fan loyalty program memberships
CREATE TABLE fan_loyalty_program_details (
    loyaltyId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    tier TEXT,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    joinDate DATE,
    lastActivityDate DATE,
    preferredTeamId INTEGER,
    preferredCircuitId INTEGER,
    email TEXT,
    phone TEXT,
    address TEXT,
    city TEXT,
    state TEXT,
    zipCode TEXT,
    country TEXT,
    rewardsEligible INTEGER,
    rewardsClaimed INTEGER,
    communicationPreference TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    loyaltyStatus TEXT,
    preferredLanguage TEXT
);
INSERT INTO fan_loyalty_program_details (fanId,tier,pointsEarned,pointsRedeemed,joinDate,lastActivityDate,preferredTeamId,preferredCircuitId,email,phone,address,city,state,zipCode,country,rewardsEligible,rewardsClaimed,communicationPreference,notes,createdAt,updatedAt,loyaltyStatus,preferredLanguage) VALUES (5001,'Gold',12450,3000,'2019-05-20','2023-05-15',3,7,'fan5001@examplecom','0412345678','12 Raceway Rd','Melbourne','VIC','3000','AU',1,5,'Email','Top tier fan','2023-01-01','2023-06-01','Active','English');
INSERT INTO fan_loyalty_program_details (fanId,tier,pointsEarned,pointsRedeemed,joinDate,lastActivityDate,preferredTeamId,preferredCircuitId,email,phone,address,city,state,zipCode,country,rewardsEligible,rewardsClaimed,communicationPreference,notes,createdAt,updatedAt,loyaltyStatus,preferredLanguage) VALUES (5002,'Silver',8200,1500,'2020-09-12','2023-04-20',5,2,'fan5002@examplecom','0511122233','34 Grand Prix Ln','Auckland','AUK','1010','NZ',1,2,'SMS','Occasional attendee','2023-02-15','2023-06-10','Active','English');
INSERT INTO fan_loyalty_program_details (fanId,tier,pointsEarned,pointsRedeemed,joinDate,lastActivityDate,preferredTeamId,preferredCircuitId,email,phone,address,city,state,zipCode,country,rewardsEligible,rewardsClaimed,communicationPreference,notes,createdAt,updatedAt,loyaltyStatus,preferredLanguage) VALUES (5003,'Bronze',3400,500,'2022-01-05','2023-03-30',1,5,'fan5003@examplecom','0612345678','78 Speed Blvd','London','ENG','SW1A','GB',0,0,'Email','New member','2023-03-01','2023-06-12','Active','English');

-- Milestones achieved by drivers throughout their careers
CREATE TABLE driver_career_milestones (
    milestoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    seasonYear INTEGER,
    milestoneType TEXT,
    description TEXT,
    eventDate DATE,
    pointsEarned REAL,
    position INTEGER,
    teamId INTEGER,
    circuitId INTEGER,
    raceId INTEGER,
    lapNumber INTEGER,
    lapTime TEXT,
    fastestLapFlag INTEGER,
    sanctioned INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    sponsorId INTEGER,
    awardId INTEGER,
    milestoneStatus TEXT
);
INSERT INTO driver_career_milestones (driverId,seasonYear,milestoneType,description,eventDate,pointsEarned,position,teamId,circuitId,raceId,lapNumber,lapTime,fastestLapFlag,sanctioned,notes,createdAt,updatedAt,sponsorId,awardId,milestoneStatus) VALUES (101,2022,'FirstPodium','Finished on podium for first time','2022-07-10',15.0,3,12,5,1001,32,'1:22.345',0,0,'Great step forward','2022-07-11','2022-07-11',201,301,'Confirmed');
INSERT INTO driver_career_milestones (driverId,seasonYear,milestoneType,description,eventDate,pointsEarned,position,teamId,circuitId,raceId,lapNumber,lapTime,fastestLapFlag,sanctioned,notes,createdAt,updatedAt,sponsorId,awardId,milestoneStatus) VALUES (102,2023,'Win','First race victory','2023-03-15',25.0,1,14,8,1105,18,'1:18.512',1,0,'Dominant performance','2023-03-16','2023-03-16',203,305,'Confirmed');
INSERT INTO driver_career_milestones (driverId,seasonYear,milestoneType,description,eventDate,pointsEarned,position,teamId,circuitId,raceId,lapNumber,lapTime,fastestLapFlag,sanctioned,notes,createdAt,updatedAt,sponsorId,awardId,milestoneStatus) VALUES (103,2021,'PolePosition','Secured pole position','2021-11-05',0,0,11,3,950,0,'','1',0,'Excellent qualifying','2021-11-06','2021-11-06',199,298,'Confirmed');

-- Research and development projects undertaken by constructors
CREATE TABLE constructor_rnd_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER NOT NULL,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    budgetAllocated REAL,
    budgetSpent REAL,
    leadEngineerId INTEGER,
    technologyFocus TEXT,
    status TEXT,
    milestonesCompleted INTEGER,
    patentsFiled INTEGER,
    externalPartner TEXT,
    riskLevel TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    projectPhase TEXT,
    expectedOutcome TEXT,
    regulatoryApprovalStatus TEXT,
    projectPriority INTEGER
);
INSERT INTO constructor_rnd_projects (constructorId,projectName,startDate,endDate,budgetAllocated,budgetSpent,leadEngineerId,technologyFocus,status,milestonesCompleted,patentsFiled,externalPartner,riskLevel,notes,createdAt,updatedAt,projectPhase,expectedOutcome,regulatoryApprovalStatus,projectPriority) VALUES (5,'HybridPowerUnit','2022-02-01','2024-12-31',12000000,4500000,301,'Hybrid','Active',3,2,'EcoTech','Medium','Focused on efficiency','2022-02-01','2023-06-01','Development','20% power boost','Pending',1);
INSERT INTO constructor_rnd_projects (constructorId,projectName,startDate,endDate,budgetAllocated,budgetSpent,leadEngineerId,technologyFocus,status,milestonesCompleted,patentsFiled,externalPartner,riskLevel,notes,createdAt,updatedAt,projectPhase,expectedOutcome,regulatoryApprovalStatus,projectPriority) VALUES (7,'AerodynamicWing','2021-05-15','2023-08-30',3500000,3100000,307,'Aerodynamics','Testing',5,1,'AirFlow Ltd','Low','Improved downforce','2021-05-15','2023-04-20','Testing','5% lap time reduction','Approved',2);
INSERT INTO constructor_rnd_projects (constructorId,projectName,startDate,endDate,budgetAllocated,budgetSpent,leadEngineerId,technologyFocus,status,milestonesCompleted,patentsFiled,externalPartner,riskLevel,notes,createdAt,updatedAt,projectPhase,expectedOutcome,regulatoryApprovalStatus,projectPriority) VALUES (9,'CarbonFiberChassis','2020-09-01','2022-12-31',8000000,8000000,312,'Materials','Completed',7,4,'FiberCo','High','Achieved weight reduction','2020-09-01','2022-12-31','Production','10% weight cut','Approved',1);

-- Artifacts related to the heritage of each circuit
CREATE TABLE circuit_heritage_artifacts (
    artifactId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    artifactName TEXT,
    description TEXT,
    acquisitionDate DATE,
    origin TEXT,
    material TEXT,
    condition TEXT,
    displayLocation TEXT,
    curatorId INTEGER,
    valuationUSD REAL,
    insurancePolicyNumber TEXT,
    loanStatus TEXT,
    loanInstitution TEXT,
    loanStartDate DATE,
    loanEndDate DATE,
    photoUrl TEXT,
    exhibitionStartDate DATE,
    exhibitionEndDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    preservationMethod TEXT,
    artifactCategory TEXT
);
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,description,acquisitionDate,origin,material,condition,displayLocation,curatorId,valuationUSD,insurancePolicyNumber,loanStatus,loanInstitution,loanStartDate,loanEndDate,photoUrl,exhibitionStartDate,exhibitionEndDate,notes,createdAt,updatedAt,preservationMethod,artifactCategory) VALUES (4,'OriginalFlagPole','Flag pole from 1965 Grand Prix','2018-04-22','Italy','Steel','Excellent','Museum Hall A',401,120000,'INS12345','Owned','',NULL,NULL,'http://examplecom/photos/flagpole.jpg','2023-01-10','2023-06-10','Well maintained','2023-01-01','2023-06-15','ClimateControlled','Historical');
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,description,acquisitionDate,origin,material,condition,displayLocation,curatorId,valuationUSD,insurancePolicyNumber,loanStatus,loanInstitution,loanStartDate,loanEndDate,photoUrl,exhibitionStartDate,exhibitionEndDate,notes,createdAt,updatedAt,preservationMethod,artifactCategory) VALUES (7,'VintagePitBoard','Pit board used by champion driver','2020-09-15','UK','Wood','Good','Exhibit B',405,45000,'INS67890','Loaned','Racing Museum','2023-02-01','2023-12-31','http://examplecom/photos/pitboard.jpg','2023-02-15','2023-12-01','Restored','2023-02-01','2023-12-31','LowHumidity','Equipment');
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,description,acquisitionDate,origin,material,condition,displayLocation,curatorId,valuationUSD,insurancePolicyNumber,loanStatus,loanInstitution,loanStartDate,loanEndDate,photoUrl,exhibitionStartDate,exhibitionEndDate,notes,createdAt,updatedAt,preservationMethod,artifactCategory) VALUES (12,'ChampionTrophy','Trophy from 1998 champion','2015-07-30','Germany','Metal','Excellent','Trophy Room','409',250000,'INS54321','Owned','',NULL,NULL,'http://examplecom/photos/trophy.jpg','2023-03-01','2023-09-01','Polished','2023-03-01','2023-09-01','DryStorage','Award');

-- Financial transactions related to each race event
CREATE TABLE race_financial_transactions (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    transactionDate DATE,
    amount REAL,
    currency TEXT,
    transactionType TEXT,
    payerId INTEGER,
    payeeId INTEGER,
    method TEXT,
    referenceNumber TEXT,
    description TEXT,
    approvedById INTEGER,
    approvalDate DATE,
    status TEXT,
    fiscalYear INTEGER,
    department TEXT,
    projectCode TEXT,
    taxAmount REAL,
    exchangeRate REAL,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    costCenter TEXT,
    invoiceNumber TEXT
);
INSERT INTO race_financial_transactions (raceId,transactionDate,amount,currency,transactionType,payerId,payeeId,method,referenceNumber,description,approvedById,approvalDate,status,fiscalYear,department,projectCode,taxAmount,exchangeRate,notes,createdAt,updatedAt,costCenter,invoiceNumber) VALUES (2001,'2023-05-20',150000,'USD','PrizeMoney',0,12,'BankTransfer','REF001','Winner prize','101','2023-05-21','Completed',2023,'Finance','PRZ001',15000,1.0,'Paid on time','2023-05-21','2023-05-21','CC100','INV5001');
INSERT INTO race_financial_transactions (raceId,transactionDate,amount,currency,transactionType,payerId,payeeId,method,referenceNumber,description,approvedById,approvalDate,status,fiscalYear,department,projectCode,taxAmount,exchangeRate,notes,createdAt,updatedAt,costCenter,invoiceNumber) VALUES (2002,'2023-06-05',50000,'EUR','Sponsorship',15,0,'Check','REF002','Local sponsor contribution','102','2023-06-06','Completed',2023,'Sponsorship','SPN045',7500,0.9,'Converted to USD','2023-06-06','2023-06-06','CC200','INV5002');
INSERT INTO race_financial_transactions (raceId,transactionDate,amount,currency,transactionType,payerId,payeeId,method,referenceNumber,description,approvedById,approvalDate,status,fiscalYear,department,projectCode,taxAmount,exchangeRate,notes,createdAt,updatedAt,costCenter,invoiceNumber) VALUES (2003,'2023-07-12',20000,'GBP','Logistics',0,22,'BankTransfer','REF003','Equipment transport','103','2023-07-13','Pending',2023,'Logistics','LOG123',3000,1.3,'Awaiting receipt','2023-07-13','2023-07-13','CC300','INV5003');

-- Archived raw telemetry data captured during races
CREATE TABLE telemetry_data_archives (
    archiveId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    lap INTEGER,
    segment INTEGER,
    timestamp DATETIME,
    speedKph REAL,
    rpm INTEGER,
    gear INTEGER,
    throttlePct REAL,
    brakePct REAL,
    steeringAngle REAL,
    gForceLat REAL,
    gForceLong REAL,
    temperatureC REAL,
    pressureBar REAL,
    fuelLevelPct REAL,
    dataFilePath TEXT,
    checksum TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    sourceSystem TEXT,
    archiveVersion TEXT
);
INSERT INTO telemetry_data_archives (raceId,driverId,lap,segment,timestamp,speedKph,rpm,gear,throttlePct,brakePct,steeringAngle,gForceLat,gForceLong,temperatureC,pressureBar,fuelLevelPct,dataFilePath,checksum,notes,createdAt,updatedAt,sourceSystem,archiveVersion) VALUES (3001,101,12,3,'2023-06-15 14:23:10',210.5,11500,6,85.0,0.0,2.5,0.12,-0.05,45.0,1.02,60.5,'/archives/telemetry/3001_101_l12_s3.bin','ABC123DEF','Clean segment','2023-06-15','2023-06-15','TelemetryUnitV3','v1.0');
INSERT INTO telemetry_data_archives (raceId,driverId,lap,segment,timestamp,speedKph,rpm,gear,throttlePct,brakePct,steeringAngle,gForceLat,gForceLong,temperatureC,pressureBar,fuelLevelPct,dataFilePath,checksum,notes,createdAt,updatedAt,sourceSystem,archiveVersion) VALUES (3002,102,5,1,'2023-06-15 13:45:02',195.0,10800,5,78.0,0.0,1.8,0.10,-0.03,42.5,1.00,73.0,'/archives/telemetry/3002_102_l5_s1.bin','XYZ789GHI','Minor spike','2023-06-15','2023-06-15','TelemetryUnitV3','v1.0');
INSERT INTO telemetry_data_archives (raceId,driverId,lap,segment,timestamp,speedKph,rpm,gear,throttlePct,brakePct,steeringAngle,gForceLat,gForceLong,temperatureC,pressureBar,fuelLevelPct,dataFilePath,checksum,notes,createdAt,updatedAt,sourceSystem,archiveVersion) VALUES (3003,103,20,2,'2023-06-15 15:10:45',225.3,12000,7,92.0,0.0,3.2,0.15,-0.08,46.2,1.03,55.0,'/archives/telemetry/3003_103_l20_s2.bin','LMN456OPQ','Peak performance','2023-06-15','2023-06-15','TelemetryUnitV3','v1.0');

-- Records of sponsor brand exposures during events
CREATE TABLE sponsor_brand_exposures (
    exposureId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    exposureType TEXT,
    location TEXT,
    startTime DATETIME,
    endTime DATETIME,
    audienceSize INTEGER,
    metricValue REAL,
    cost REAL,
    contractId INTEGER,
    creativeAssetId INTEGER,
    notes TEXT,
    approvedById INTEGER,
    approvalDate DATE,
    status TEXT,
    channel TEXT,
    platform TEXT,
    impressions INTEGER,
    clicks INTEGER,
    createdAt DATE,
    updatedAt DATE,
    exposureRating TEXT,
    targetDemographic TEXT
);
INSERT INTO sponsor_brand_exposures (sponsorId,eventId,exposureType,location,startTime,endTime,audienceSize,metricValue,cost,contractId,creativeAssetId,notes,approvedById,approvalDate,status,channel,platform,impressions,clicks,createdAt,updatedAt,exposureRating,targetDemographic) VALUES (301,4001,'Billboard','Turn 3','2023-06-15 13:00:00','2023-06-15 15:30:00',150000,3.5,25000,9001,510,'Large LED billboard','101','2023-05-01','Approved','Outdoor','N/A',2000000,5000,'2023-05-02','2023-05-02','High','MotorsportFans');
INSERT INTO sponsor_brand_exposures (sponsorId,eventId,exposureType,location,startTime,endTime,audienceSize,metricValue,cost,contractId,creativeAssetId,notes,approvedById,approvalDate,status,channel,platform,impressions,clicks,createdAt,updatedAt,exposureRating,targetDemographic) VALUES (302,4002,'DigitalOverlay','Live Stream','2023-06-15 14:00:00','2023-06-15 15:30:00',90000,2.8,18000,9002,512,'Overlay during pit lane coverage','102','2023-05-03','Approved','Digital','StreamX',1200000,3200,'2023-05-03','2023-05-03','Medium','TechEnthusiasts');
INSERT INTO sponsor_brand_exposures (sponsorId,eventId,exposureType,location,startTime,endTime,audienceSize,metricValue,cost,contractId,creativeAssetId,notes,approvedById,approvalDate,status,channel,platform,impressions,clicks,createdAt,updatedAt,exposureRating,targetDemographic) VALUES (303,4003,'SocialMedia','Twitter','2023-06-15 13:30:00','2023-06-15 15:00:00',60000,1.9,12000,9003,515,'Hashtag campaign','103','2023-05-04','Approved','Social','Twitter',800000,2100,'2023-05-04','2023-05-04','Low','GeneralPublic');