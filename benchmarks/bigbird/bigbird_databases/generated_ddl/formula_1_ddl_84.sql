-- Table storing details of trackside audio systems
CREATE TABLE trackside_audio_systems (
    audioSystemId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    systemModel TEXT,
    manufacturer TEXT,
    installationDate DATE,
    speakerCount INTEGER,
    powerRatingWatts REAL,
    frequencyRangeHz TEXT,
    firmwareVersion TEXT,
    lastMaintenanceDate DATE,
    maintenanceProvider TEXT,
    volumeControlType TEXT,
    connectivityType TEXT,
    isActive INTEGER,
    warrantyExpiration DATE,
    serialNumber TEXT,
    locationDescription TEXT,
    calibrationStatus TEXT,
    noiseLevelDb REAL,
    driverFeedbackScore REAL,
    notes TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);

INSERT INTO trackside_audio_systems (circuitId,systemModel,manufacturer,installationDate,speakerCount,powerRatingWatts,frequencyRangeHz,firmwareVersion,lastMaintenanceDate,maintenanceProvider,volumeControlType,connectivityType,isActive,warrantyExpiration,serialNumber,locationDescription,calibrationStatus,noiseLevelDb,driverFeedbackScore,notes) VALUES (1,'AUDIOX100','SoundTech','2022-03-15',8,250.5,'20-20000','v1.2','2023-01-10','TechServ','Digital','WiFi',1,'2025-03-15','SN001A','StartStraight','Calibrated',68.4,8.5,'Initial install');
INSERT INTO trackside_audio_systems (circuitId,systemModel,manufacturer,installationDate,speakerCount,powerRatingWatts,frequencyRangeHz,firmwareVersion,lastMaintenanceDate,maintenanceProvider,volumeControlType,connectivityType,isActive,warrantyExpiration,serialNumber,locationDescription,calibrationStatus,noiseLevelDb,driverFeedbackScore,notes) VALUES (2,'AUDIOM200','AudioPlus','2021-11-05',12,340.0,'30-18000','v2.0','2023-06-20','AudioCare','Analog','Fiber',1,'2024-11-05','SN002B','Turn1','Pending',71.2,7.9,'Upgraded speakers');
INSERT INTO trackside_audio_systems (circuitId,systemModel,manufacturer,installationDate,speakerCount,powerRatingWatts,frequencyRangeHz,firmwareVersion,lastMaintenanceDate,maintenanceProvider,volumeControlType,connectivityType,isActive,warrantyExpiration,serialNumber,locationDescription,calibrationStatus,noiseLevelDb,driverFeedbackScore,notes) VALUES (3,'ACOUSTIC5','SonicWave','2020-07-22',6,180.3,'50-16000','v1.8','2022-12-01','SonicServ','Digital','Bluetooth',0,'2023-07-22','SN003C','PitLane','Calibrated',66.0,6.4,'Retired system');

-- Table containing venue catering menu items
CREATE TABLE venue_catering_menu (
    menuItemId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    category TEXT,
    itemName TEXT,
    description TEXT,
    isVegetarian INTEGER,
    isVegan INTEGER,
    containsNuts INTEGER,
    glutenFree INTEGER,
    priceUSD REAL,
    calories INTEGER,
    proteinGrams INTEGER,
    fatGrams INTEGER,
    carbsGrams INTEGER,
    servingSize TEXT,
    availableFrom DATE,
    availableTo DATE,
    supplierName TEXT,
    preparationTimeMin INTEGER,
    ratingOutOf10 REAL,
    notes TEXT,
    FOREIGN KEY (venueId) REFERENCES venues(venueId)
);

