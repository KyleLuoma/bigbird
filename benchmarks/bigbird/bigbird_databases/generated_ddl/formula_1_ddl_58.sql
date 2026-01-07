-- Venue Energy Audits
CREATE TABLE venue_energy_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    auditDate DATE NOT NULL,
    auditorName TEXT NOT NULL,
    totalEnergyKWh REAL,
    renewableEnergyKWh REAL,
    peakDemandKW REAL,
    averageVoltageV REAL,
    averageCurrentA REAL,
    co2EmissionsKg REAL,
    auditScore INTEGER,
    complianceStatus TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    energyCostUSD REAL,
    costPerKWh REAL,
    lightingEnergyKWh REAL,
    hvacEnergyKWh REAL,
    waterUsageLiters REAL,
    wasteGeneratedKg REAL,
    solarPanelCapacityKW REAL
);
INSERT INTO venue_energy_audits (venueId,auditDate,auditorName,totalEnergyKWh,renewableEnergyKWh,peakDemandKW,averageVoltageV,averageCurrentA,co2EmissionsKg,auditScore,complianceStatus,notes,energyCostUSD,costPerKWh,lightingEnergyKWh,hvacEnergyKWh,waterUsageLiters,wasteGeneratedKg,solarPanelCapacityKW) VALUES (101,'2023-06-15','EcoAuditTeam',1250000,300000,550,230,1200,850000,92,'Compliant','Annual audit','15000',0.012,'250000','600000',1200000,4000,150);
INSERT INTO venue_energy_audits (venueId,auditDate,auditorName,totalEnergyKWh,renewableEnergyKWh,peakDemandKW,averageVoltageV,averageCurrentA,co2EmissionsKg,auditScore,complianceStatus,notes,energyCostUSD,costPerKWh,lightingEnergyKWh,hvacEnergyKWh,waterUsageLiters,wasteGeneratedKg,solarPanelCapacityKW) VALUES (102,'2023-07-10','GreenMetrics',980000,200000,480,235,950,620000,88,'Compliant','Improved insulation','11800',0.011,'190000','500000',950000,3200,120);
INSERT INTO venue_energy_audits (venueId,auditDate,auditorName,totalEnergyKWh,renewableEnergyKWh,peakDemandKW,averageVoltageV,averageCurrentA,co2EmissionsKg,auditScore,complianceStatus,notes,energyCostUSD,costPerKWh,lightingEnergyKWh,hvacEnergyKWh,waterUsageLiters,wasteGeneratedKg,solarPanelCapacityKW) VALUES (103,'2023-08-05','SustainCheck',1450000,400000,620,228,1500,1020000,95,'Compliant','Added solar array','17500',0.012,'300000','750000',1300000,4700,200);

