-- Table storing audits of track technology upgrades and maintenance
CREATE TABLE track_technology_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    auditDate DATE,
    auditorName TEXT,
    technologyComponent TEXT,
    componentSerial TEXT,
    firmwareVersion TEXT,
    lastServiceDate DATE,
    serviceProvider TEXT,
    serviceCost REAL,
    complianceStatus TEXT,
    remarks TEXT,
    inspectionScore INTEGER,
    calibrationDate DATE,
    calibratedBy TEXT,
    safetyRating INTEGER,
    upgradeNeeded BOOLEAN,
    recommendedAction TEXT,
    budgetAllocated REAL,
    budgetSpent REAL,
    approvalStatus TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO track_technology_audits (circuitId,auditDate,auditorName,technologyComponent,componentSerial,firmwareVersion,lastServiceDate,serviceProvider,serviceCost,complianceStatus,remarks,inspectionScore,calibrationDate,calibratedBy,safetyRating,upgradeNeeded,recommendedAction,budgetAllocated,budgetSpent,approvalStatus,createdAt,updatedAt) VALUES (1,'2024-03-15','Alice Smith','TimingSystem','TS12345','v2.3','2024-01-10','TechServCo',1500.00,'Compliant','All good',95,'2024-03-10','Bob Jones',5,0,'None',2000.00,1500.00,'Approved','2024-03-15 08:00:00','2024-03-15 08:00:00');
INSERT INTO track_technology_audits (circuitId,auditDate,auditorName,technologyComponent,componentSerial,firmwareVersion,lastServiceDate,serviceProvider,serviceCost,complianceStatus,remarks,inspectionScore,calibrationDate,calibratedBy,safetyRating,upgradeNeeded,recommendedAction,budgetAllocated,budgetSpent,approvalStatus,createdAt,updatedAt) VALUES (2,'2024-04-01','John Doe','LapCounter','LC9876','v1.9','2023-12-20','LapTech',800.00,'NonCompliant','Firmware outdated',78,'2024-03-28','Sara Lee',3,1,'Update firmware',1200.00,800.00,'Pending','2024-04-01 09:30:00','2024-04-01 09:30:00');
INSERT INTO track_technology_audits (circuitId,auditDate,auditorName,technologyComponent,componentSerial,firmwareVersion,lastServiceDate,serviceProvider,serviceCost,complianceStatus,remarks,inspectionScore,calibrationDate,calibratedBy,safetyRating,upgradeNeeded,recommendedAction,budgetAllocated,budgetSpent,approvalStatus,createdAt,updatedAt) VALUES (3,'2024-05-20','Emily Clark','WeatherStation','WS4567','v3.2','2024-04-15','WeatherPro',500.00,'Compliant','Accurate readings',88,'2024-05-18','Mike Ross',4,0,'None',700.00,500.00,'Approved','2024-05-20 07:45:00','2024-05-20 07:45:00');