INSERT INTO venue_catering_menu (venueId,category,itemName,description,isVegetarian,isVegan,containsNuts,glutenFree,priceUSD,calories,proteinGrams,fatGrams,carbsGrams,servingSize,availableFrom,availableTo,supplierName,preparationTimeMin,ratingOutOf10,notes) VALUES (1,'Starter','Caprese Salad','Tomato mozzarella basil','1','0','0','1',8.99,250,10,12,20,'1 plate','2023-03-01','2023-09-30','FreshFoods','10',9.2,'Seasonal');
INSERT INTO venue_catering_menu (venueId,category,itemName,description,isVegetarian,isVegan,containsNuts,glutenFree,priceUSD,calories,proteinGrams,fatGrams,carbsGrams,servingSize,availableFrom,availableTo,supplierName,preparationTimeMin,ratingOutOf10,notes) VALUES (2,'Main','Grilled Chicken Wrap','Chicken lettuce tomato wrap','0','0','0','0',12.5,420,35,15,40,'1 wrap','2023-04-15','2024-04-14','ProteinPlus','15',8.5,'Customer favorite');
INSERT INTO venue_catering_menu (venueId,category,itemName,description,isVegetarian,isVegan,containsNuts,glutenFree,priceUSD,calories,proteinGrams,fatGrams,carbsGrams,servingSize,availableFrom,availableTo,supplierName,preparationTimeMin,ratingOutOf10,notes) VALUES (3,'Dessert','Vegan Chocolate Mousse','Silky cocoa mousse','0','1','0','1',6.75,190,4,12,22,'200ml','2023-05-01','2024-05-01','SweetLeaf','8',9.0,'Gluten free');

-- Table defining broadcast ad break timing slots
CREATE TABLE broadcast_ad_break_timing (
    adBreakId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    breakNumber INTEGER,
    startTime TEXT,
    endTime TEXT,
    durationSeconds INTEGER,
    adProvider TEXT,
    adCategory TEXT,
    spotCount INTEGER,
    totalCostUSD REAL,
    currency TEXT,
    region TEXT,
    isPrimeTime INTEGER,
    viewershipEstimate INTEGER,
    confirmed INTEGER,
    notes TEXT,
    createdDate DATE,
    lastModified DATE,
    approvedBy TEXT,
    complianceFlag INTEGER,
    externalReference TEXT,
    FOREIGN KEY (broadcastId) REFERENCES broadcast_media(broadcastId)
);

INSERT INTO broadcast_ad_break_timing (broadcastId,breakNumber,startTime,endTime,durationSeconds,adProvider,adCategory,spotCount,totalCostUSD,currency,region,isPrimeTime,viewershipEstimate,confirmed,notes,createdDate,lastModified,approvedBy,complianceFlag,externalReference) VALUES (1,1,'00:15:00','00:17:00',120,'AutoCorp','Automotive',3,15000,'USD','EMEA',1,250000,1,'Standard break','2023-01-10','2023-01-12','JohnDoe',0,'REF001');
INSERT INTO broadcast_ad_break_timing (broadcastId,breakNumber,startTime,endTime,durationSeconds,adProvider,adCategory,spotCount,totalCostUSD,currency,region,isPrimeTime,viewershipEstimate,confirmed,notes,createdDate,lastModified,approvedBy,complianceFlag,externalReference) VALUES (2,2,'00:30:00','00:32:30',150,'TechGear','Technology',4,21000,'USD','APAC',0,180000,0,'Pending approval','2023-02-05','2023-02-07','JaneSmith',0,'REF002');
INSERT INTO broadcast_ad_break_timing (broadcastId,breakNumber,startTime,endTime,durationSeconds,adProvider,adCategory,spotCount,totalCostUSD,currency,region,isPrimeTime,viewershipEstimate,confirmed,notes,createdDate,lastModified,approvedBy,complianceFlag,externalReference) VALUES (3,3,'01:00:00','01:02:15',135,'FoodWorld','Food & Beverage',2,8000,'USD','NA',1,300000,1,'Prime time snack ads','2023-03-20','2023-03-22','EmilyBrown',0,'REF003');