-- Fan Loyalty Rewards Program
CREATE TABLE fan_loyalty_rewards_program (
    programId INTEGER PRIMARY KEY AUTOINCREMENT,
    programName TEXT NOT NULL,
    launchDate DATE NOT NULL,
    tierCount INTEGER,
    pointsPerDollar REAL,
    expiryDays INTEGER,
    rewardCatalogUrl TEXT,
    description TEXT,
    currency TEXT,
    activeFlag INTEGER,
    createdBy TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    maxPointsPerYear INTEGER,
    bonusPointsOnSignup INTEGER,
    referralBonusPoints INTEGER,
    redemptionRate REAL,
    emailOptInFlag INTEGER,
    smsOptInFlag INTEGER,
    mobileAppAvailableFlag INTEGER,
    socialSharingEnabledFlag INTEGER,
    partnerIntegrationCount INTEGER
);
INSERT INTO fan_loyalty_rewards_program (programName,launchDate,tierCount,pointsPerDollar,expiryDays,rewardCatalogUrl,description,currency,activeFlag,createdBy,maxPointsPerYear,bonusPointsOnSignup,referralBonusPoints,redemptionRate,emailOptInFlag,smsOptInFlag,mobileAppAvailableFlag,socialSharingEnabledFlag,partnerIntegrationCount) VALUES ('GrandPrixFans','2022-03-01',5,1.5,730,'http://example.com/catalog','Loyalty program for race fans','USD',1,'admin',100000,5000,2000,0.01,1,1,1,1,12);
INSERT INTO fan_loyalty_rewards_program (programName,launchDate,tierCount,pointsPerDollar,expiryDays,rewardCatalogUrl,description,currency,activeFlag,createdBy,maxPointsPerYear,bonusPointsOnSignup,referralBonusPoints,redemptionRate,emailOptInFlag,smsOptInFlag,mobileAppAvailableFlag,socialSharingEnabledFlag,partnerIntegrationCount) VALUES ('SpeedClub','2023-01-15',3,2.0,365,'http://example.com/speed catalog','Exclusive rewards for speed enthusiasts','EUR',1,'marketing',50000,3000,1500,0.015,1,0,1,0,8);
INSERT INTO fan_loyalty_rewards_program (programName,launchDate,tierCount,pointsPerDollar,expiryDays,rewardCatalogUrl,description,currency,activeFlag,createdBy,maxPointsPerYear,bonusPointsOnSignup,referralBonusPoints,redemptionRate,emailOptInFlag,smsOptInFlag,mobileAppAvailableFlag,socialSharingEnabledFlag,partnerIntegrationCount) VALUES ('CircuitInsiders','2021-09-20',4,1.2,540,'http://example.com/insiders','Access to behind‑the‑scenes content','GBP',1,'operations',80000,4000,1800,0.012,0,1,1,1,10);

-- Pit Stop Performance Analysis
CREATE TABLE pit_stop_performance_analysis (
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    pitStopNumber INTEGER NOT NULL,
    entryTime TEXT,
    exitTime TEXT,
    durationMilliseconds INTEGER,
    tyreChangeFlag INTEGER,
    fuelAddedLiters REAL,
    crewMemberCount INTEGER,
    errorFlag INTEGER,
    weatherCondition TEXT,
    trackTemperatureC REAL,
    airTemperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    pitLaneSpeedLimitKph REAL,
    breachFlag INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    averageSpeedKph REAL,
    tyreCompound TEXT,
    pitBoxLocation TEXT
);
INSERT INTO pit_stop_performance_analysis (raceId,driverId,pitStopNumber,entryTime,exitTime,durationMilliseconds,tyreChangeFlag,fuelAddedLiters,crewMemberCount,errorFlag,weatherCondition,trackTemperatureC,airTemperatureC,humidityPercent,windSpeedKph,pitLaneSpeedLimitKph,breachFlag,notes,averageSpeedKph,tyreCompound,pitBoxLocation) VALUES (1,44,2,'14:32:15','14:32:46',31000,1,45.5,6,0,'Sunny',35.2,33.0,40,12,80,0,'Standard stop',210,'Medium','BoxA');
INSERT INTO pit_stop_performance_analysis (raceId,driverId,pitStopNumber,entryTime,exitTime,durationMilliseconds,tyreChangeFlag,fuelAddedLiters,crewMemberCount,errorFlag,weatherCondition,trackTemperatureC,airTemperatureC,humidityPercent,windSpeedKph,pitLaneSpeedLimitKph,breachFlag,notes,averageSpeedKph,tyreCompound,pitBoxLocation) VALUES (2,27,1,'15:10:05','15:10:38',33000,0,30.0,5,0,'Cloudy',28.5,27.0,55,8,80,0,'Fuel only',205,'Hard','BoxC');
INSERT INTO pit_stop_performance_analysis (raceId,driverId,pitStopNumber,entryTime,exitTime,durationMilliseconds,tyreChangeFlag,fuelAddedLiters,crewMemberCount,errorFlag,weatherCondition,trackTemperatureC,airTemperatureC,humidityPercent,windSpeedKph,pitLaneSpeedLimitKph,breachFlag,notes,averageSpeedKph,tyreCompound,pitBoxLocation) VALUES (3,12,3,'16:45:22','16:45:55',33000,1,50.0,7,1,'Rain',22.0,20.5,85,5,80,1,'Wheel gun malfunction',190,'Soft','BoxB');