-- Table storing historical media assets related to driver careers
CREATE TABLE driver_legacy_media (
    mediaId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    mediaType TEXT,
    title TEXT,
    description TEXT,
    filePath TEXT,
    fileSize INTEGER,
    format TEXT,
    resolution TEXT,
    durationSeconds INTEGER,
    uploadDate DATE,
    uploaderName TEXT,
    rightsHolder TEXT,
    usagePermission TEXT,
    viewCount INTEGER,
    likeCount INTEGER,
    commentCount INTEGER,
    tagList TEXT,
    language TEXT,
    thumbnailPath TEXT,
    archived BOOLEAN,
    archivalDate DATE,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO driver_legacy_media (driverId,mediaType,title,description,filePath,fileSize,format,resolution,durationSeconds,uploadDate,uploaderName,rightsHolder,usagePermission,viewCount,likeCount,commentCount,tagList,language,thumbnailPath,archived,archivalDate,createdAt,updatedAt) VALUES (10,'Video','Championship Win 2020','Winning lap at Grand Prix','/media/driver10_win2020.mp4',25000000,'mp4','1920x1080',180,'2020-11-15','MediaTeam','F1Org','Public',12000,3500,210,'championship,win,2020','English','/thumbs/driver10_win2020.jpg',0,NULL,'2020-11-16 10:00:00','2020-11-16 10:00:00');
INSERT INTO driver_legacy_media (driverId,mediaType,title,description,filePath,fileSize,format,resolution,durationSeconds,uploadDate,uploaderName,rightsHolder,usagePermission,viewCount,likeCount,commentCount,tagList,language,thumbnailPath,archived,archivalDate,createdAt,updatedAt) VALUES (12,'Image','Podium 2018','Podium ceremony photo','/media/driver12_podium2018.jpg',3500000,'jpg','4000x3000',NULL,'2018-12-02','PhotoDept','F1Org','Public',8000,1500,80,'podium,2018','English','/thumbs/driver12_podium2018_thumb.jpg',0,NULL,'2018-12-03 14:20:00','2018-12-03 14:20:00');
INSERT INTO driver_legacy_media (driverId,mediaType,title,description,filePath,fileSize,format,resolution,durationSeconds,uploadDate,uploaderName,rightsHolder,usagePermission,viewCount,likeCount,commentCount,tagList,language,thumbnailPath,archived,archivalDate,createdAt,updatedAt) VALUES (15,'Audio','Interview 2022','Post-race interview audio','/media/driver15_interview2022.mp3',9500000,'mp3',NULL,3600,'2022-07-10','AudioTeam','F1Org','Public',5000,1200,95,'interview,2022','English','/thumbs/driver15_interview2022.jpg',0,NULL,'2022-07-11 09:15:00','2022-07-11 09:15:00');

-- Table storing sustainability metrics for each race event
CREATE TABLE race_sustainability_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    carbonEmissionsKg REAL,
    wasteGeneratedKg REAL,
    recyclingRate REAL,
    renewableEnergyPercent REAL,
    waterUsageLiters REAL,
    noiseLevelDb REAL,
    airQualityIndex INTEGER,
    greenCertification TEXT,
    sustainabilityScore INTEGER,
    reportDate DATE,
    auditorName TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    verified BOOLEAN,
    verificationDate DATE,
    verificationAgency TEXT,
    totalEnergyConsumptionMwh REAL,
    averageTemperatureC REAL
);

INSERT INTO race_sustainability_metrics (raceId,carbonEmissionsKg,wasteGeneratedKg,recyclingRate,renewableEnergyPercent,waterUsageLiters,noiseLevelDb,airQualityIndex,greenCertification,sustainabilityScore,reportDate,auditorName,notes,createdAt,updatedAt,verified,verificationDate,verificationAgency,totalEnergyConsumptionMwh,averageTemperatureC) VALUES (101,35000.5,1200.0,0.78,45.0,250000.0,85.0,42,'ISO14001',92,'2024-06-01','Greta Green','All targets met', '2024-06-02 08:00:00','2024-06-02 08:00:00',1,'2024-06-03','EcoAudit Ltd',1800.0,22.5);
INSERT INTO race_sustainability_metrics (raceId,carbonEmissionsKg,wasteGeneratedKg,recyclingRate,renewableEnergyPercent,waterUsageLiters,noiseLevelDb,airQualityIndex,greenCertification,sustainabilityScore,reportDate,auditorName,notes,createdAt,updatedAt,verified,verificationDate,verificationAgency,totalEnergyConsumptionMwh,averageTemperatureC) VALUES (102,42000.0,1500.0,0.65,38.0,300000.0,90.0,48,'ISO14001',84,'2024-07-15','Laura Leaf','Improvement plan required', '2024-07-16 09:30:00','2024-07-16 09:30:00',0,NULL,NULL,2100.0,24.0);
INSERT INTO race_sustainability_metrics (raceId,carbonEmissionsKg,wasteGeneratedKg,recyclingRate,renewableEnergyPercent,waterUsageLiters,noiseLevelDb,airQualityIndex,greenCertification,sustainabilityScore,reportDate,auditorName,notes,createdAt,updatedAt,verified,verificationDate,verificationAgency,totalEnergyConsumptionMwh,averageTemperatureC) VALUES (103,31000.2,1100.5,0.82,50.0,220000.0,80.0,39,'ISO14001',95,'2024-08-10','Sam Solar','Excellent performance', '2024-08-11 07:45:00','2024-08-11 07:45:00',1,'2024-08-12','GreenCheck Inc',1700.0,20.0);