-- Table capturing team virtual reality training sessions
CREATE TABLE team_virtual_reality_training (
    vrSessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    driverId INTEGER,
    sessionDate DATE,
    vrScenario TEXT,
    durationMinutes INTEGER,
    headsetModel TEXT,
    softwareVersion TEXT,
    performanceScore REAL,
    lapTimeImprovementMs INTEGER,
    feedbackNotes TEXT,
    instructorName TEXT,
    sessionLocation TEXT,
    dataFilePath TEXT,
    isCertified INTEGER,
    certificationLevel TEXT,
    hardwareIssuesReported INTEGER,
    softwareIssuesReported INTEGER,
    weatherCondition TEXT,
    attendanceCount INTEGER,
    createdTimestamp DATE,
    FOREIGN KEY (teamId) REFERENCES constructors(constructorId),
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);

INSERT INTO team_virtual_reality_training (teamId,driverId,sessionDate,vrScenario,durationMinutes,headsetModel,softwareVersion,performanceScore,lapTimeImprovementMs,feedbackNotes,instructorName,sessionLocation,dataFilePath,isCertified,certificationLevel,hardwareIssuesReported,softwareIssuesReported,weatherCondition,attendanceCount,createdTimestamp) VALUES (1,101,'2023-04-10','Cornering Mastery',45,'VRProX','3.1.4',92.5,120,'Excellent focus','MikeTaylor','VR Lab A','/vrdata/session001','1','Level2',0,1,'Indoor',5,'2023-04-10');
INSERT INTO team_virtual_reality_training (teamId,driverId,sessionDate,vrScenario,durationMinutes,headsetModel,softwareVersion,performanceScore,lapTimeImprovementMs,feedbackNotes,instructorName,sessionLocation,dataFilePath,isCertified,certificationLevel,hardwareIssuesReported,softwareIssuesReported,weatherCondition,attendanceCount,createdTimestamp) VALUES (2,202,'2023-05-15','Wet Track Simulation',60,'VRElite','4.0.0',88.0,95,'Needs better throttle control','SarahLee','VR Lab B','/vrdata/session002','0','',1,0,'Indoor',4,'2023-05-15');
INSERT INTO team_virtual_reality_training (teamId,driverId,sessionDate,vrScenario,durationMinutes,headsetModel,softwareVersion,performanceScore,lapTimeImprovementMs,feedbackNotes,instructorName,sessionLocation,dataFilePath,isCertified,certificationLevel,hardwareIssuesReported,softwareIssuesReported,weatherCondition,attendanceCount,createdTimestamp) VALUES (3,303,'2023-06-20','Overtake Challenge',30,'VRX','2.9.7',95.3,150,'Great overtaking instincts','JohnKim','VR Lab C','/vrdata/session003','1','Level3',0,0,'Indoor',6,'2023-06-20');

-- Table tracking sponsor social media campaign performance
CREATE TABLE sponsor_social_media_campaigns (
    campaignId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    platform TEXT,
    campaignName TEXT,
    launchDate DATE,
    endDate DATE,
    budgetUSD REAL,
    impressions INTEGER,
    clicks INTEGER,
    clickThroughRate REAL,
    engagements INTEGER,
    engagementRate REAL,
    videoViews INTEGER,
    videoCompletionRate REAL,
    hashtag TEXT,
    targetAudience TEXT,
    geographicRegion TEXT,
    demographicAgeRange TEXT,
    demographicGender TEXT,
    sentimentScore REAL,
    notes TEXT,
    createdTimestamp DATE,
    FOREIGN KEY (sponsorId) REFERENCES sponsors(sponsorId)
);