-- Circuit Heritage Artifacts
CREATE TABLE circuit_heritage_artifacts (
    artifactId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    artifactName TEXT NOT NULL,
    acquisitionDate DATE,
    origin TEXT,
    material TEXT,
    dimensionsCm TEXT,
    conditionStatus TEXT,
    displayLocation TEXT,
    curatorName TEXT,
    estimatedValueUSD REAL,
    historicalPeriod TEXT,
    description TEXT,
    provenance TEXT,
    loanStatus TEXT,
    loanStartDate DATE,
    loanEndDate DATE,
    insurancePolicyNumber TEXT,
    insuranceProvider TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    photoUrl TEXT,
    restorationNeededFlag INTEGER
);
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,acquisitionDate,origin,material,dimensionsCm,conditionStatus,displayLocation,curatorName,estimatedValueUSD,historicalPeriod,description,provenance,loanStatus,loanStartDate,loanEndDate,insurancePolicyNumber,insuranceProvider,photoUrl,restorationNeededFlag) VALUES (1,'VintageSteeringWheel','1998-05-12','Italy','Aluminium','45x30x15','Good','MuseumHall','MarcoRossi',12000,'1990s','Original steering wheel from 1998 race','Family donation','Owned',NULL,NULL,'POL12345','SecureInsure','http://example.com/steering.jpg',0);
INSERT INTO circuit_heritance_artifacts (circuitId,artifactName,acquisitionDate,origin,material,dimensionsCm,conditionStatus,displayLocation,curatorName,estimatedValueUSD,historicalPeriod,description,provenance,loanStatus,loanStartDate,loanEndDate,insurancePolicyNumber,insuranceProvider,photoUrl,restorationNeededFlag) VALUES (2,'ClassicPitBoard','2005-09-20','France','Wood','60x40x5','Fair','ExhibitRoom','ClaireDupont',8000,'2000s','Pit board used in 2004 championship','Auction purchase','Loaned','2023-01-01','2024-01-01','POL67890','GlobalCover','http://example.com/pitboard.jpg',1);
INSERT INTO circuit_heritage_artifacts (circuitId,artifactName,acquisitionDate,origin,material,dimensionsCm,conditionStatus,displayLocation,curatorName,estimatedValueUSD,historicalPeriod,description,provenance,loanStatus,loanStartDate,loanEndDate,insurancePolicyNumber,insuranceProvider,photoUrl,restorationNeededFlag) VALUES (3,'RetroHelmet','2010-03-15','Germany','CarbonFiber','30x25x15','Excellent','HallwayDisplay','ThomasKlein',15000,'1990s','Driver helmet from 1999 race','Private collection','Owned',NULL,NULL,'POL54321','SafeGuard','http://example.com/helmet.jpg',0);

