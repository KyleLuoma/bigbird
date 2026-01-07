-- Broadcast network topology information
CREATE TABLE broadcast_network_topology (
    networkId INTEGER PRIMARY KEY AUTOINCREMENT,
    networkName TEXT,
    topologyType TEXT,
    nodeCount INTEGER,
    edgeCount INTEGER,
    centralHub TEXT,
    redundancyLevel TEXT,
    bandwidthGbps REAL,
    latencyMs REAL,
    firmwareVersion TEXT,
    lastUpdate DATE,
    maintenanceWindow TEXT,
    supportContact TEXT,
    region TEXT,
    dataCenter TEXT,
    ipRange TEXT,
    securityProtocol TEXT,
    encryptionEnabled INTEGER,
    monitoringEnabled INTEGER,
    alertsThreshold REAL,
    backupStrategy TEXT,
    notes TEXT
);

INSERT INTO broadcast_network_topology (networkName,topologyType,nodeCount,edgeCount,centralHub,redundancyLevel,bandwidthGbps,latencyMs,firmwareVersion,lastUpdate,maintenanceWindow,supportContact,region,dataCenter,ipRange,securityProtocol,encryptionEnabled,monitoringEnabled,alertsThreshold,backupStrategy,notes) VALUES ('GlobalNet','Mesh',120,350,'HubA','High',12.5,15.2,'v2.3','2025-03-01','02:00-04:00','netops@example.com','EMEA','DC01','10.0.0.0/16','TLS1.3',1,1,0.95,'DailySnapshot','Initial deployment');
INSERT INTO broadcast_network_topology (networkName,topologyType,nodeCount,edgeCount,centralHub,redundancyLevel,bandwidthGbps,latencyMs,firmwareVersion,lastUpdate,maintenanceWindow,supportContact,region,dataCenter,ipRange,securityProtocol,encryptionEnabled,monitoringEnabled,alertsThreshold,backupStrategy,notes) VALUES ('StreamLine','Star',45,44,'CoreNode','Medium',5.0,8.7,'v1.9','2025-02-15','01:00-02:00','ops@example.com','APAC','DC07','192.168.1.0/24','IPSec',1,0,0.90,'WeeklyBackup','Added new edge nodes');
INSERT INTO broadcast_network_topology (networkName,topologyType,nodeCount,edgeCount,centralHub,redundancyLevel,bandwidthGbps,latencyMs,firmwareVersion,lastUpdate,maintenanceWindow,supportContact,region,dataCenter,ipRange,securityProtocol,encryptionEnabled,monitoringEnabled,alertsThreshold,backupStrategy,notes) VALUES ('MediaHub','Hybrid',78,200,'HubB','High',9.8,12.3,'v3.0','2025-03-10','03:00-05:00','admin@example.com','NA','DC03','172.16.0.0/12','SSL',0,1,0.92,'MonthlySnapshot','Upgraded firmware');

-- Venue fire safety audit records
CREATE TABLE venue_fire_safety_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    auditDate DATE,
    inspectorName TEXT,
    fireExtinguishersCount INTEGER,
    alarmsFunctional INTEGER,
    exitSignsVisible INTEGER,
    evacuationPlanVersion TEXT,
    sprinklerSystemStatus TEXT,
    fireDoorsCount INTEGER,
    fireDoorsOperational INTEGER,
    smokeDetectorsCount INTEGER,
    detectorsFunctional INTEGER,
    trainingCompleted INTEGER,
    complianceScore REAL,
    remarks TEXT,
    nextAuditDate DATE,
    auditReportUrl TEXT,
    fireMarshalContact TEXT,
    lastDrillDate DATE,
    drillOutcome TEXT,
    correctiveActionsTaken TEXT
);