-- Table storing emissions data for circuit transport infrastructure
CREATE TABLE circuit_transport_emissions (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    vehicleType TEXT,
    emissionKgCO2 REAL,
    fuelConsumedLiters REAL,
    distanceKm REAL,
    tripDate DATE,
    operatorName TEXT,
    routeDescription TEXT,
    averageSpeedKmh REAL,
    peakEmissionKgCO2 REAL,
    idleTimeMinutes INTEGER,
    loadFactor REAL,
    cargoWeightKg REAL,
    createdAt DATETIME,
    updatedAt DATETIME,
    complianceStatus TEXT,
    notes TEXT,
    verificationDate DATE,
    verifierName TEXT,
    emissionCategory TEXT
);

INSERT INTO circuit_transport_emissions (circuitId,vehicleType,emissionKgCO2,fuelConsumedLiters,distanceKm,tripDate,operatorName,routeDescription,averageSpeedKmh,peakEmissionKgCO2,idleTimeMinutes,loadFactor,cargoWeightKg,createdAt,updatedAt,complianceStatus,notes,verificationDate,verifierName,emissionCategory) VALUES (1,'Truck','1500.5','200.0','250','2024-05-20','TransLogistics','Main gate to pit lane','40','55','30','0.85','5000','2024-05-21 10:00:00','2024-05-21 10:00:00','Compliant','Operational', '2024-05-22','Ana Green','Transport');
INSERT INTO circuit_transport_emissions (circuitId,vehicleType,emissionKgCO2,fuelConsumedLiters,distanceKm,tripDate,operatorName,routeDescription,averageSpeedKmh,peakEmissionKgCO2,idleTimeMinutes,loadFactor,cargoWeightKg,createdAt,updatedAt,complianceStatus,notes,verificationDate,verifierName,emissionCategory) VALUES (2,'ElectricVan','0','0','120','2024-06-05','EcoMove','Garage to media centre','30','0','10','1.0','0','2024-06-06 09:30:00','2024-06-06 09:30:00','Compliant','Zero emission vehicle', '2024-06-07','Bob Blue','Transport');
INSERT INTO circuit_transport_emissions (circuitId,vehicleType,emissionKgCO2,fuelConsumedLiters,distanceKm,tripDate,operatorName,routeDescription,averageSpeedKmh,peakEmissionKgCO2,idleTimeMinutes,loadFactor,cargoWeightKg,createdAt,updatedAt,complianceStatus,notes,verificationDate,verifierName,emissionCategory) VALUES (3,'ShuttleBus','300.0','45.0','80','2024-07-12','CityTransit','Parking lot to hospitality suite','35','45','15','0.75','2000','2024-07-13 08:45:00','2024-07-13 08:45:00','NonCompliant','Requires engine tune-up','2024-07-14','Clara White','Transport');

-- Table storing resolutions of officials' conflict of interest cases
CREATE TABLE officials_conflict_resolutions (
    caseId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId INTEGER,
    incidentDate DATE,
    conflictType TEXT,
    description TEXT,
    investigationStart DATE,
    investigationEnd DATE,
    findings TEXT,
    resolution TEXT,
    sanction TEXT,
    sanctionEffectiveDate DATE,
    appealed BOOLEAN,
    appealOutcome TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    reportedBy TEXT,
    severityLevel INTEGER,
    policyReference TEXT,
    complianceStatus TEXT
);