-- Driver Fitness Assessments
CREATE TABLE driver_fitness_assessments (
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    assessmentDate DATE NOT NULL,
    weightKg REAL,
    heightCm REAL,
    bodyFatPercent REAL,
    vo2MaxMlMinKg REAL,
    restingHeartRateBpm INTEGER,
    gripStrengthKg INTEGER,
    flexibilityScore INTEGER,
    reactionTimeMs REAL,
    visionAcuity TEXT,
    hearingThresholdDb REAL,
    bloodPressureSystolic INTEGER,
    bloodPressureDiastolic INTEGER,
    cholesterolMgDl REAL,
    glucoseMgDl REAL,
    injuryHistory TEXT,
    medicalClearanceFlag INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    trainerName TEXT,
    assessmentFacility TEXT
);
INSERT INTO driver_fitness_assessments (driverId,assessmentDate,weightKg,heightCm,bodyFatPercent,vo2MaxMlMinKg,restingHeartRateBpm,gripStrengthKg,flexibilityScore,reactionTimeMs,visionAcuity,hearingThresholdDb,bloodPressureSystolic,bloodPressureDiastolic,cholesterolMgDl,glucoseMgDl,injuryHistory,medicalClearanceFlag,notes,trainerName,assessmentFacility) VALUES (44,'2023-05-10',78.5,182,9.2,55.1,48,45,85,180,'20/20',10,120,78,180,95,'None',1,'Fit and ready','JohnDoe','PerformanceLab');
INSERT INTO driver_fitness_assessments (driverId,assessmentDate,weightKg,heightCm,bodyFatPercent,vo2MaxMlMinKg,restingHeartRateBpm,gripStrengthKg,flexibilityScore,reactionTimeMs,visionAcuity,hearingThresholdDb,bloodPressureSystolic,bloodPressureDiastolic,cholesterolMgDl,glucoseMgDl,injuryHistory,medicalClearanceFlag,notes,trainerName,assessmentFacility) VALUES (27,'2023-06-18',84.0,176,11.5,48.3,52,42,78,190,'20/25',12,130,82,190,100,'Minor shoulder strain',1,'Improved cardio needed','EmilySmith','EliteFitness');
INSERT INTO driver_fitness_assessments (driverId,assessmentDate,weightKg,heightCm,bodyFatPercent,vo2MaxMlMinKg,restingHeartRateBpm,gripStrengthKg,flexibilityScore,reactionTimeMs,visionAcuity,hearingThresholdDb,bloodPressureSystolic,bloodPressureDiastolic,cholesterolMgDl,glucoseMgDl,injuryHistory,medicalClearanceFlag,notes,trainerName,assessmentFacility) VALUES (12,'2023-07-22',69.2,180,8.8,58.0,46,48,88,175,'20/20',8,115,76,170,92,'No injuries',1,'Excellent condition','MikeLee','ProHealthCenter');

-- Sponsor Initiative Projects
CREATE TABLE sponsor_initiative_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    projectName TEXT NOT NULL,
    startDate DATE,
    endDate DATE,
    budgetUSD REAL,
    targetAudience TEXT,
    description TEXT,
    keyPerformanceIndicators TEXT,
    status TEXT,
    createdBy TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    region TEXT,
    channel TEXT,
    expectedReach INTEGER,
    actualReach INTEGER,
    conversionRatePercent REAL,
    socialMediaImpressions INTEGER,
    websiteVisits INTEGER,
    leadCount INTEGER,
    revenueGeneratedUSD REAL,
    notes TEXT
);
INSERT INTO sponsor_initiative_projects (sponsorId,projectName,startDate,endDate,budgetUSD,targetAudience,description,keyPerformanceIndicators,status,createdBy,region,channel,expectedReach,actualReach,conversionRatePercent,socialMediaImpressions,websiteVisits,leadCount,revenueGeneratedUSD,notes) VALUES (201,'FastTrackEngagement','2023-01-01','2023-06-30',250000,'MotorsportFans','Interactive fan zone with brand activations','Impressions, Leads, Sales','Completed','susan', 'EMEA','OnSite',500000,475000,3.2,2000000,150000,1200,320000,'Exceeded expectations');
INSERT INTO sponsor_initiative_projects (sponsorId,projectName,startDate,endDate,budgetUSD,targetAudience,description,keyPerformanceIndicators,status,createdBy,region,channel,expectedReach,actualReach,conversionRatePercent,socialMediaImpressions,websiteVisits,leadCount,revenueGeneratedUSD,notes) VALUES (202,'EcoRacingSeries','2023-04-15','2023-12-31',400000,'EcoConsciousFans','Series promoting sustainable racing technologies','Engagement, Awareness','Ongoing','mike','APAC','Digital',800000,0,0,0,0,0,0,'Kickoff in Q3');
INSERT INTO sponsor_initiative_projects (sponsorId,projectName,startDate,endDate,budgetUSD,targetAudience,description,keyPerformanceIndicators,status,createdBy,region,channel,expectedReach,actualReach,conversionRatePercent,socialMediaImpressions,websiteVisits,leadCount,revenueGeneratedUSD,notes) VALUES (203,'SpeedChallengeContest','2023-07-01','2023-09-30',150000,'YoungAdults','Online contest for best race video edits','Entries, Shares, Brand Mentions','Planned','laura','NA','Social',300000,0,0,0,0,0,0,'Ready for launch');