INSERT INTO sponsor_social_media_campaigns (sponsorId,platform,campaignName,launchDate,endDate,budgetUSD,impressions,clicks,clickThroughRate,engagements,engagementRate,videoViews,videoCompletionRate,hashtag,targetAudience,geographicRegion,demographicAgeRange,demographicGender,sentimentScore,notes,createdTimestamp) VALUES (1,'Twitter','SpeedBoost','2023-02-01','2023-02-28',50000,1200000,8500,0.0071,30000,0.025,45000,0.78,'#SpeedBoost','MotorsportFans','Global','18-35','All',0.85,'High engagement','2023-02-01');
INSERT INTO sponsor_social_media_campaigns (sponsorId,platform,campaignName,launchDate,endDate,budgetUSD,impressions,clicks,clickThroughRate,engagements,engagementRate,videoViews,videoCompletionRate,hashtag,targetAudience,geographicRegion,demographicAgeRange,demographicGender,sentimentScore,notes,createdTimestamp) VALUES (2,'Instagram','EcoDrive','2023-03-10','2023-04-10',75000,2000000,15000,0.0075,50000,0.025,80000,0.82,'#EcoDrive','EcoConsciousFans','NorthAmerica','25-45','Female',0.78,'Positive feedback','2023-03-10');
INSERT INTO sponsor_social_media_campaigns (sponsorId,platform,campaignName,launchDate,endDate,budgetUSD,impressions,clicks,clickThroughRate,engagements,engagementRate,videoViews,videoCompletionRate,hashtag,targetAudience,geographicRegion,demographicAgeRange,demographicGender,sentimentScore,notes,createdTimestamp) VALUES (3,'LinkedIn','TechPartner','2023-01-15','2023-02-15',100000,900000,7000,0.0078,12000,0.013,25000,0.68,'#TechPartner','B2B','Europe','30-55','All',0.82,'Professional audience','2023-01-15');

-- Table for tracking environmental carbon emissions per event
CREATE TABLE environmental_carbon_tracker (
    carbonRecordId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    emissionSource TEXT,
    CO2kg REAL,
    CH4kg REAL,
    N2Okg REAL,
    measurementDate DATE,
    measurementMethod TEXT,
    verificationStatus TEXT,
    auditorName TEXT,
    notes TEXT,
    createdTimestamp DATE,
    lastUpdated DATE,
    region TEXT,
    sector TEXT,
    baselineYear INTEGER,
    reductionTargetPercent REAL,
    actualReductionPercent REAL,
    offsetCreditsPurchased INTEGER,
    offsetProvider TEXT,
    complianceFlag INTEGER,
    FOREIGN KEY (eventId) REFERENCES races(raceId)
);

INSERT INTO environmental_carbon_tracker (eventId,emissionSource,CO2kg,CH4kg,N2Okg,measurementDate,measurementMethod,verificationStatus,auditorName,notes,createdTimestamp,lastUpdated,region,sector,baselineYear,reductionTargetPercent,actualReductionPercent,offsetCreditsPurchased,offsetProvider,complianceFlag) VALUES (101,'Fuel Consumption',35000,12,5,'2023-04-15','DirectMeasurement','Verified','AliceGreen','Main fuel combustion','2023-04-16','2023-04-20','EMEA','Transport',2020,10.0,9.2,1200,'CarbonNeutralCo',0);
INSERT INTO environmental_carbon_tracker (eventId,emissionSource,CO2kg,CH4kg,N2Okg,measurementDate,measurementMethod,verificationStatus,auditorName,notes,createdTimestamp,lastUpdated,region,sector,baselineYear,reductionTargetPercent,actualReductionPercent,offsetCreditsPurchased,offsetProvider,complianceFlag) VALUES (102,'Electrical Usage',18000,4,1,'2023-05-10','MeterReading','Pending','BobWhite','Venue electricity','2023-05-11','2023-05-15','APAC','Infrastructure',2020,8.0,5.5,800,'GreenEnergyLtd',0);
INSERT INTO environmental_carbon_tracker (eventId,emissionSource,CO2kg,CH4kg,N2Okg,measurementDate,measurementMethod,verificationStatus,auditorName,notes,createdTimestamp,lastUpdated,region,sector,baselineYear,reductionTargetPercent,actualReductionPercent,offsetCreditsPurchased,offsetProvider,complianceFlag) VALUES (103,'Waste Management',7500,2,0.5,'2023-06-05','Survey','Verified','ClaraBlue','Recycling program','2023-06-06','2023-06-10','NA','Operations',2020,5.0,4.8,300,'RecyclePartners',0);