INSERT INTO officials_conflict_resolutions (officialId,incidentDate,conflictType,description,investigationStart,investigationEnd,findings,resolution,sanction,sanctionEffectiveDate,appealed,appealOutcome,notes,createdAt,updatedAt,reportedBy,severityLevel,policyReference,complianceStatus) VALUES (201,'2023-11-02','TeamRelation','Official had undisclosed consulting with team','2023-11-05','2023-11-20','Conflict of interest confirmed','Removed from race duties','30 day suspension','2023-12-01',0,NULL,'Education session required','2023-11-21 09:00:00','2023-11-21 09:00:00','ComplianceDept',3,'Policy-45','NonCompliant');
INSERT INTO officials_conflict_resolutions (officialId,incidentDate,conflictType,description,investigationStart,investigationEnd,findings,resolution,sanction,sanctionEffectiveDate,appealed,appealOutcome,notes,createdAt,updatedAt,reportedBy,severityLevel,policyReference,complianceStatus) VALUES (202,'2024-02-10','FamilyTie','Official's sibling works for a participating team','2024-02-12','2024-02-25','Potential bias identified','Reassignment to non-competing events','None','NULL',0,NULL,'Monitor future assignments','2024-02-26 10:30:00','2024-02-26 10:30:00','HRDept',2,'Policy-12','Compliant');
INSERT INTO officials_conflict_resolutions (officialId,incidentDate,conflictType,description,investigationStart,investigationEnd,findings,resolution,sanction,sanctionEffectiveDate,appealed,appealOutcome,notes,createdAt,updatedAt,reportedBy,severityLevel,policyReference,complianceStatus) VALUES (203,'2024-05-18','Financial','Official received gifts exceeding limits','2024-05-20','2024-06-05','Violation confirmed','Mandatory ethics training','Fine 5000','2024-06-10',1,'Upheld','Fine paid','2024-06-06 14:15:00','2024-06-06 14:15:00','LegalDept',4,'Policy-78','NonCompliant');

-- Table storing virtual reward items for fan experience programs
CREATE TABLE fan_experience_virtual_rewards (
    rewardId INTEGER PRIMARY KEY AUTOINCREMENT,
    rewardName TEXT,
    rewardCategory TEXT,
    description TEXT,
    pointsRequired INTEGER,
    acquisitionMethod TEXT,
    validityStart DATE,
    validityEnd DATE,
    rarityLevel INTEGER,
    imagePath TEXT,
    isRedeemable BOOLEAN,
    redemptionLimit INTEGER,
    digitalAssetId TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    platform TEXT,
    associatedEventId INTEGER,
    active BOOLEAN,
    promotionalCode TEXT,
    termsAndConditions TEXT
);

INSERT INTO fan_experience_virtual_rewards (rewardName,rewardCategory,description,pointsRequired,acquisitionMethod,validityStart,validityEnd,rarityLevel,imagePath,isRedeemable,redemptionLimit,digitalAssetId,createdAt,updatedAt,platform,associatedEventId,active,promotionalCode,termsAndConditions) VALUES ('Virtual Pit Crew Badge','Badge','Earned for attending 5 races','500','Attendance','2024-01-01','2024-12-31',2,'/images/badge_pitcrew.png',1,1,'VRB001','2024-01-02 08:00:00','2024-01-02 08:00:00','MobileApp',101,1,'PIT2024','NonTransferable');
INSERT INTO fan_experience_virtual_rewards (rewardName,rewardCategory,description,pointsRequired,acquisitionMethod,validityStart,validityEnd,rarityLevel,imagePath,isRedeemable,redemptionLimit,digitalAssetId,createdAt,updatedAt,platform,associatedEventId,active,promotionalCode,termsAndConditions) VALUES ('Grand Prix VR Tour','Experience','Virtual reality tour of the circuit','1500','Purchase','2024-03-01','2025-03-01',4,'/images/vr_tour.png',1,1,'VRG002','2024-03-02 09:30:00','2024-03-02 09:30:00','VRPlatform',NULL,1,'VRTOUR2024','One time use');
INSERT INTO fan_experience_virtual_rewards (rewardName,rewardCategory,description,pointsRequired,acquisitionMethod,validityStart,validityEnd,rarityLevel,imagePath,isRedeemable,redemptionLimit,digitalAssetId,createdAt,updatedAt,platform,associatedEventId,active,promotionalCode,termsAndConditions) VALUES ('Speedster Avatar Skin','Avatar','Custom avatar skin for the fan portal','800','Challenge','2024-05-01','2024-11-30',3,'/images/avatar_speedster.png',1,2,'AVA003','2024-05-02 12:00:00','2024-05-02 12:00:00','WebPortal',102,1,'AVATAR2024','Limited to two per fan');

-- Table storing collaboration data for team internal platforms
CREATE TABLE team_collaboration_platform (
    collaborationId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    projectCode TEXT,
    channelName TEXT,
    purpose TEXT,
    createdBy TEXT,
    createdAt DATETIME,
    lastMessageAt DATETIME,
    memberCount INTEGER,
    active BOOLEAN,
    accessLevel TEXT,
    encryptionKey TEXT,
    retentionPolicyDays INTEGER,
    notificationSetting TEXT,
    integrationList TEXT,
    archiveLocation TEXT,
    complianceStatus TEXT,
    notes TEXT,
    externalLink TEXT,
    isModerated BOOLEAN,
    moderationPolicy TEXT
);

INSERT INTO team_collaboration_platform (teamId,projectCode,channelName,purpose,createdBy,createdAt,lastMessageAt,memberCount,active,accessLevel,encryptionKey,retentionPolicyDays,notificationSetting,integrationList,archiveLocation,complianceStatus,notes,externalLink,isModerated,moderationPolicy) VALUES (5,'PRJX01','strategy_discuss','Strategic planning sessions','Laura','2024-01-15 08:30:00','2024-06-10 14:20:00',12,1,'Private','ENCKEY123',365,'All','Slack,GitHub','/archives/strategy','Compliant','Weekly updates','https://intranet/strategy','1','StandardModeration');
INSERT INTO team_collaboration_platform (teamId,projectCode,channelName,purpose,createdBy,createdAt,lastMessageAt,memberCount,active,accessLevel,encryptionKey,retentionPolicyDays,notificationSetting,integrationList,archiveLocation,complianceStatus,notes,externalLink,isModerated,moderationPolicy) VALUES (8,'ENG02','aero_analysis','Aerodynamics data exchange','Mark','2024-02-20 09:45:00','2024-06-12 10:05:00',9,1,'Restricted','ENCKEY456',180,'MentionsOnly','Confluence,Databricks','/archives/aero','Compliant','Data confidentiality','https://intranet/aero','1','StrictModeration');
INSERT INTO team_collaboration_platform (teamId,projectCode,channelName,purpose,createdBy,createdAt,lastMessageAt,memberCount,active,accessLevel,encryptionKey,retentionPolicyDays,notificationSetting,integrationList,archiveLocation,complianceStatus,notes,externalLink,isModerated,moderationPolicy) VALUES (3,'RAC03','race_ops','Live race operations coordination','Sonia','2024-03-10 07:00:00','2024-06-13 16:30:00',15,1,'Open','ENCKEY789',90,'All','Teams,TimingSystems','/archives/raceops','Compliant','Critical for real-time','https://intranet/raceops','1','StandardModeration');

-- Table storing signal quality metrics for broadcast streams
CREATE TABLE broadcast_signal_quality (
    signalId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    streamResolution TEXT,
    bitrateKbps INTEGER,
    latencyMs INTEGER,
    packetLossPercent REAL,
    jitterMs REAL,
    startTime DATETIME,
    endTime DATETIME,
    errorCode INTEGER,
    errorDescription TEXT,
    clientBufferSeconds REAL,
    serverLoadPercent REAL,
    networkProvider TEXT,
    region TEXT,
    qualityScore INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME,
    monitoringTool TEXT,
    alertTriggered BOOLEAN,
    alertSeverity TEXT
);

INSERT INTO broadcast_signal_quality (broadcastId,streamResolution,bitrateKbps,latencyMs,packetLossPercent,jitterMs,startTime,endTime,errorCode,errorDescription,clientBufferSeconds,serverLoadPercent,networkProvider,region,qualityScore,createdAt,updatedAt,monitoringTool,alertTriggered,alertSeverity) VALUES (301,'1920x1080',4500,120,0.02,5,'2024-06-01 14:00:00','2024-06-01 14:45:00',0,'None',2.5,68,'NetProviderA','Europe',95,'2024-06-01 14:00:05','2024-06-01 14:45:05','SignalMonitor',0,'Low');
INSERT INTO broadcast_signal_quality (broadcastId,streamResolution,bitrateKbps,latencyMs,packetLossPercent,jitterMs,startTime,endTime,errorCode,errorDescription,clientBufferSeconds,serverLoadPercent,networkProvider,region,qualityScore,createdAt,updatedAt,monitoringTool,alertTriggered,alertSeverity) VALUES (302,'1280x720',3000,250,0.15,12,'2024-06-02 16:00:00','2024-06-02 16:30:00',101,'BufferUnderrun',5.0,82,'NetProviderB','Asia',78,'2024-06-02 16:00:03','2024-06-02 16:30:03','SignalMonitor',1,'Medium');
INSERT INTO broadcast_signal_quality (broadcastId,streamResolution,bitrateKbps,latencyMs,packetLossPercent,jitterMs,startTime,endTime,errorCode,errorDescription,clientBufferSeconds,serverLoadPercent,networkProvider,region,qualityScore,createdAt,updatedAt,monitoringTool,alertTriggered,alertSeverity) VALUES (303,'3840x2160',8000,90,0.01,3,'2024-06-03 18:00:00','2024-06-03 18:45:00',0,'None',1.8,55,'NetProviderC','NorthAmerica',98,'2024-06-03 18:00:02','2024-06-03 18:45:02','SignalMonitor',0,'Low');

-- Table storing compliance records for vendors
CREATE TABLE vendor_compliance_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId INTEGER,
    contractId INTEGER,
    complianceArea TEXT,
    assessmentDate DATE,
    assessorName TEXT,
    score INTEGER,
    findings TEXT,
    correctiveAction TEXT,
    dueDate DATE,
    status TEXT,
    remarks TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditTrail TEXT,
    riskLevel TEXT,
    regulatoryReference TEXT,
    complianceTag TEXT,
    nextReviewDate DATE,
    reviewedBy TEXT
);

