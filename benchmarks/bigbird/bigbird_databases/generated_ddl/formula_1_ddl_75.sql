-- Circuit sustainability reports  
CREATE TABLE circuit_sustainability_reports (  
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,  
    circuitId INTEGER NOT NULL,  
    reportYear INTEGER NOT NULL,  
    totalEnergyMWh REAL,  
    renewablePct REAL,  
    waterUsageML REAL,  
    wasteGeneratedTons REAL,  
    carbonEmissionsTonnes REAL,  
    noiseLevelDb REAL,  
    airQualityIndex INTEGER,  
    biodiversityScore INTEGER,  
    certificationStatus TEXT,  
    auditorName TEXT,  
    auditDate DATE,  
    solarCapacityMW REAL,  
    windCapacityMW REAL,  
    energySavingsPct REAL,  
    recyclingRatePct REAL,  
    stormwaterRetentionML REAL,  
    lightingEfficiency REAL,  
    hvacEfficiency REAL,  
    remarks TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO circuit_sustainability_reports (circuitId,reportYear,totalEnergyMWh,renewablePct,waterUsageML,wasteGeneratedTons,carbonEmissionsTonnes,noiseLevelDb,airQualityIndex,biodiversityScore,certificationStatus,auditorName,auditDate,solarCapacityMW,windCapacityMW,energySavingsPct,recyclingRatePct,stormwaterRetentionML,lightingEfficiency,hvacEfficiency,remarks) VALUES (1,2023,1500.5,78.2,12000.0,45.3,12.5,65.0,42,85,Certified,JohnDoe,2023-02-15,5.2,1.8,10.5,92.0,300.0,0.95,0.88,InitialReport);  
INSERT INTO circuit_sustainability_reports (circuitId,reportYear,totalEnergyMWh,renewablePct,waterUsageML,wasteGeneratedTons,carbonEmissionsTonnes,noiseLevelDb,airQualityIndex,biodiversityScore,certificationStatus,auditorName,auditDate,solarCapacityMW,windCapacityMW,energySavingsPct,recyclingRatePct,stormwaterRetentionML,lightingEfficiency,hvacEfficiency,remarks) VALUES (2,2023,1800.0,82.0,13500.0,50.0,10.2,68.0,38,88,Certified,JaneSmith,2023-03-10,6.0,2.0,12.0,94.0,320.0,0.96,0.90,MidYearUpdate);  
INSERT INTO circuit_sustainability_reports (circuitId,reportYear,totalEnergyMWh,renewablePct,waterUsageML,wasteGeneratedTons,carbonEmissionsTonnes,noiseLevelDb,airQualityIndex,biodiversityScore,certificationStatus,auditorName,auditDate,solarCapacityMW,windCapacityMW,energySavingsPct,recyclingRatePct,stormwaterRetentionML,lightingEfficiency,hvacEfficiency,remarks) VALUES (3,2023,1600.3,75.5,12500.0,48.2,13.0,66.0,40,83,Pending,AlanLee,2023-04-05,5.5,1.9,11.0,91.0,310.0,0.94,0.87,FinalReport);  

-- Team financial projections  
CREATE TABLE team_financial_projections (  
    projectionId INTEGER PRIMARY KEY AUTOINCREMENT,  
    teamId INTEGER NOT NULL,  
    fiscalYear INTEGER NOT NULL,  
    revenueForecast REAL,  
    sponsorRevenue REAL,  
    merchandiseRevenue REAL,  
    prizeMoney REAL,  
    operatingExpenses REAL,  
    staffSalaries REAL,  
    rndCosts REAL,  
    travelExpenses REAL,  
    facilityCosts REAL,  
    netProfitForecast REAL,  
    cashReserveEnd REAL,  
    debtLevel REAL,  
    profitMarginPct REAL,  
    currency TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now')),  
    notes TEXT,  
    version TEXT,  
    approvedBy TEXT,  
    approvalDate DATE,  
    scenario TEXT,  
    sensitivityAnalysis TEXT,  
    riskAssessment TEXT,  
    modelUsed TEXT,  
    forecastMethod TEXT,  
    reviewCycleMonths INTEGER,  
    lastReviewed DATE,  
    nextReview DATE,  
    comments TEXT,  
    sourceSystem TEXT,  
    dataQualityScore REAL,  
    auditTrailId INTEGER,  
    complianceFlag INTEGER,  
    externalAuditId INTEGER,  
    reviewStatus TEXT,  
    adjusterName TEXT,  
    adjusterContact TEXT,  
    executiveSummary TEXT,  
    createdBy TEXT,  
    lastModifiedBy TEXT,  
    reservedField1 TEXT,  
    reservedField2 TEXT  
);  

INSERT INTO team_financial_projections (teamId,fiscalYear,revenueForecast,sponsorRevenue,merchandiseRevenue,prizeMoney,operatingExpenses,staffSalaries,rndCosts,travelExpenses,facilityCosts,netProfitForecast,cashReserveEnd,debtLevel,profitMarginPct,currency,notes,version,approvedBy,approvalDate,scenario) VALUES (10,2024,250.0,80.0,30.0,20.0,110.0,45.0,15.0,10.0,5.0,65.0,30.0,10.0,26.0,USD,InitialProjection,V1,FinanceHead,2023-12-01,Base);  
INSERT INTO team_financial_projections (teamId,fiscalYear,revenueForecast,sponsorRevenue,merchandiseRevenue,prizeMoney,operatingExpenses,staffSalaries,rndCosts,travelExpenses,facilityCosts,netProfitForecast,cashReserveEnd,debtLevel,profitMarginPct,currency,notes,version,approvedBy,approvalDate,scenario) VALUES (11,2024,300.0,90.0,35.0,25.0,130.0,55.0,20.0,12.0,7.0,85.0,35.0,12.0,28.3,USD,OptimisticScenario,V2,ChiefOfficer,2023-12-15,Optimistic);  
INSERT INTO team_financial_projections (teamId,fiscalYear,revenueForecast,sponsorRevenue,merchandiseRevenue,prizeMoney,operatingExpenses,staffSalaries,rndCosts,travelExpenses,facilityCosts,netProfitForecast,cashReserveEnd,debtLevel,profitMarginPct,currency,notes,version,approvedBy,approvalDate,scenario) VALUES (12,2024,220.0,70.0,28.0,18.0,100.0,40.0,12.0,9.0,4.0,55.0,28.0,9.0,25.0,USD,PessimisticScenario,V1,AnalystTeam,2023-12-20,Pessimistic);  

-- Media content credit log  
CREATE TABLE media_content_credit_log (  
    creditId INTEGER PRIMARY KEY AUTOINCREMENT,  
    mediaId INTEGER NOT NULL,  
    contentType TEXT,  
    creatorName TEXT,  
    role TEXT,  
    organization TEXT,  
    creditDate DATE,  
    version TEXT,  
    durationSec INTEGER,  
    fileSizeBytes INTEGER,  
    format TEXT,  
    resolution TEXT,  
    language TEXT,  
    region TEXT,  
    rightsHolder TEXT,  
    usageLicense TEXT,  
    royaltyAmount REAL,  
    royaltyCurrency TEXT,  
    notes TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO media_content_credit_log (mediaId,contentType,creatorName,role,organization,creditDate,version,durationSec,fileSizeBytes,format,resolution,language,region,rightsHolder,usageLicense,royaltyAmount,royaltyCurrency,notes) VALUES (1001,Video,JohnDoe,Director,FastMedia,2023-01-15,V1,3600,5000000,MP4,1920x1080,English,Europe,FastMedia,Standard,1500.00,USD,FirstRelease);  
INSERT INTO media_content_credit_log (mediaId,contentType,creatorName,role,organization,creditDate,version,durationSec,fileSizeBytes,format,resolution,language,region,rightsHolder,usageLicense,royaltyAmount,royaltyCurrency,notes) VALUES (1002,Audio,JaneSmith,Composer,SoundWave,2023-02-20,V2,210,1200000,MP3,256kbps,Spanish,Americas,SoundWave,Exclusive,800.00,USD,HitSingle);  
INSERT INTO media_content_credit_log (mediaId,contentType,creatorName,role,organization,creditDate,version,durationSec,fileSizeBytes,format,resolution,language,region,rightsHolder,usageLicense,royaltyAmount,royaltyCurrency,notes) VALUES (1003,Image,AlanLee,Photographer,PixelStudio,2023-03-05,V1,0,250000,JPEG,1920x1080,English,Asia,PixelStudio,Standard,0,USD,PromoImage);  

-- Race emotion analysis  
CREATE TABLE race_emotion_analysis (  
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,  
    raceId INTEGER NOT NULL,  
    driverId INTEGER NOT NULL,  
    segment TEXT,  
    emotionDetected TEXT,  
    confidenceScore REAL,  
    timestampMs INTEGER,  
    cameraId INTEGER,  
    audioLevelDb REAL,  
    heartRateBpm INTEGER,  
    skinConductance REAL,  
    facialExpression TEXT,  
    bodyPosture TEXT,  
    stressLevel REAL,  
    excitementLevel REAL,  
    fatigueLevel REAL,  
    notes TEXT,  
    analystName TEXT,  
    source TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO race_emotion_analysis (raceId,driverId,segment,emotionDetected,confidenceScore,timestampMs,cameraId,audioLevelDb,heartRateBpm,skinConductance,facialExpression,bodyPosture,stressLevel,excitementLevel,fatigueLevel,notes,analystName,source) VALUES (2001,10,Start,Focus,0.95,5000,1,65.0,120,0.12,Neutral,Upright,0.2,0.8,0.1,InitialLap,EmilyJones,Telemetry);  
INSERT INTO race_emotion_analysis (raceId,driverId,segment,emotionDetected,confidenceScore,timestampMs,cameraId,audioLevelDb,heartRateBpm,skinConductance,facialExpression,bodyPosture,stressLevel,excitementLevel,fatigueLevel,notes,analystName,source) VALUES (2002,11,Mid,Anxiety,0.88,15000,2,70.0,130,0.20,Tense,Leaning,0.6,0.5,0.3,OvertakeAttempt,MichaelBrown,Telemetry);  
INSERT INTO race_emotion_analysis (raceId,driverId,segment,emotionDetected,confidenceScore,timestampMs,cameraId,audioLevelDb,heartRateBpm,skinConductance,facialExpression,bodyPosture,stressLevel,excitementLevel,fatigueLevel,notes,analystName,source) VALUES (2003,12,Finish,Joy,0.99,25000,3,60.0,110,0.08,Smiling,Relaxed,0.1,0.9,0.05,VictoryLap,SofiaWhite,Telemetry);  

-- Sponsor media activation metrics  
CREATE TABLE sponsor_media_activation_metrics (  
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,  
    sponsorId INTEGER NOT NULL,  
    activationId INTEGER NOT NULL,  
    mediaChannel TEXT,  
    impressions INTEGER,  
    clicks INTEGER,  
    conversionRatePct REAL,  
    cost REAL,  
    revenueGenerated REAL,  
    startDate DATE,  
    endDate DATE,  
    targetAudience TEXT,  
    geoRegion TEXT,  
    deviceType TEXT,  
    creativeVersion TEXT,  
    cpm REAL,  
    cpc REAL,  
    ctrPct REAL,  
    viewThroughRatePct REAL,  
    notes TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO sponsor_media_activation_metrics (sponsorId,activationId,mediaChannel,impressions,clicks,conversionRatePct,cost,revenueGenerated,startDate,endDate,targetAudience,geoRegion,deviceType,creativeVersion,cpm,cpc,ctrPct,viewThroughRatePct,notes) VALUES (501,10001,SocialMedia,500000,8000,1.6,20000.00,35000.00,2023-04-01,2023-04-30,Adults,Europe,Mobile,V1,40.0,2.5,1.6,30.0,SpringCampaign);  
INSERT INTO sponsor_media_activation_metrics (sponsorId,activationId,mediaChannel,impressions,clicks,conversionRatePct,cost,revenueGenerated,startDate,endDate,targetAudience,geoRegion,deviceType,creativeVersion,cpm,cpc,ctrPct,viewThroughRatePct,notes) VALUES (502,10002,BroadcastTV,1200000,15000,1.25,50000.00,80000.00,2023-05-01,2023-05-31,All,Africa,TV,V2,41.7,3.33,1.25,28.0,SummerSpotlight);  
INSERT INTO sponsor_media_activation_metrics (sponsorId,activationId,mediaChannel,impressions,clicks,conversionRatePct,cost,revenueGenerated,startDate,endDate,targetAudience,geoRegion,deviceType,creativeVersion,cpm,cpc,ctrPct,viewThroughRatePct,notes) VALUES (503,10003,OnlineDisplay,300000,4000,1.33,15000.00,25000.00,2023-06-01,2023-06-30,YoungAdults,Asia,Desktop,V3,50.0,3.75,1.33,32.0,MidSeasonPush);  

-- Fan experience AI feedback  
CREATE TABLE fan_experience_ai_feedback (  
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,  
    fanId INTEGER NOT NULL,  
    eventId INTEGER NOT NULL,  
    interactionType TEXT,  
    aiModelVersion TEXT,  
    sentimentScore REAL,  
    confidencePct REAL,  
    responseTimeMs INTEGER,  
    uiElement TEXT,  
    deviceType TEXT,  
    location TEXT,  
    feedbackText TEXT,  
    processedFlag INTEGER,  
    analystId INTEGER,  
    category TEXT,  
    subcategory TEXT,  
    rating INTEGER,  
    notes TEXT,  
    source TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO fan_experience_ai_feedback (fanId,eventId,interactionType,aiModelVersion,sentimentScore,confidencePct,responseTimeMs,uiElement,deviceType,location,feedbackText,processedFlag,analystId,category,subcategory,rating,notes,source) VALUES (9001,3001,Chatbot,V1,0.78,92.0,150,ChatWindow,Mobile,GrandPrixVenue,GreatExperience,1,1001,Usability,ResponseTime,5,PositiveResponse,App);  
INSERT INTO fan_experience_ai_feedback (fanId,eventId,interactionType,aiModelVersion,sentimentScore,confidencePct,responseTimeMs,uiElement,deviceType,location,feedbackText,processedFlag,analystId,category,subcategory,rating,notes,source) VALUES (9002,3002,ARGuide,V2,0.45,85.0,300,AROverlay,Headset,TrackSide,HardToReadInfo,1,1002,Content,Clarity,3,MixedFeedback,ARApp);  
INSERT INTO fan_experience_ai_feedback (fanId,eventId,interactionType,aiModelVersion,sentimentScore,confidencePct,responseTimeMs,uiElement,deviceType,location,feedbackText,processedFlag,analystId,category,subcategory,rating,notes,source) VALUES (9003,3003,LiveScore,V1,0.90,98.0,80,ScoreBoard,Tablet,PitLane,AccurateScores,1,1003,Reliability,Accuracy,5,ExcellentPerformance,WebApp);  

-- Telemetry prediction models  
CREATE TABLE telemetry_prediction_models (  
    modelId INTEGER PRIMARY KEY AUTOINCREMENT,  
    modelName TEXT,  
    version TEXT,  
    algorithm TEXT,  
    inputFeaturesCount INTEGER,  
    trainingDataSize INTEGER,  
    validationAccuracyPct REAL,  
    testAccuracyPct REAL,  
    trainingStartDate DATE,  
    trainingEndDate DATE,  
    deployedDate DATE,  
    ownerTeamId INTEGER,  
    status TEXT,  
    hyperparameters TEXT,  
    notes TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now')),  
    modelFilePath TEXT,  
    runtimeEnvironment TEXT,  
    computeCostUsd REAL,  
    performanceMetric TEXT,  
    targetVariable TEXT,  
    versionControlId TEXT,  
    deploymentRegion TEXT,  
    latencyMs REAL,  
    throughputRps REAL,  
    monitoringEnabled INTEGER,  
    lastRetrained DATE,  
    retrainScheduleDays INTEGER,  
    dataSource TEXT,  
    featureEngineeringNotes TEXT,  
    modelOwner TEXT,  
    accessPermission TEXT,  
    complianceTag TEXT,  
    auditLogId INTEGER,  
    riskScore REAL,  
    backupLocation TEXT,  
    retirementDate DATE,  
    deprecationReason TEXT,  
    governanceStatus TEXT,  
    stakeholderContact TEXT,  
    documentationUrl TEXT,  
    usageCount INTEGER,  
    lastUsed DATE,  
    lastModifiedBy TEXT,  
    reservedField TEXT  
);  

INSERT INTO telemetry_prediction_models (modelName,version,algorithm,inputFeaturesCount,trainingDataSize,validationAccuracyPct,testAccuracyPct,trainingStartDate,trainingEndDate,deployedDate,ownerTeamId,status,hyperparameters,notes,modelFilePath,runtimeEnvironment,computeCostUsd,performanceMetric,targetVariable,versionControlId) VALUES (LapTimePredictor,V1,GradientBoosting,45,200000,92.5,90.2,2023-01-10,2023-02-20,2023-03-01,20,Active,learningRate=0.01;trees=500,FirstRelease,/models/ltp_v1.pkl,Python3.9,1500.00,RMSE,lapTime,git123abc);  
INSERT INTO telemetry_prediction_models (modelName,version,algorithm,inputFeaturesCount,trainingDataSize,validationAccuracyPct,testAccuracyPct,trainingStartDate,trainingEndDate,deployedDate,ownerTeamId,status,hyperparameters,notes,modelFilePath,runtimeEnvironment,computeCostUsd,performanceMetric,targetVariable,versionControlId) VALUES (PitStopDurationEstimator,V2,NeuralNetwork,60,300000,88.0,85.5,2023-04-05,2023-05-15,2023-06-01,21,Active,layers=4;units=128,SecondIteration,/models/psde_v2.h5,TensorFlow2.6,2000.00,MAE,duration,git456def);  
INSERT INTO telemetry_prediction_models (modelName,version,algorithm,inputFeaturesCount,trainingDataSize,validationAccuracyPct,testAccuracyPct,trainingStartDate,trainingEndDate,deployedDate,ownerTeamId,status,hyperparameters,notes,modelFilePath,runtimeEnvironment,computeCostUsd,performanceMetric,targetVariable,versionControlId) VALUES (FuelConsumptionPredictor,V1,RandomForest,30,150000,94.3,91.0,2023-07-01,2023-08-10,2023-08-20,22,Active,trees=300;maxDepth=20,InitialModel,/models/fcp_v1.pkl,Python3.8,1200.00,R2,fuelRate,git789ghi);  

-- Venue security access logs  
CREATE TABLE venue_security_access_logs (  
    logId INTEGER PRIMARY KEY AUTOINCREMENT,  
    venueId INTEGER NOT NULL,  
    personId INTEGER NOT NULL,  
    accessPoint TEXT,  
    accessTime DATETIME,  
    accessResult TEXT,  
    credentialType TEXT,  
    credentialId TEXT,  
    deviceId TEXT,  
    ipAddress TEXT,  
    locationDescription TEXT,  
    securityLevel INTEGER,  
    reason TEXT,  
    supervisorId INTEGER,  
    shiftId INTEGER,  
    notes TEXT,  
    auditTrailId INTEGER,  
    clearanceLevel INTEGER,  
    verificationMethod TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO venue_security_access_logs (venueId,personId,accessPoint,accessTime,accessResult,credentialType,credentialId,deviceId,ipAddress,locationDescription,securityLevel,reason,supervisorId,shiftId,notes,auditTrailId,clearanceLevel,verificationMethod) VALUES (1,10001,MainGate,2023-09-01 08:00:00,Granted,RFID,RF12345,DEV001,192.168.1.10,NorthEntrance,3,StaffEntry,2001,1,NoIssues,5001,2,CardSwipe);  
INSERT INTO venue_security_access_logs (venueId,personId,accessPoint,accessTime,accessResult,credentialType,credentialId,deviceId,ipAddress,locationDescription,securityLevel,reason,supervisorId,shiftId,notes,auditTrailId,clearanceLevel,verificationMethod) VALUES (1,10002,ControlRoom,2023-09-01 08:15:00,Denied,Biometric,BIO6789,DEV002,192.168.1.11,ControlRoomDoor,5,UnauthorizedAccess,2002,1,AttemptedRestrictedArea,5002,5,FaceScan);  
INSERT INTO venue_security_access_logs (venueId,personId,accessPoint,accessTime,accessResult,credentialType,credentialId,deviceId,ipAddress,locationDescription,securityLevel,reason,supervisorId,shiftId,notes,auditTrailId,clearanceLevel,verificationMethod) VALUES (2,10003,ParkingLot,2023-09-01 09:00:00,Granted,Passcode,PCODE123,DEV003,192.168.2.20,EastParking,2,VendorEntry,2003,2,DeliveredMaterials,5003,1,PinEntry);  

-- Driver cognitive assessment  
CREATE TABLE driver_cognitive_assessment (  
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,  
    driverId INTEGER NOT NULL,  
    assessmentDate DATE,  
    testType TEXT,  
    scoreOverall REAL,  
    scoreMemory REAL,  
    scoreReactionTimeMs REAL,  
    scoreDecisionMaking REAL,  
    scoreSpatialAwareness REAL,  
    stressLevel REAL,  
    fatigueLevel REAL,  
    physicianName TEXT,  
    remarks TEXT,  
    followUpRequired INTEGER,  
    nextAssessmentDate DATE,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now')),  
    assessmentLocation TEXT,  
    testVersion TEXT,  
    notes TEXT,  
    confidencePct REAL,  
    additionalMetrics TEXT,  
    reviewerId INTEGER,  
    approvalStatus TEXT,  
    auditLogId INTEGER,  
    riskCategory TEXT,  
    recommendation TEXT,  
    scheduledBy TEXT,  
    scheduledThrough TEXT,  
    reserved1 TEXT,  
    reserved2 TEXT  
);  

INSERT INTO driver_cognitive_assessment (driverId,assessmentDate,testType,scoreOverall,scoreMemory,scoreReactionTimeMs,scoreDecisionMaking,scoreSpatialAwareness,stressLevel,fatigueLevel,physicianName,remarks,followUpRequired,nextAssessmentDate,assessmentLocation,testVersion,confidencePct) VALUES (10,2023-08-01,NeuroPanel,88.5,90.0,250.0,85.0,87.0,0.3,0.2,DrSmith,AllGood,0,2024-02-01,TeamClinic,V1,95.0);  
INSERT INTO driver_cognitive_assessment (driverId,assessmentDate,testType,scoreOverall,scoreMemory,scoreReactionTimeMs,scoreDecisionMaking,scoreSpatialAwareness,stressLevel,fatigueLevel,physicianName,remarks,followUpRequired,nextAssessmentDate,assessmentLocation,testVersion,confidencePct) VALUES (11,2023-08-15,NeuroPanel,75.0,78.0,300.0,70.0,72.0,0.6,0.5,DrLee,ElevatedStress,1,2023-12-01,TeamClinic,V1,88.0);  
INSERT INTO driver_cognitive_assessment (driverId,assessmentDate,testType,scoreOverall,scoreMemory,scoreReactionTimeMs,scoreDecisionMaking,scoreSpatialAwareness,stressLevel,fatigueLevel,physicianName,remarks,followUpRequired,nextAssessmentDate,assessmentLocation,testVersion,confidencePct) VALUES (12,2023-09-01,NeuroPanel,92.0,94.0,230.0,90.0,91.0,0.2,0.1,DrKim,Excellent,0,2024-03-01,TeamClinic,V2,97.0);  

-- Race technology vendor registry  
CREATE TABLE race_technology_vendor_registry (  
    registryId INTEGER PRIMARY KEY AUTOINCREMENT,  
    raceId INTEGER NOT NULL,  
    vendorId INTEGER NOT NULL,  
    technologyType TEXT,  
    equipmentModel TEXT,  
    serialNumber TEXT,  
    deploymentDate DATE,  
    removalDate DATE,  
    warrantyExpDate DATE,  
    serviceContractId INTEGER,  
    costUsd REAL,  
    status TEXT,  
    responsibleTeamId INTEGER,  
    notes TEXT,  
    complianceCert TEXT,  
    firmwareVersion TEXT,  
    calibrationDate DATE,  
    calibrationDueDate DATE,  
    location TEXT,  
    createdAt DATE DEFAULT (DATE('now')),  
    updatedAt DATE DEFAULT (DATE('now'))  
);  

INSERT INTO race_technology_vendor_registry (raceId,vendorId,technologyType,equipmentModel,serialNumber,deploymentDate,warrantyExpDate,serviceContractId,costUsd,status,responsibleTeamId,notes,complianceCert,firmwareVersion,calibrationDate,location) VALUES (3001,4001,Telemetry,SpeedMaster,SM12345,2023-03-01,2025-03-01,8001,25000.00,Active,45,InstalledAtStartLine,ISO9001,FW1.2,2023-04-01,StartLine);  
INSERT INTO race_technology_vendor_registry (raceId,vendorId,technologyType,equipmentModel,serialNumber,deploymentDate,warrantyExpDate,serviceContractId,costUsd,status,responsibleTeamId,notes,complianceCert,firmwareVersion,calibrationDate,location) VALUES (3002,4002,Camera,VisionPro,VP98765,2023-04-15,2026-04-15,8002,18000.00,Active,46,HighSpeedCorners,ISO14001,FW2.0,2023-05-01,CornerA);  
INSERT INTO race_technology_vendor_registry (raceId,vendorId,technologyType,equipmentModel,serialNumber,deploymentDate,warrantyExpDate,serviceContractId,costUsd,status,responsibleTeamId,notes,complianceCert,firmwareVersion,calibrationDate,location) VALUES (3003,4003,Communication,RadioX,RX55555,2023-05-20,2024-05-20,8003,12000.00,Active,47,TeamRadio,ISO27001,FW3.5,2023-06-01,TeamPit);