-- Table collecting race virtual audience interaction metrics
CREATE TABLE race_virtual_audience_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    platform TEXT,
    concurrentViewers INTEGER,
    totalViews INTEGER,
    averageWatchTimeSec INTEGER,
    peakViewers INTEGER,
    chatMessages INTEGER,
    reactions INTEGER,
    shareCount INTEGER,
    newFollowers INTEGER,
    geographicDistribution TEXT,
    deviceTypes TEXT,
    videoQuality TEXT,
    latencyMs INTEGER,
    bufferingEvents INTEGER,
    feedbackScore REAL,
    surveyResponses INTEGER,
    sentimentScore REAL,
    notes TEXT,
    recordedAt DATE,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);

INSERT INTO race_virtual_audience_metrics (raceId,platform,concurrentViewers,totalViews,averageWatchTimeSec,peakViewers,chatMessages,reactions,shareCount,newFollowers,geographicDistribution,deviceTypes,videoQuality,latencyMs,bufferingEvents,feedbackScore,surveyResponses,sentimentScore,notes,recordedAt) VALUES (201,'StreamX',85000,300000,720,120000,4500,7800,2100,540,'Europe30%NorthAmerica40%Asia20%','Desktop70%Mobile30%','1080p',150,12,4.5,1200,0.88,'High engagement','2023-07-01');
INSERT INTO race_virtual_audience_metrics (raceId,platform,concurrentViewers,totalViews,averageWatchTimeSec,peakViewers,chatMessages,reactions,shareCount,newFollowers,geographicDistribution,deviceTypes,videoQuality,latencyMs,bufferingEvents,feedbackScore,surveyResponses,sentimentScore,notes,recordedAt) VALUES (202,'LiveHub',62000,250000,680,95000,3200,5600,1800,430,'NorthAmerica45%Europe35%Asia15%','Mobile80%Desktop20%','720p',200,18,4.2,950,0.81,'Stable streaming','2023-07-08');
INSERT INTO race_virtual_audience_metrics (raceId,platform,concurrentViewers,totalViews,averageWatchTimeSec,peakViewers,chatMessages,reactions,shareCount,newFollowers,geographicDistribution,deviceTypes,videoQuality,latencyMs,bufferingEvents,feedbackScore,surveyResponses,sentimentScore,notes,recordedAt) VALUES (203,'FanStream',47000,180000,600,75000,2100,4300,1500,310,'Asia50%Europe30%NorthAmerica15%','Desktop60%Mobile40%','480p',250,25,3.9,600,0.74,'Minor latency spikes','2023-07-15');

-- Table for fan loyalty NFT collection details
CREATE TABLE fan_loyalty_nft_collection (
    nftId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    nftName TEXT,
    collectionSeries TEXT,
    issueDate DATE,
    blockchain TEXT,
    tokenId TEXT,
    rarityLevel TEXT,
    metadataURI TEXT,
    imageURI TEXT,
    attributesJSON TEXT,
    lockedUntil DATE,
    transferCount INTEGER,
    lastTransferDate DATE,
    valuationUSD REAL,
    isStaked INTEGER,
    stakingStartDate DATE,
    stakingYieldPercent REAL,
    redeemedRewardId INTEGER,
    notes TEXT,
    createdTimestamp DATE,
    FOREIGN KEY (fanId) REFERENCES fans(fanId)
);