INSERT INTO vendor_compliance_records (vendorId,contractId,complianceArea,assessmentDate,assessorName,score,findings,correctiveAction,dueDate,status,remarks,createdAt,updatedAt,auditTrail,riskLevel,regulatoryReference,complianceTag,nextReviewDate,reviewedBy) VALUES (401,1001,'Safety','2024-04-15','Helen','85','Minor safety slips observed','Staff retraining','2024-05-15','Open','Follow up needed','2024-04-16 09:20:00','2024-04-16 09:20:00','AUDIT001','Medium','ISO45001','Safety','2025-04-15','Mike');
INSERT INTO vendor_compliance_records (vendorId,contractId,complianceArea,assessmentDate,assessorName,score,findings,correctiveAction,dueDate,status,remarks,createdAt,updatedAt,auditTrail,riskLevel,regulatoryReference,complianceTag,nextReviewDate,reviewedBy) VALUES (402,1002,'Environmental','2024-05-10','Dave','92','All emission limits met','Maintain current practices','2024-06-10','Closed','No issues','2024-05-11 10:45:00','2024-05-11 10:45:00','AUDIT002','Low','ISO14001','Env','2025-05-10','Sara');
INSERT INTO vendor_compliance_records (vendorId,contractId,complianceArea,assessmentDate,assessorName,score,findings,correctiveAction,dueDate,status,remarks,createdAt,updatedAt,auditTrail,riskLevel,regulatoryReference,complianceTag,nextReviewDate,reviewedBy) VALUES (403,1003,'Quality','2024-06-20','Rita','78','Inconsistent QA documentation','Standardize forms','2024-07-20','Open','Requires audit','2024-06-21 14:30:00','2024-06-21 14:30:00','AUDIT003','High','ISO9001','Quality','2025-06-20','Liam');