INSERT INTO venue_fire_safety_audits (venueId,auditDate,inspectorName,fireExtinguishersCount,alarmsFunctional,exitSignsVisible,evacuationPlanVersion,sprinklerSystemStatus,fireDoorsCount,fireDoorsOperational,smokeDetectorsCount,detectorsFunctional,trainingCompleted,complianceScore,remarks,nextAuditDate,auditReportUrl,fireMarshalContact,lastDrillDate,drillOutcome,correctiveActionsTaken) VALUES (101,'2024-11-20','John Doe',56,1,1,'v3','Operational',24,1,40,1,1,96.5,'All clear','2025-11-20','http://reports.example.com/audit101.pdf','marshal@example.com','2024-10-15','Successful','Replaced 2 malfunctioning detectors');
INSERT INTO venue_fire_safety_audits (venueId,auditDate,inspectorName,fireExtinguishersCount,alarmsFunctional,exitSignsVisible,evacuationPlanVersion,sprinklerSystemStatus,fireDoorsCount,fireDoorsOperational,smokeDetectorsCount,detectorsFunctional,trainingCompleted,complianceScore,remarks,nextAuditDate,auditReportUrl,fireMarshalContact,lastDrillDate,drillOutcome,correctiveActionsTaken) VALUES (102,'2024-12-05','Maria Lee',32,0,1,'v2','Partial',15,0,22,0,0,82.3,'Alarm system fault','2025-12-05','http://reports.example.com/audit102.pdf','marshal2@example.com','2024-11-01','Partial','Repaired alarm panel and retrained staff');
INSERT INTO venue_fire_safety_audits (venueId,auditDate,inspectorName,fireExtinguishersCount,alarmsFunctional,exitSignsVisible,evacuationPlanVersion,sprinklerSystemStatus,fireDoorsCount,fireDoorsOperational,smokeDetectorsCount,detectorsFunctional,trainingCompleted,complianceScore,remarks,nextAuditDate,auditReportUrl,fireMarshalContact,lastDrillDate,drillOutcome,correctiveActionsTaken) VALUES (103,'2024-10-30','Ahmed Khan',48,1,1,'v4','Operational',20,1,35,1,1,99.1,'Excellent','2025-10-30','http://reports.example.com/audit103.pdf','marshal3@example.com','2024-09-20','Successful','No actions needed');

-- Digital ticketing session logs
CREATE TABLE digital_ticketing_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    sessionToken TEXT,
    userId INTEGER,
    deviceId TEXT,
    ipAddress TEXT,
    startTime TEXT,
    endTime TEXT,
    ticketsViewed INTEGER,
    ticketsAddedToCart INTEGER,
    ticketsPurchased INTEGER,
    paymentMethod TEXT,
    discountCode TEXT,
    currency TEXT,
    totalAmount REAL,
    region TEXT,
    appVersion TEXT,
    osVersion TEXT,
    browser TEXT,
    referralSource TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATE
);

INSERT INTO digital_ticketing_sessions (sessionToken,userId,deviceId,ipAddress,startTime,endTime,ticketsViewed,ticketsAddedToCart,ticketsPurchased,paymentMethod,discountCode,currency,totalAmount,region,appVersion,osVersion,browser,referralSource,status,notes,createdAt) VALUES ('sessA1B2C3',201,'dev123','192.168.10.5','2025-03-01T10:15:00','2025-03-01T10:20:30',5,2,1,'CreditCard','SPRING20','USD',150.00,'EMEA','1.4.2','iOS14','Safari','Email','Completed','First purchase', '2025-03-01');
INSERT INTO digital_ticketing_sessions (sessionToken,userId,deviceId,ipAddress,startTime,endTime,ticketsViewed,ticketsAddedToCart,ticketsPurchased,paymentMethod,discountCode,currency,totalAmount,region,appVersion,osVersion,browser,referralSource,status,notes,createdAt) VALUES ('sessD4E5F6',202,'dev456','10.0.0.8','2025-03-02T14:05:12','2025-03-02T14:07:45',3,1,0,'PayPal','', 'EUR',0.00,'APAC','2.0.0','Android11','Chrome','SocialMedia','Abandoned','Cart left without purchase','2025-03-02');
INSERT INTO digital_ticketing_sessions (sessionToken,userId,deviceId,ipAddress,startTime,endTime,ticketsViewed,ticketsAddedToCart,ticketsPurchased,paymentMethod,discountCode,currency,totalAmount,region,appVersion,osVersion,browser,referralSource,status,notes,createdAt) VALUES ('sessG7H8I9',203,'dev789','172.16.5.12','2025-03-03T09:30:00','2025-03-03T09:35:20',8,4,2,'DebitCard','EARLYBIRD','GBP',300.00,'NA','3.1.1','iOS15','Firefox','Affiliate','Completed','Repeat customer','2025-03-03');