INSERT INTO fan_loyalty_nft_collection (fanId,nftName,collectionSeries,issueDate,blockchain,tokenId,rarityLevel,metadataURI,imageURI,attributesJSON,lockedUntil,transferCount,lastTransferDate,valuationUSD,isStaked,stakingStartDate,stakingYieldPercent,redeemedRewardId,notes,createdTimestamp) VALUES (1001,'GrandPrix Badge','Season2023','2023-03-01','Ethereum','0xabc123','Gold','ipfs://meta1','ipfs://img1','{\"speed\":\"fast\",\"color\":\"red\"}','2023-12-31',3,'2023-06-15',2500.00,1,'2023-06-16',4.5,45,'First NFT reward','2023-03-01');
INSERT INTO fan_loyalty_nft_collection (fanId,nftName,collectionSeries,issueDate,blockchain,tokenId,rarityLevel,metadataURI,imageURI,attributesJSON,lockedUntil,transferCount,lastTransferDate,valuationUSD,isStaked,stakingStartDate,stakingYieldPercent,redeemedRewardId,notes,createdTimestamp) VALUES (1002,'Circuit Explorer','SeriesA','2023-04-10','Polygon','0xdef456','Silver','ipfs://meta2','ipfs://img2','{\"track\":\"monaco\",\"lap\":\"fast\"}','2024-04-10',1,'2023-04-12',1500.00,0,NULL,NULL,12,'Limited edition','2023-04-10');
INSERT INTO fan_loyalty_nft_collection (fanId,nftName,collectionSeries,issueDate,blockchain,tokenId,rarityLevel,metadataURI,imageURI,attributesJSON,lockedUntil,transferCount,lastTransferDate,valuationUSD,isStaked,stakingStartDate,stakingYieldPercent,redeemedRewardId,notes,createdTimestamp) VALUES (1003,'Team Hero','TeamSeries','2023-05-20','Solana','0xghi789','Bronze','ipfs://meta3','ipfs://img3','{\"team\":\"alpha\",\"role\":\"driver\"}','2025-05-20',0,NULL,NULL,0,0,NULL,NULL,5,'Reward pending','2023-05-20');

-- Table extending medical staff shift logs with additional details
CREATE TABLE medical_staff_shift_logs_extended (
    shiftLogId INTEGER PRIMARY KEY AUTOINCREMENT,
    staffId INTEGER,
    shiftDate DATE,
    startTime TEXT,
    endTime TEXT,
    role TEXT,
    department TEXT,
    shiftType TEXT,
    onCall INTEGER,
    patientsSeen INTEGER,
    emergenciesHandled INTEGER,
    medicationsAdministered INTEGER,
    equipmentUsed TEXT,
    notes TEXT,
    supervisorId INTEGER,
    location TEXT,
    shiftQualityScore REAL,
    trainingCompleted INTEGER,
    certificationValidUntil DATE,
    overtimeMinutes INTEGER,
    createdTimestamp DATE,
    FOREIGN KEY (staffId) REFERENCES medical_staff(staffId),
    FOREIGN KEY (supervisorId) REFERENCES medical_staff(staffId)
);

INSERT INTO medical_staff_shift_logs_extended (staffId,shiftDate,startTime,endTime,role,department,shiftType,onCall,patientsSeen,emergenciesHandled,medicationsAdministered,equipmentUsed,notes,supervisorId,location,shiftQualityScore,trainingCompleted,certificationValidUntil,overtimeMinutes,createdTimestamp) VALUES (201,'2023-07-01','08:00','16:00','Paramedic','Emergency','Day',1,12,3,45,'Defibrillator','Smooth shift',301,'MedicalCenterA',9.2,1,'2025-12-31',30,'2023-07-01');
INSERT INTO medical_staff_shift_logs_extended (staffId,shiftDate,startTime,endTime,role,department,shiftType,onCall,patientsSeen,emergenciesHandled,medicationsAdministered,equipmentUsed,notes,supervisorId,location,shiftQualityScore,trainingCompleted,certificationValidUntil,overtimeMinutes,createdTimestamp) VALUES (202,'2023-07-02','16:00','00:00','Nurse','Recovery','Evening',0,8,1,20,'Ventilator','Minor issues',301,'MedicalCenterB',8.5,1,'2024-06-30',45,'2023-07-02');
INSERT INTO medical_staff_shift_logs_extended (staffId,shiftDate,startTime,endTime,role,department,shiftType,onCall,patientsSeen,emergenciesHandled,medicationsAdministered,equipmentUsed,notes,supervisorId,location,shiftQualityScore,trainingCompleted,certificationValidUntil,overtimeMinutes,createdTimestamp) VALUES (203,'2023-07-03','00:00','08:00','Doctor','Trauma','Night',1,15,5,60,'CTScanner','High workload',301,'MedicalCenterC',7.8,1,'2026-03-15',60,'2023-07-03');