-- Telemetry Calibration Sessions
CREATE TABLE telemetry_calibration_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    vehicleId INTEGER NOT NULL,
    sessionDate DATE,
    calibrationType TEXT,
    technicianName TEXT,
    durationMinutes INTEGER,
    sensorCount INTEGER,
    firmwareVersion TEXT,
    calibrationParameters TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    temperatureC REAL,
    humidityPercent REAL,
    voltageV REAL,
    currentA REAL,
    errorCode INTEGER,
    complianceFlag INTEGER,
    calibratedBy TEXT,
    verificationTimestamp DATETIME
);
INSERT INTO telemetry_calibration_sessions (raceId,vehicleId,sessionDate,calibrationType,technicianName,durationMinutes,sensorCount,firmwareVersion,calibrationParameters,status,notes,temperatureC,humidityPercent,voltageV,currentA,errorCode,complianceFlag,calibratedBy,verificationTimestamp) VALUES (1,55,'2023-05-01','Full','AlexSmith',120,48,'v3.2.1','ParamSetA','Completed','All sensors within tolerance',22.5,45,12.6,0.8,0,1,'AlexSmith','2023-05-01 14:30:00');
INSERT INTO telemetry_calibration_sessions (raceId,vehicleId,sessionDate,calibrationType,technicianName,durationMinutes,sensorCount,firmwareVersion,calibrationParameters,status,notes,temperatureC,humidityPercent,voltageV,currentA,errorCode,complianceFlag,calibratedBy,verificationTimestamp) VALUES (2,63,'2023-06-12','Partial','MariaLopez',45,32,'v3.2.3','ParamSetB','Completed','Minor drift corrected',24.0,50,12.8,0.85,2,1,'MariaLopez','2023-06-12 10:15:00');
INSERT INTO telemetry_calibration_sessions (raceId,vehicleId,sessionDate,calibrationType,technicianName,durationMinutes,sensorCount,firmwareVersion,calibrationParameters,status,notes,temperatureC,humidityPercent,voltageV,currentA,errorCode,complianceFlag,calibratedBy,verificationTimestamp) VALUES (3,71,'2023-07-20','Full','JohnDoe',130,50,'v3.3.0','ParamSetC','Failed','Sensor 17 unresponsive',23.0,48,12.7,0.82,5,0,'JohnDoe','2023-07-20 16:45:00');