-- Table storing NPS scores for hospitality events
CREATE TABLE hospitality_event_nps (
    npsId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    surveyDate DATE,
    respondents INTEGER,
    promoters INTEGER,
    passives INTEGER,
    detractors INTEGER,
    npsScore INTEGER,
    averageRating REAL,
    comments TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    surveyMethod TEXT,
    region TEXT,
    eventType TEXT,
    organizerName TEXT,
    followUpAction TEXT,
    actionDueDate DATE,
    actionOwner TEXT,
    notes TEXT
);

INSERT INTO hospitality_event_nps (eventId,surveyDate,respondents,promoters,passives,detractors,npsScore,averageRating,comments,createdAt,updatedAt,surveyMethod,region,eventType,organizerName,followUpAction,actionDueDate,actionOwner,notes) VALUES (501,'2024-04-30',120,70,30,20,42,4.2,'Great food and service', '2024-05-01 08:00:00','2024-05-01 08:00:00','Online','Europe','VIP Dinner','Emma','Upgrade beverage menu','2024-05-15','John','Positive overall');
INSERT INTO hospitality_event_nps (eventId,surveyDate,respondents,promoters,passives,detractors,npsScore,averageRating,comments,createdAt,updatedAt,surveyMethod,region,eventType,organizerName,followUpAction,actionDueDate,actionOwner,notes) VALUES (502,'2024-05-20',85,50,20,15,41,4.0,'Staff were attentive', '2024-05-21 09:15:00','2024-05-21 09:15:00','Paper','Asia','Cocktail Reception','Liu','Add more seating','2024-06-01','Mia','Good feedback');
INSERT INTO hospitality_event_nps (eventId,surveyDate,respondents,promoters,passives,detractors,npsScore,averageRating,comments,createdAt,updatedAt,surveyMethod,region,eventType,organizerName,followUpAction,actionDueDate,actionOwner,notes) VALUES (503,'2024-06-10',150,90,40,20,46,4.5,'Excellent venue location', '2024-06-11 07:45:00','2024-06-11 07:45:00','Online','NorthAmerica','Team Briefing','Carlos','Provide translation services','2024-06-25','Ana','Very positive');