-- Spectator loyalty program definitions
CREATE TABLE spectator_loyalty_programs (
    loyaltyId INTEGER PRIMARY KEY AUTOINCREMENT,
    programName TEXT,
    launchDate DATE,
    tierBronzePoints INTEGER,
    tierSilverPoints INTEGER,
    tierGoldPoints INTEGER,
    tierPlatinumPoints INTEGER,
    expirationDays INTEGER,
    enrollmentFee REAL,
    benefitsDescription TEXT,
    partnerBrands TEXT,
    communicationChannel TEXT,
    rewardRedemptionRate REAL,
    active INTEGER,
    createdBy TEXT,
    lastUpdated DATE,
    notes TEXT,
    logoUrl TEXT,
    termsUrl TEXT,
    targetDemographic TEXT,
    enrollmentCap INTEGER,
    status TEXT
);

INSERT INTO spectator_loyalty_programs (programName,launchDate,tierBronzePoints,tierSilverPoints,tierGoldPoints,tierPlatinumPoints,expirationDays,enrollmentFee,benefitsDescription,partnerBrands,communicationChannel,rewardRedemptionRate,active,createdBy,lastUpdated,notes,logoUrl,termsUrl,targetDemographic,enrollmentCap,status) VALUES ('GrandPrix Fans','2023-01-15',500,1500,3000,6000,365,9.99','Free parking, exclusive merch','BrandA,BrandB','Email',0.85,1,'Admin','2025-02-01','Seasonal promotions','http://example.com/logo.png','http://example.com/terms.pdf','Adults 18-45',NULL,'Active');
INSERT INTO spectator_loyalty_programs (programName,launchDate,tierBronzePoints,tierSilverPoints,tierGoldPoints,tierPlatinumPoints,expirationDays,enrollmentFee,benefitsDescription,partnerBrands,communicationChannel,rewardRedemptionRate,active,createdBy,lastUpdated,notes,logoUrl,termsUrl,targetDemographic,enrollmentCap,status) VALUES ('Circuit Club','2022-06-30',300,1000,2500,5000,730,0.00','VIP lounge access, meet‑and‑greet','BrandC','SMS',0.90,1,'System','2025-01-20','Limited slots for VIP events','http://example.com/circuitlogo.png','http://example.com/circuitterms.pdf','All ages',5000,'Active');
INSERT INTO spectator_loyalty_programs (programName,launchDate,tierBronzePoints,tierSilverPoints,tierGoldPoints,tierPlatinumPoints,expirationDays,enrollmentFee,benefitsDescription,partnerBrands,communicationChannel,rewardRedemptionRate,active,createdBy,lastUpdated,notes,logoUrl,termsUrl,targetDemographic,enrollmentCap,status) VALUES ('Speedster Rewards','2024-03-10',200,800,2000,4000,180,4.99','Discounted merchandise, early ticket access','BrandD,BrandE','PushNotification',0.80,1,'Marketing','2025-02-15','Beta rollout phase','http://example.com/speedlogo.png','http://example.com/speedterms.pdf','Teens 13-19',NULL,'Active');

-- Race virtual reality usage statistics
CREATE TABLE race_virtual_reality_stats (
    vrStatId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    sessionCount INTEGER,
    avgSessionDuration REAL,
    peakConcurrentUsers INTEGER,
    deviceTypes TEXT,
    headsetModels TEXT,
    softwareVersion TEXT,
    vrSupportEnabled INTEGER,
    latencyMs REAL,
    frameRateHz REAL,
    issuesReported INTEGER,
    avgEngagementScore REAL,
    uniqueVisitors INTEGER,
    geographicRegions TEXT,
    feedbackScore REAL,
    dataCollectedDate DATE,
    notes TEXT,
    createdBy TEXT,
    lastModified DATE,
    vrContentUrl TEXT,
    sponsorTag TEXT
);

INSERT INTO race_virtual_reality_stats (raceId,sessionCount,avgSessionDuration,peakConcurrentUsers,deviceTypes,headsetModels,softwareVersion,vrSupportEnabled,latencyMs,frameRateHz,issuesReported,avgEngagementScore,uniqueVisitors,geographicRegions,feedbackScore,dataCollectedDate,notes,createdBy,lastModified,vrContentUrl,sponsorTag) VALUES (201,1200,15.4,250,'PC,Mobile','OculusQuest2,HTCVive','v5.2',1,30.5,90.0,3,8.7,950,'EU,NA',4.5,'2025-02-28','High user satisfaction','DataTeam','2025-03-01','http://vrcontent.example.com/track201','TechSponsor');
INSERT INTO race_virtual_reality_stats (raceId,sessionCount,avgSessionDuration,peakConcurrentUsers,deviceTypes,headsetModels,softwareVersion,vrSupportEnabled,latencyMs,frameRateHz,issuesReported,avgEngagementScore,uniqueVisitors,geographicRegions,feedbackScore,dataCollectedDate,notes,createdBy,lastModified,vrContentUrl,sponsorTag) VALUES (202,800,12.1,180,'PC','ValveIndex','v5.1',1,28.0,85.0,1,7.9,720,'APAC,EU',4.2,'2025-02-27','Minor latency spikes','VRTeam','2025-03-01','http://vrcontent.example.com/track202','AutoSponsor');
INSERT INTO race_virtual_reality_stats (raceId,sessionCount,avgSessionDuration,peakConcurrentUsers,deviceTypes,headsetModels,softwareVersion,vrSupportEnabled,latencyMs,frameRateHz,issuesReported,avgEngagementScore,uniqueVisitors,geographicRegions,feedbackScore,dataCollectedDate,notes,createdBy,lastModified,vrContentUrl,sponsorTag) VALUES (203,1500,18.3,320,'Mobile','MetaQuest3','v5.3',1,25.7,95.0,5,9.1,1300,'NA,SA',4.8,'2025-02-26','Excellent feedback on immersion','VRAnalytics','2025-03-01','http://vrcontent.example.com/track203','EnergySponsor');

-- Team logistics vehicle registry
CREATE TABLE team_logistics_vehicles (
    vehicleId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    vehicleType TEXT,
    make TEXT,
    model TEXT,
    year INTEGER,
    licensePlate TEXT,
    vin TEXT,
    capacityKg INTEGER,
    fuelType TEXT,
    mileage INTEGER,
    maintenanceDue DATE,
    lastServiceDate DATE,
    assignedDriverId INTEGER,
    gpsTrackerId TEXT,
    insurancePolicy TEXT,
    registrationExpiry DATE,
    status TEXT,
    notes TEXT,
    lastUpdated DATE,
    depreciationValue REAL,
    purchasePrice REAL
);

INSERT INTO team_logistics_vehicles (teamId,vehicleType,make,model,year,licensePlate,vin,capacityKg,fuelType,mileage,maintenanceDue,lastServiceDate,assignedDriverId,gpsTrackerId,insurancePolicy,registrationExpiry,status,notes,lastUpdated,depreciationValue,purchasePrice) VALUES (1,'Truck','Volvo','FH16',2022,'ABC123','1HGCM82633A004352',15000,'Diesel',20000,'2025-12-01','2025-06-15',45,'GPS001','POL123456','2025-05-30','Active','Used for equipment transport','2025-02-20',12000.00,85000.00);
INSERT INTO team_logistics_vehicles (teamId,vehicleType,make,model,year,licensePlate,vin,capacityKg,fuelType,mileage,maintenanceDue,lastServiceDate,assignedDriverId,gpsTrackerId,insurancePolicy,registrationExpiry,status,notes,lastUpdated,depreciationValue,purchasePrice) VALUES (2,'Van','Mercedes','Sprinter',2021,'XYZ789','2FTRX18W1XCA1234',2500,'Petrol',15000,'2025-11-15','2025-05-10',78,'GPS002','POL789012','2025-04-20','InService','Crew shuttle','2025-02-18',8000.00,35000.00);
INSERT INTO team_logistics_vehicles (teamId,vehicleType,make,model,year,licensePlate,vin,capacityKg,fuelType,mileage,maintenanceDue,lastServiceDate,assignedDriverId,gpsTrackerId,insurancePolicy,registrationExpiry,status,notes,lastUpdated,depreciationValue,purchasePrice) VALUES (3,'Car','Audi','A4',2023,'LMN456','3FAHP0HA2AR12345',500,'Hybrid',8000,'2025-10-01','2025-04-22',102,'GPS003','POL345678','2025-03-31','Active','Team manager transport','2025-02-22',5000.00,45000.00);

-- Environmental air quality monitoring stations
CREATE TABLE environmental_air_quality_stations (
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    stationName TEXT,
    location TEXT,
    latitude REAL,
    longitude REAL,
    elevation INTEGER,
    installationDate DATE,
    sensorType TEXT,
    pm25Limit REAL,
    pm10Limit REAL,
    no2Limit REAL,
    so2Limit REAL,
    coLimit REAL,
    o3Limit REAL,
    calibrationDate DATE,
    maintenanceCycleDays INTEGER,
    dataTransmissionProtocol TEXT,
    networkProvider TEXT,
    operationalStatus TEXT,
    lastDataTimestamp DATE,
    avgPm25 REAL,
    avgPm10 REAL
);

INSERT INTO environmental_air_quality_stations (stationName,location,latitude,longitude,elevation,installationDate,sensorType,pm25Limit,pm10Limit,no2Limit,so2Limit,coLimit,o3Limit,calibrationDate,maintenanceCycleDays,dataTransmissionProtocol,networkProvider,operationalStatus,lastDataTimestamp,avgPm25,avgPm10) VALUES ('StationAlpha','Circuit A','45.1234','-93.4567',250,'2022-04-15','Optical',35.0,80.0,40.0,20.0,10.0,60.0','2025-01-10',180,'MQTT','ProviderX','Online','2025-02-28',12.5,30.2);
INSERT INTO environmental_air_quality_stations (stationName,location,latitude,longitude,elevation,installationDate,sensorType,pm25Limit,pm10Limit,no2Limit,so2Limit,coLimit,o3Limit,calibrationDate,maintenanceCycleDays,dataTransmissionProtocol,networkProvider,operationalStatus,lastDataTimestamp,avgPm25,avgPm10) VALUES ('StationBeta','Circuit B','46.5678','-94.1234',300,'2021-09-05','Electrochemical',25.0,70.0,35.0,15.0,8.0,55.0','2025-02-12',200,'HTTP','ProviderY','Online','2025-02-28',9.8,22.4);
INSERT INTO environmental_air_quality_stations (stationName,location,latitude,longitude,elevation,installationDate,sensorType,pm25Limit,pm10Limit,no2Limit,so2Limit,coLimit,o3Limit,calibrationDate,maintenanceCycleDays,dataTransmissionProtocol,networkProvider,operationalStatus,lastDataTimestamp,avgPm25,avgPm10) VALUES ('StationGamma','Circuit C','44.9876','-92.3456',120,'2023-01-20','Laser',30.0,75.0,38.0,18.0,9.0,58.0','2025-03-05',150,'CoAP','ProviderZ','Online','2025-02-28',14.2,33.1);

-- Sponsor influence network mapping
CREATE TABLE sponsor_influence_network (
    networkId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    primaryPartnerId INTEGER,
    influenceScore REAL,
    partnershipStart DATE,
    partnershipEnd DATE,
    jointCampaigns INTEGER,
    sharedEvents INTEGER,
    mediaReachMillions REAL,
    brandAlignmentScore REAL,
    coBrandingLevel TEXT,
    contractValue REAL,
    renewalLikelihood REAL,
    notes TEXT,
    createdBy TEXT,
    createdDate DATE,
    lastModified DATE,
    active INTEGER,
    strategicObjectives TEXT,
    governanceModel TEXT,
    riskAssessmentScore REAL,
    complianceStatus TEXT
);

INSERT INTO sponsor_influence_network (sponsorId,primaryPartnerId,influenceScore,partnershipStart,partnershipEnd,jointCampaigns,sharedEvents,mediaReachMillions,brandAlignmentScore,coBrandingLevel,contractValue,renewalLikelihood,notes,createdBy,createdDate,lastModified,active,strategicObjectives,governanceModel,riskAssessmentScore,complianceStatus) VALUES (301,45,88.5,'2022-01-01','2025-12-31',12,8,150.0,92.0,'High',5000000,0.78,'Key partner for global exposure','AnalystTeam','2025-02-10','2025-02-20',1,'Increase market share in Europe','JointCommittee',3.2,'Compliant');
INSERT INTO sponsor_influence_network (sponsorId,primaryPartnerId,influenceScore,partnershipStart,partnershipEnd,jointCampaigns,sharedEvents,mediaReachMillions,brandAlignmentScore,coBrandingLevel,contractValue,renewalLikelihood,notes,createdBy,createdDate,lastModified,active,strategicObjectives,governanceModel,riskAssessmentScore,complianceStatus) VALUES (302,78,74.3,'2021-06-15','2024-06-14',9,5,95.0,85.5,'Medium',3200000,0.65,'Focus on sustainability initiatives','StrategyDept','2025-01-30','2025-02-18',1,'Enhance brand eco‑image','SteeringBoard',2.8,'Compliant');
INSERT INTO sponsor_influence_network (sponsorId,primaryPartnerId,influenceScore,partnershipStart,partnershipEnd,jointCampaigns,sharedEvents,mediaReachMillions,brandAlignmentScore,coBrandingLevel,contractValue,renewalLikelihood,notes,createdBy,createdDate,lastModified,active,strategicObjectives,governanceModel,riskAssessmentScore,complianceStatus) VALUES (303,12,65.0,'2023-03-01','2026-02-28',7,3,80.0,78.0,'Low',2100000,0.55,'Emerging market focus','BusinessUnit','2025-02-05','2025-02-19',1,'Enter new Asian markets','AdvisoryGroup',3.0,'Pending');

-- Media content translation project tracking
CREATE TABLE media_content_translation_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    contentId INTEGER,
    sourceLanguage TEXT,
    targetLanguage TEXT,
    translatorAgency TEXT,
    startDate DATE,
    endDate DATE,
    wordCount INTEGER,
    costPerWord REAL,
    totalCost REAL,
    qualityScore REAL,
    revisionRounds INTEGER,
    status TEXT,
    deliveryFormat TEXT,
    platform TEXT,
    notes TEXT,
    createdBy TEXT,
    createdDate DATE,
    lastUpdated DATE,
    clientApproval INTEGER,
    confidentialityLevel TEXT,
    fileLocation TEXT,
    projectManager TEXT
);

INSERT INTO media_content_translation_projects (contentId,sourceLanguage,targetLanguage,translatorAgency,startDate,endDate,wordCount,costPerWord,totalCost,qualityScore,revisionRounds,status,deliveryFormat,platform,notes,createdBy,createdDate,lastUpdated,clientApproval,confidentialityLevel,fileLocation,projectManager) VALUES (401,'EN','FR','TransGlobal','2025-01-10','2025-01-20',15000,0.08,1200.00,92.5,2,'Completed','SRT','Web','High priority for live broadcast','Coordinator','2025-01-05','2025-01-21',1,'High','/files/project401.srt','LauraSmith');
INSERT INTO media_content_translation_projects (contentId,sourceLanguage,targetLanguage,translatorAgency,startDate,endDate,wordCount,costPerWord,totalCost,qualityScore,revisionRounds,status,deliveryFormat,platform,notes,createdBy,createdDate,lastUpdated,clientApproval,confidentialityLevel,fileLocation,projectManager) VALUES (402,'ES','DE','LinguaPlus','2025-02-01','2025-02-15',22000,0.07,1540.00,89.0,3,'InProgress','VTT','Mobile','Requires technical terminology check','Coordinator','2025-01-28','2025-02-02',0,'Medium','/files/project402.vtt','MarkLee');
INSERT INTO media_content_translation_projects (contentId,sourceLanguage,targetLanguage,translatorAgency,startDate,endDate,wordCount,costPerWord,totalCost,qualityScore,revisionRounds,status,deliveryFormat,platform,notes,createdBy,createdDate,lastUpdated,clientApproval,confidentialityLevel,fileLocation,projectManager) VALUES (403,'IT','JA','GlobalLang','2025-03-05','2025-03-20',18000,0.09,1620.00,94.0,1,'Pending','XML','TV','Awaiting source material','Coordinator','2025-02-25','2025-03-01',0,'Low','/files/project403.xml','SofiaGarcia');

-- Circuit heritage conservation fund details
CREATE TABLE circuit_heritage_conservation_funds (
    fundId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    fundName TEXT,
    establishmentDate DATE,
    totalCapital REAL,
    annualBudget REAL,
    allocatedProjects INTEGER,
    spentToDate REAL,
    remainingBalance REAL,
    governingBody TEXT,
    donorOrganizations TEXT,
    fundPurpose TEXT,
    eligibilityCriteria TEXT,
    applicationProcedure TEXT,
    reportingFrequency TEXT,
    auditStatus TEXT,
    lastAuditDate DATE,
    contactPerson TEXT,
    contactEmail TEXT,
    notes TEXT,
    active INTEGER,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO circuit_heritage_conservation_funds (circuitId,fundName,establishmentDate,totalCapital,annualBudget,allocatedProjects,spentToDate,remainingBalance,governingBody,donorOrganizations,fundPurpose,eligibilityCriteria,applicationProcedure,reportingFrequency,auditStatus,lastAuditDate,contactPerson,contactEmail,notes,active,createdAt,updatedAt) VALUES (1,'HistoricCircuitFund','2018-06-01',2000000.00,250000.00,15,850000.00,1150000.00,'HeritageBoard','AutoManufacturerA,TechPartnerB','Preserve historic structures','Registered teams','Online portal','Quarterly','Passed','2024-12-15','Anna Novak','anna.novak@example.com','Fund exceeds targets','1','2018-06-01','2025-02-20');
INSERT INTO circuit_heritage_conservation_funds (circuitId,fundName,establishmentDate,totalCapital,annualBudget,allocatedProjects,spentToDate,remainingBalance,governingBody,donorOrganizations,fundPurpose,eligibilityCriteria,applicationProcedure,reportingFrequency,auditStatus,lastAuditDate,contactPerson,contactEmail,notes,active,createdAt,updatedAt) VALUES (2,'LegacyPreservationTrust','2020-03-15',1500000.00,180000.00,10,500000.00,1000000.00,'LegacyCouncil','EnergyCorp,MediaGroup','Restore vintage pit lanes','Heritage societies','Paper submission','Semiannual','Pending','2024-11-30','Luis Martinez','luis.martinez@example.com','Awaiting additional donor commitments','1','2020-03-15','2025-02-18');
INSERT INTO circuit_heritage_conservation_funds (circuitId,fundName,establishmentDate,totalCapital,annualBudget,allocatedProjects,spentToDate,remainingBalance,governingBody,donorOrganizations,fundPurpose,eligibilityCriteria,applicationProcedure,reportingFrequency,auditStatus,lastAuditDate,contactPerson,contactEmail,notes,active,createdAt,updatedAt) VALUES (3,'TrackHeritageEndowment','2019-11-20',1200000.00,200000.00,12,600000.00,600000.00,'TrackHeritageCommittee','FinanceGroupX','Conserve historic grandstands','Local municipalities','Digital application','Annual','Passed','2025-01-10','Sofia Ivanova','sofia.ivanova@example.com','Planning new exhibition space','1','2019-11-20','2025-02-22');