-- Broadcast Subtitle Assets
CREATE TABLE broadcast_subtitle_assets (
    subtitleId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER NOT NULL,
    languageCode TEXT NOT NULL,
    filePath TEXT NOT NULL,
    format TEXT,
    createdBy TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    version INTEGER,
    durationSeconds INTEGER,
    characterCount INTEGER,
    syncedFlag INTEGER,
    qualityScore REAL,
    encodingBitrateKbps INTEGER,
    sourceSystem TEXT,
    notes TEXT,
    lastReviewedBy TEXT,
    lastReviewDate DATE,
    complianceStatus TEXT,
    distributionChannel TEXT,
    accessibilityTag TEXT,
    approvalStatus TEXT,
    reviewerComments TEXT,
    storageLocation TEXT,
    encryptionKey TEXT
);
INSERT INTO broadcast_subtitle_assets (broadcastId,languageCode,filePath,format,createdBy,version,durationSeconds,characterCount,syncedFlag,qualityScore,encodingBitrateKbps,sourceSystem,notes,lastReviewedBy,lastReviewDate,complianceStatus,distributionChannel,accessibilityTag,approvalStatus,reviewerComments,storageLocation,encryptionKey) VALUES (101,'en','/subs/eng_101.srt','SRT','alice',1,7200,350000,1,98.5,256,'CMS','English subtitles','bob','2023-05-01','Compliant','Streaming','ClosedCaption','Approved','All good','ArchiveA','key123');
INSERT INTO broadcast_subtitle_assets (broadcastId,languageCode,filePath,format,createdBy,version,durationSeconds,characterCount,syncedFlag,qualityScore,encodingBitrateKbps,sourceSystem,notes,lastReviewedBy,lastReviewDate,complianceStatus,distributionChannel,accessibilityTag,approvalStatus,reviewerComments,storageLocation,encryptionKey) VALUES (102,'es','/subs/spa_102.srt','SRT','carla',1,7200,340000,1,96.0,256,'CMS','Spanish subtitles','dave','2023-05-03','Compliant','Streaming','ClosedCaption','Approved','Minor timing tweak','ArchiveB','key456');
INSERT INTO broadcast_subtitle_assets (broadcastId,languageCode,filePath,format,createdBy,version,durationSeconds,characterCount,syncedFlag,qualityScore,encodingBitrateKbps,sourceSystem,notes,lastReviewedBy,lastReviewDate,complianceStatus,distributionChannel,accessibilityTag,approvalStatus,reviewerComments,storageLocation,encryptionKey) VALUES (103,'fr','/subs/fre_103.srt','SRT','eric',1,7200,345000,1,97.2,256,'CMS','French subtitles','fiona','2023-05-05','Compliant','Streaming','ClosedCaption','Approved','Verified','ArchiveC','key789');

-- Environmental Permit Applications
CREATE TABLE environmental_permit_applications (
    applicationId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    permitType TEXT NOT NULL,
    applicationDate DATE,
    submissionMethod TEXT,
    status TEXT,
    reviewerName TEXT,
    reviewDate DATE,
    expirationDate DATE,
    conditions TEXT,
    feeUSD REAL,
    supportingDocumentPath TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    region TEXT,
    jurisdiction TEXT,
    complianceScore INTEGER,
    renewalFlag INTEGER,
    mitigationPlan TEXT,
    publicCommentCount INTEGER,
    objectionFlag INTEGER,
    approvedBy TEXT,
    approvalDate DATE,
    archiveLocation TEXT
);
INSERT INTO environmental_permit_applications (venueId,permitType,applicationDate,submissionMethod,status,reviewerName,reviewDate,expirationDate,conditions,feeUSD,supportingDocumentPath,notes,region,jurisdiction,complianceScore,renewalFlag,mitigationPlan,publicCommentCount,objectionFlag,approvedBy,approvalDate,archiveLocation) VALUES (101,'AirEmission','2023-02-10','Online','Approved','Laura','2023-03-01','2025-02-09','Max 200tCO2/year',5000,'/docs/air_101.pdf','All measurements within limits','EMEA','National',95,0,'Plant upgrade','12',0,'Mark','2023-03-05','/archive/air_101');
INSERT INTO environmental_permit_applications (venueId,permitType,applicationDate,submissionMethod,status,reviewerName,reviewDate,expirationDate,conditions,feeUSD,supportingDocumentPath,notes,region,jurisdiction,complianceScore,renewalFlag,mitigationPlan,publicCommentCount,objectionFlag,approvedBy,approvalDate,archiveLocation) VALUES (102,'WaterDischarge','2023-04-15','Postal','Pending','Sofia','2023-05-10','2026-04-14','Limit 5000m3/day',3000,'/docs/water_102.pdf','Awaiting additional testing','APAC','State',0,0,'Install filtration','5',1,NULL,NULL,'/archive/water_102');
INSERT INTO environmental_permit_applications (venueId,permitType,applicationDate,submissionMethod,status,reviewerName,reviewDate,expirationDate,conditions,feeUSD,supportingDocumentPath,notes,region,jurisdiction,complianceScore,renewalFlag,mitigationPlan,publicCommentCount,objectionFlag,approvedBy,approvalDate,archiveLocation) VALUES (103,'Noise','2023-01-20','Online','Rejected','Ian','2023-02-08','2024-01-19','Max 85dB average','2000','/docs/noise_103.pdf','Exceeds local limits','NA','Municipal',0,0,'Sound barriers','20',1,'Helen','2023-02-10','/archive/noise_103');