-- Table storing digital signature logs for race legal documents
CREATE TABLE race_legal_documents (
    docId INTEGER PRIMARY KEY AUTOINCREMENT,
    documentName TEXT,
    documentType TEXT,
    version INTEGER,
    createdBy TEXT,
    createdDate DATE,
    signedBy TEXT,
    signedDate DATE,
    signatureHash TEXT,
    storagePath TEXT,
    status TEXT,
    expiryDate DATE,
    associatedRaceId INTEGER,
    confidentialityLevel TEXT,
    accessControlList TEXT,
    verificationStatus TEXT,
    verifiedBy TEXT,
    verificationDate DATE,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO race_legal_documents (documentName,documentType,version,createdBy,createdDate,signedBy,signedDate,signatureHash,storagePath,status,expiryDate,associatedRaceId,confidentialityLevel,accessControlList,verificationStatus,verifiedBy,verificationDate,notes,createdAt,updatedAt) VALUES ('RaceContract_2024','Contract',1,'LegalTeam','2024-01-10','John Doe','2024-01-12','ABCD1234EFGH5678','/legal/RaceContract_2024_v1.pdf','Active','2025-01-10',101,'High','LegalTeam,TeamA','Verified','Jane Smith','2024-01-13','All parties agreed','2024-01-12 09:00:00','2024-01-12 09:00:00');
INSERT INTO race_legal_documents (documentName,documentType,version,createdBy,createdDate,signedBy,signedDate,signatureHash,storagePath,status,expiryDate,associatedRaceId,confidentialityLevel,accessControlList,verificationStatus,verifiedBy,verificationDate,notes,createdAt,updatedAt) VALUES ('SafetyProtocol_2024','Policy',2,'ComplianceDept','2024-02-05','Alice Green','2024-02-07','XYZ9876LMNO5432','/legal/SafetyProtocol_2024_v2.pdf','Active','2026-02-05',102,'Medium','ComplianceDept,TeamB','Pending','',NULL,'Pending signatures','2024-02-05 10:30:00','2024-02-05 10:30:00');
INSERT INTO race_legal_documents (documentName,documentType,version,createdBy,createdDate,signedBy,signedDate,signatureHash,storagePath,status,expiryDate,associatedRaceId,confidentialityLevel,accessControlList,verificationStatus,verifiedBy,verificationDate,notes,createdAt,updatedAt) VALUES ('MediaRightsAgreement_2024','Agreement',1,'MediaDept','2024-03-01','Bob Brown','2024-03-03','LMN4567OPQR8910','/legal/MediaRightsAgreement_2024_v1.pdf','Active','2025-03-01',103,'Low','MediaDept,BroadcastTeam','Verified','Sara White','2024-03-04','Approved by all parties','2024-03-03 14:20:00','2024-03-03 14:20:00');