-- Table summarizing logistics freight inspection records
CREATE TABLE logistics_freight_inspection_summary (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    inspectorId INTEGER,
    inspectionDate DATE,
    inspectionTime TEXT,
    containerNumber TEXT,
    cargoType TEXT,
    cargoWeightKg REAL,
    sealIntact INTEGER,
    temperatureControlled INTEGER,
    temperatureCelsius REAL,
    humidityPercent REAL,
    documentationComplete INTEGER,
    remarks TEXT,
    actionTaken TEXT,
    complianceStatus TEXT,
    nextInspectionDue DATE,
    inspectorAgency TEXT,
    gpsCoordinates TEXT,
    photoEvidenceURI TEXT,
    createdTimestamp DATE,
    FOREIGN KEY (shipmentId) REFERENCES logistics_shipments(shipmentId),
    FOREIGN KEY (inspectorId) REFERENCES officials(officialId)
);

INSERT INTO logistics_freight_inspection_summary (shipmentId,inspectorId,inspectionDate,inspectionTime,containerNumber,cargoType,cargoWeightKg,sealIntact,temperatureControlled,temperatureCelsius,humidityPercent,documentationComplete,remarks,actionTaken,complianceStatus,nextInspectionDue,inspectorAgency,gpsCoordinates,photoEvidenceURI,createdTimestamp) VALUES (5001,401,'2023-06-10','09:30','CONT12345','Tyres','15000',1,0,NULL,NULL,1,'All good','None','Compliant','2023-12-10','LogiInspect','-33.865143,151.209900','/photos/cont12345_20230610.jpg','2023-06-10');
INSERT INTO logistics_freight_inspection_summary (shipmentId,inspectorId,inspectionDate,inspectionTime,containerNumber,cargoType,cargoWeightKg,sealIntact,temperatureControlled,temperatureCelsius,humidityPercent,documentationComplete,remarks,actionTaken,complianceStatus,nextInspectionDue,inspectorAgency,gpsCoordinates,photoEvidenceURI,createdTimestamp) VALUES (5002,402,'2023-06-12','14:45','CONT67890','Fuel','25000',0,1,15.5,30,1,'Seal broken, resecured','Seal replacement','NonCompliant','2023-09-12','FuelCheck','-34.928497,138.600746','/photos/cont67890_20230612.jpg','2023-06-12');
INSERT INTO logistics_freight_inspection_summary (shipmentId,inspectorId,inspectionDate,inspectionTime,containerNumber,cargoType,cargoWeightKg,sealIntact,temperatureControlled,temperatureCelsius,humidityPercent,documentationComplete,remarks,actionTaken,complianceStatus,nextInspectionDue,inspectorAgency,gpsCoordinates,photoEvidenceURI,createdTimestamp) VALUES (5003,401,'2023-06-15','11:20','CONT54321','SpareParts','8000',1,0,NULL,NULL,1,'Packaging intact','None','Compliant','2024-06-15','LogiInspect','-37.813629,144.963058','/photos/cont54321_20230615.jpg','2023-06-15');