-- Race Financial Summary
CREATE TABLE race_financial_summary (
    summaryId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    totalRevenueUSD REAL,
    ticketRevenueUSD REAL,
    sponsorshipRevenueUSD REAL,
    broadcastRightsUSD REAL,
    merchandiseRevenueUSD REAL,
    foodAndBeverageRevenueUSD REAL,
    hospitalityRevenueUSD REAL,
    expensesUSD REAL,
    staffCostsUSD REAL,
    securityCostsUSD REAL,
    logisticsCostsUSD REAL,
    marketingCostsUSD REAL,
    infrastructureCostsUSD REAL,
    netProfitUSD REAL,
    profitMarginPercent REAL,
    currency TEXT,
    financialOfficer TEXT,
    approvedFlag INTEGER,
    approvalDate DATE,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    auditReference TEXT,
    taxAdjustedProfitUSD REAL,
    exchangeRateToUSD REAL
);
INSERT INTO race_financial_summary (raceId,totalRevenueUSD,ticketRevenueUSD,sponsorshipRevenueUSD,broadcastRightsUSD,merchandiseRevenueUSD,foodAndBeverageRevenueUSD,hostilityRevenueUSD,expensesUSD,staffCostsUSD,securityCostsUSD,logisticsCostsUSD,marketingCostsUSD,infrastructureCostsUSD,netProfitUSD,profitMarginPercent,currency,financialOfficer,approvedFlag,approvalDate,notes,auditReference,taxAdjustedProfitUSD,exchangeRateToUSD) VALUES (1,3500000,1200000,800000,500000,400000,300000,500000,2500000,800000,200000,300000,250000,250000,800000,28.57,'USD','LauraSmith',1,'2023-08-01','Finalized after audit','AUD20230801',750000,1.0);
INSERT INTO race_financial_summary (raceId,totalRevenueUSD,ticketRevenueUSD,sponsorshipRevenueUSD,broadcastRightsUSD,merchandiseRevenueUSD,foodAndBeverageRevenueUSD,hostilityRevenueUSD,expensesUSD,staffCostsUSD,securityCostsUSD,logisticsCostsUSD,marketingCostsUSD,infrastructureCostsUSD,netProfitUSD,profitMarginPercent,currency,financialOfficer,approvedFlag,approvalDate,notes,auditReference,taxAdjustedProfitUSD,exchangeRateToUSD) VALUES (2,4200000,1500000,900000,600000,450000,350000,600000,3000000,900000,250000,350000,300000,300000,950000,22.62,'EUR','MichaelBrown',1,'2023-09-15','Reviewed by external auditor','AUD20230915',880000,1.1);
INSERT INTO race_financial_summary (raceId,totalRevenueUSD,ticketRevenueUSD,sponsorshipRevenueUSD,broadcastRightsUSD,merchandiseRevenueUSD,foodAndBeverageRevenueUSD,hostilityRevenueUSD,expensesUSD,staffCostsUSD,securityCostsUSD,logisticsCostsUSD,marketingCostsUSD,infrastructureCostsUSD,netProfitUSD,profitMarginPercent,currency,financialOfficer,approvedFlag,approvalDate,notes,auditReference,taxAdjustedProfitUSD,exchangeRateToUSD) VALUES (3,2800000,1000000,700000,450000,350000,250000,400000,2100000,750000,180000,280000,220000,220000,680000,24.29,'GBP','AnnaLee',0,NULL,'Pending final verification','AUD20231020',NULL,0.85);
