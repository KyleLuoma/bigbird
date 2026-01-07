-- Race Thermal Analysis Table
CREATE TABLE race_thermal_analysis (
    analysisId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    circuitId INTEGER,
    temperatureAmbient REAL,
    temperatureTrackSurface REAL,
    humidity REAL,
    windSpeed REAL,
    windDirection TEXT,
    heatIndex REAL,
    thermalCameraId TEXT,
    thermalImageUrl TEXT,
    analysisTimestamp DATE,
    technicianName TEXT,
    notes TEXT,
    sensorCount INTEGER,
    avgSensorTemp REAL,
    maxSensorTemp REAL,
    minSensorTemp REAL,
    deltaTemp REAL,
    calibrationStatus TEXT,
    dataQualityScore REAL
);
INSERT INTO race_thermal_analysis (raceId,circuitId,temperatureAmbient,temperatureTrackSurface,humidity,windSpeed,windDirection,heatIndex,thermalCameraId,thermalImageUrl,analysisTimestamp,technicianName,notes,sensorCount,avgSensorTemp,maxSensorTemp,minSensorTemp,deltaTemp,calibrationStatus,dataQualityScore) VALUES (101,5,28.5,42.3,55.0,12.3,N,33.1,TC01,http://example.com/img1.jpg,2025-03-10,JohnDoe,InitialCheck,8,40.2,45.0,38.5,6.5,OK,0.95);
INSERT INTO race_thermal_analysis (raceId,circuitId,temperatureAmbient,temperatureTrackSurface,humidity,windSpeed,windDirection,heatIndex,thermalCameraId,thermalImageUrl,analysisTimestamp,technicianName,notes,sensorCount,avgSensorTemp,maxSensorTemp,minSensorTemp,deltaTemp,calibrationStatus,dataQualityScore) VALUES (102,3,30.0,44.0,60.0,10.0,NE,35.0,TC02,http://example.com/img2.jpg,2025-04-12,JaneSmith,SecondSession,10,42.0,47.0,39.0,8.0,OK,0.98);
INSERT INTO race_thermal_analysis (raceId,circuitId,temperatureAmbient,temperatureTrackSurface,humidity,windSpeed,windDirection,heatIndex,thermalCameraId,thermalImageUrl,analysisTimestamp,technicianName,notes,sensorCount,avgSensorTemp,maxSensorTemp,minSensorTemp,deltaTemp,calibrationStatus,dataQualityScore) VALUES (103,7,27.2,40.5,50.0,8.5,S,31.5,TC03,http://example.com/img3.jpg,2025-05-08,AlexLee,FinalCheck,7,39.5,44.0,36.0,8.0,OK,0.93);

-- Team Fan Engagement Metrics
CREATE TABLE team_fan_engagement_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    seasonYear INTEGER,
    socialFollowers INTEGER,
    websiteVisits INTEGER,
    newsletterSubscribers INTEGER,
    fanClubMembers INTEGER,
    averageEngagementRate REAL,
    peakEngagementDate DATE,
    topPlatform TEXT,
    videoViews INTEGER,
    blogPosts INTEGER,
    merchandiseSales INTEGER,
    eventAttendance INTEGER,
    hashtagMentions INTEGER,
    sentimentScore REAL,
    loyaltyProgramEnrollments INTEGER,
    appDownloads INTEGER,
    pushNotificationOpens INTEGER,
    emailOpenRate REAL,
    averageSessionDuration REAL,
    uniqueInteractions INTEGER,
    campaignCount INTEGER
);
INSERT INTO team_fan_engagement_metrics (teamId,seasonYear,socialFollowers,websiteVisits,newsletterSubscribers,fanClubMembers,averageEngagementRate,peakEngagementDate,topPlatform,videoViews,blogPosts,merchandiseSales,eventAttendance,hashtagMentions,sentimentScore,loyaltyProgramEnrollments,appDownloads,pushNotificationOpens,emailOpenRate,averageSessionDuration,uniqueInteractions,campaignCount) VALUES (1,2025,150000,1200000,25000,8000,2.5,2025-06-15,Instagram,500000,120,75000,30000,12000,1.8,5000,200000,15000,0.45,5.2,95000,30);
INSERT INTO team_fan_engagement_metrics (teamId,seasonYear,socialFollowers,websiteVisits,newsletterSubscribers,fanClubMembers,averageEngagementRate,peakEngagementDate,topPlatform,videoViews,blogPosts,merchandiseSales,eventAttendance,hashtagMentions,sentimentScore,loyaltyProgramEnrollments,appDownloads,pushNotificationOpens,emailOpenRate,averageSessionDuration,uniqueInteractions,campaignCount) VALUES (2,2025,95000,800000,18000,5000,1.9,2025-05-20,Twitter,300000,95,48000,21000,8500,1.2,3200,120000,9000,0.38,4.7,72000,25);
INSERT INTO team_fan_engagement_metrics (teamId,seasonYear,socialFollowers,websiteVisits,newsletterSubscribers,fanClubMembers,averageEngagementRate,peakEngagementDate,topPlatform,videoViews,blogPosts,merchandiseSales,eventAttendance,hashtagMentions,sentimentScore,loyaltyProgramEnrollments,appDownloads,pushNotificationOpens,emailOpenRate,averageSessionDuration,uniqueInteractions,campaignCount) VALUES (3,2025,210000,1500000,32000,12000,3.1,2025-07-01,YouTube,750000,140,98000,42000,18000,2.3,7200,280000,21000,0.52,6.1,130000,35);

-- Circuit Roadway Surveys
CREATE TABLE circuit_roadway_surveys (
    surveyId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    surveyDate DATE,
    segmentId TEXT,
    surfaceType TEXT,
    thicknessCm REAL,
    roughnessMm REAL,
    drainageRating INTEGER,
    curvatureDeg REAL,
    gradePercent REAL,
    pavementCondition TEXT,
    maintenanceNeeded TEXT,
    inspectorName TEXT,
    photoUrl TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    notes TEXT,
    riskLevel TEXT,
    recommendedAction TEXT,
    followUpDate DATE,
    budgetEstimate REAL,
    contractorId INTEGER,
    status TEXT,
    complianceFlag TEXT
);
INSERT INTO circuit_roadway_surveys (circuitId,surveyDate,segmentId,surfaceType,thicknessCm,roughnessMm,drainageRating,curvatureDeg,gradePercent,pavementCondition,maintenanceNeeded,inspectorName,photoUrl,temperatureC,humidityPercent,windSpeedKph,notes,riskLevel,recommendedAction,followUpDate,budgetEstimate,contractorId,status,complianceFlag) VALUES (5,2025-04-10,S001,Asphalt,7.5,1.2,8,45.0,3.5,Good,None,MarkTaylor,http://example.com/seg1.jpg,22.0,55.0,12.0,NoIssues,Low,Monitor,2025-05-01,15000,101,Open,Yes);
INSERT INTO circuit_roadway_surveys (circuitId,surveyDate,segmentId,surfaceType,thicknessCm,roughnessMm,drainageRating,curvatureDeg,gradePercent,pavementCondition,maintenanceNeeded,inspectorName,photoUrl,temperatureC,humidityPercent,windSpeedKph,notes,riskLevel,recommendedAction,followUpDate,budgetEstimate,contractorId,status,complianceFlag) VALUES (5,2025-06-15,S002,Concrete,12.0,0.8,9,30.0,2.0,Fair,SealCoating,SusanGreen,http://example.com/seg2.jpg,25.0,60.0,10.0,MinorCracks,Medium,Resurface,2025-07-10,45000,102,Planned,Yes);
INSERT INTO circuit_roadway_surveys (circuitId,surveyDate,segmentId,surfaceType,thicknessCm,roughnessMm,drainageRating,curvatureDeg,gradePercent,pavementCondition,maintenanceNeeded,inspectorName,photoUrl,temperatureC,humidityPercent,windSpeedKph,notes,riskLevel,recommendedAction,followUpDate,budgetEstimate,contractorId,status,complianceFlag) VALUES (5,2025-08-20,S003,Asphalt,6.8,1.5,7,60.0,4.0,Poor,FullRepair,DavidLee,http://example.com/seg3.jpg,20.0,50.0,15.0,SurfaceDelamination,High,FullReconstruction,2025-09-15,120000,103,Pending,No);

-- Driver Education Certificates
CREATE TABLE driver_education_certificates (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    certificateName TEXT,
    issuingAuthority TEXT,
    issueDate DATE,
    expiryDate DATE,
    certificateLevel TEXT,
    score REAL,
    trainingHours INTEGER,
    courseCode TEXT,
    classType TEXT,
    instructorName TEXT,
    location TEXT,
    verificationCode TEXT,
    digitalCopyUrl TEXT,
    notes TEXT,
    renewalReminderDate DATE,
    status TEXT,
    complianceFlag TEXT,
    auditTrail TEXT,
    relatedLicenseId INTEGER,
    hazardRecognitionScore REAL,
    vehicleControlScore REAL,
    emergencyProceduresScore REAL,
    ethicsTrainingScore REAL
);
INSERT INTO driver_education_certificates (driverId,certificateName,issuingAuthority,issueDate,expiryDate,certificateLevel,score,trainingHours,courseCode,classType,instructorName,location,verificationCode,digitalCopyUrl,notes,renewalReminderDate,status,complianceFlag,auditTrail,relatedLicenseId,hazardRecognitionScore,vehicleControlScore,emergencyProceduresScore,ethicsTrainingScore) VALUES (12,AdvancedRacingSafety,FIA,2024-09-01,2026-09-01,Level2,89.5,40,AR001,Online,EmilyWhite,Geneva,VR12345,http://example.com/cert12.pdf,Completed,2026-08-15,Active,Yes,LogA,85.0,90.0,88.0,92.0);
INSERT INTO driver_education_certificates (driverId,certificateName,issuingAuthority,issueDate,expiryDate,certificateLevel,score,trainingHours,courseCode,classType,instructorName,location,verificationCode,digitalCopyUrl,notes,renewalReminderDate,status,complianceFlag,auditTrail,relatedLicenseId,hazardRecognitionScore,vehicleControlScore,emergencyProceduresScore,ethicsTrainingScore) VALUES (34,TrackPhysicsBasics,FIA,2023-05-10,2025-05-10,Level1,78.0,30,TPB101,InPerson,JohnBrown,Munich,VR54321,http://example.com/cert34.pdf,Reviewed,2025-04-30,Active,Yes,LogB,70.0,75.0,73.0,80.0);
INSERT INTO driver_education_certificates (driverId,certificateName,issuingAuthority,issueDate,expiryDate,certificateLevel,score,trainingHours,courseCode,classType,instructorName,location,verificationCode,digitalCopyUrl,notes,renewalReminderDate,status,complianceFlag,auditTrail,relatedLicenseId,hazardRecognitionScore,vehicleControlScore,emergencyProceduresScore,ethicsTrainingScore) VALUES (58,AdvancedTelemetryAnalysis,FIA,2025-01-20,2027-01-20,Level3,92.3,45,TTA202,Online,LauraGrey,London,VR67890,http://example.com/cert58.pdf,Pending,2027-01-10,Pending,No,LogC,88.0,91.0,90.0,94.0);

-- Constructor Supply Chain Events
CREATE TABLE constructor_supply_chain_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    eventDate DATE,
    supplierId INTEGER,
    componentCategory TEXT,
    componentPartNumber TEXT,
    quantity INTEGER,
    unitCost REAL,
    totalCost REAL,
    deliveryMode TEXT,
    originCountry TEXT,
    destinationCountry TEXT,
    customsClearanceStatus TEXT,
    leadTimeDays INTEGER,
    qualityRating INTEGER,
    defectCount INTEGER,
    inspectionReportUrl TEXT,
    notes TEXT,
    riskLevel TEXT,
    mitigationStrategy TEXT,
    complianceFlag TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    status TEXT,
    nextReviewDate DATE,
    externalReference TEXT,
    impactScore REAL,
    sustainabilityScore REAL,
    contractReference TEXT
);
INSERT INTO constructor_supply_chain_events (constructorId,eventDate,supplierId,componentCategory,componentPartNumber,quantity,unitCost,totalCost,deliveryMode,originCountry,destinationCountry,customsClearanceStatus,leadTimeDays,qualityRating,defectCount,inspectionReportUrl,notes,riskLevel,mitigationStrategy,complianceFlag,approvedBy,approvalDate,status,nextReviewDate,externalReference,impactScore,sustainabilityScore,contractReference) VALUES (12,2025-03-12,2001,Engine,ENG-5421,4,45000.0,180000.0,Air,UK,Italy,Cleared,7,9,0,http://example.com/inspect12.pdf,OnTime,Low,Standard,Yes,MichaelBrown,2025-03-15,Confirmed,2025-09-15,REF123,0.85,0.90,CONT-ENG01);
INSERT INTO constructor_supply_chain_events (constructorId,eventDate,supplierId,componentCategory,componentPartNumber,quantity,unitCost,totalCost,deliveryMode,originCountry,destinationCountry,customsClearanceStatus,leadTimeDays,qualityRating,defectCount,inspectionReportUrl,notes,riskLevel,mitigationStrategy,complianceFlag,approvedBy,approvalDate,status,nextReviewDate,externalReference,impactScore,sustainabilityScore,contractReference) VALUES (12,2025-04-22,2005,Chassis,CHS-3310,2,25000.0,50000.0,Sea,Germany,France,Pending,14,7,2,http://example.com/inspect13.pdf,DelayDueToWeather,Medium,Expedite,Yes,SarahGreen,2025-04-25,Pending,2025-10-25,REF124,0.78,0.85,CONT-CHS02);
INSERT INTO constructor_supply_chain_events (constructorId,eventDate,supplierId,componentCategory,componentPartNumber,quantity,unitCost,totalCost,deliveryMode,originCountry,destinationCountry,customsClearanceStatus,leadTimeDays,qualityRating,defectCount,inspectionReportUrl,notes,riskLevel,mitigationStrategy,complianceFlag,approvedBy,approvalDate,status,nextReviewDate,externalReference,impactScore,sustainabilityScore,contractReference) VALUES (12,2025-05-30,2010,Aerodynamics,AER-777,1,120000.0,120000.0,Road,USA,Italy,Cleared,3,10,0,http://example.com/inspect14.pdf,Excellent,Low,Maintain,Yes,DavidLee,2025-06-02,Confirmed,2025-12-02,REF125,0.92,0.95,CONT-AER03);

-- Broadcast Social Interactions
CREATE TABLE broadcast_social_interactions (
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    platform TEXT,
    postId TEXT,
    userId TEXT,
    interactionType TEXT,
    interactionTimestamp DATE,
    contentSnippet TEXT,
    likes INTEGER,
    shares INTEGER,
    comments INTEGER,
    reach INTEGER,
    sentimentScore REAL,
    videoViews INTEGER,
    clickThroughRate REAL,
    followerGain INTEGER,
    followerLoss INTEGER,
    hashtagUsed TEXT,
    campaignId TEXT,
    geoLocation TEXT,
    deviceType TEXT,
    language TEXT,
    verifiedUserFlag TEXT,
    engagementScore REAL,
    responseTimeSeconds REAL,
    moderationStatus TEXT,
    notes TEXT,
    sourceChannel TEXT,
    contentCategory TEXT,
    adSpendUSD REAL
);
INSERT INTO broadcast_social_interactions (broadcastId,platform,postId,userId,interactionType,interactionTimestamp,contentSnippet,likes,shares,comments,reach,sentimentScore,videoViews,clickThroughRate,followerGain,followerLoss,hashtagUsed,campaignId,geoLocation,deviceType,language,verifiedUserFlag,engagementScore,responseTimeSeconds,moderationStatus,notes,sourceChannel,contentCategory,adSpendUSD) VALUES (55,Twitter,TW12345,UserA,Like,2025-06-01,GreatRace,150,20,5,12000,0.82,0,0.015,10,0,#F1Race,Camp01,USA,Mobile,EN,Yes,0.78,30.5,Approved,Positive,Tweets,Live,2000.0);
INSERT INTO broadcast_social_interactions (broadcastId,platform,postId,userId,interactionType,interactionTimestamp,contentSnippet,likes,shares,comments,reach,sentimentScore,videoViews,clickThroughRate,followerGain,followerLoss,hashtagUsed,campaignId,geoLocation,deviceType,language,verifiedUserFlag,engagementScore,responseTimeSeconds,moderationStatus,notes,sourceChannel,contentCategory,adSpendUSD) VALUES (55,Instagram,IG98765,UserB,Comment,2025-06-02,WhatAVerify,80,15,12,8000,0.76,3000,0.022,5,1,#F1Race,Camp01,UK,Tablet,EN,No,0.65,45.0,Pending,Neutral,Insta,Story,1500.0);
INSERT INTO broadcast_social_interactions (broadcastId,platform,postId,userId,interactionType,interactionTimestamp,contentSnippet,likes,shares,comments,reach,sentimentScore,videoViews,clickThroughRate,followerGain,followerLoss,hashtagUsed,campaignId,geoLocation,deviceType,language,verifiedUserFlag,engagementScore,responseTimeSeconds,moderationStatus,notes,sourceChannel,contentCategory,adSpendUSD) VALUES (55,Facebook,FB33221,UserC,Share,2025-06-03,ExcitingFinish,200,40,8,15000,0.88,5000,0.018,12,0,#F1Race,Camp01,Canada,Desktop,EN,Yes,0.81,25.0,Approved,Positive,FB,Video,2500.0);

-- Venue Accessibility Audits
CREATE TABLE venue_accessibility_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    auditDate DATE,
    auditorName TEXT,
    wheelchairAccessScore INTEGER,
    visualAidScore INTEGER,
    hearingAidScore INTEGER,
    rampCount INTEGER,
    elevatorCount INTEGER,
    accessibleToiletCount INTEGER,
    signageClarityScore INTEGER,
    staffTrainingLevel TEXT,
    incidentCount INTEGER,
    complaintCount INTEGER,
    improvementRecommendations TEXT,
    complianceStatus TEXT,
    followUpDate DATE,
    budgetAllocation REAL,
    vendorResponsibleId INTEGER,
    notes TEXT,
    overallScore REAL,
    emergencyPlanAccessibility TEXT,
    tactileFlooringScore INTEGER,
    brailleSignageCount INTEGER,
    assistiveDeviceInventory TEXT,
    parkingAccessibleSpots INTEGER,
    shuttleServiceAvailable TEXT,
    auditReportUrl TEXT,
    verificationCode TEXT,
    lastUpdated DATE,
    status TEXT
);
INSERT INTO venue_accessibility_audits (venueId,auditDate,auditorName,wheelchairAccessScore,visualAidScore,hearingAidScore,rampCount,elevatorCount,accessibleToiletCount,signageClarityScore,staffTrainingLevel,incidentCount,complaintCount,improvementRecommendations,complianceStatus,followUpDate,budgetAllocation,vendorResponsibleId,notes,overallScore,emergencyPlanAccessibility,tactileFlooringScore,brailleSignageCount,assistiveDeviceInventory,parkingAccessibleSpots,shuttleServiceAvailable,auditReportUrl,verificationCode,lastUpdated,status) VALUES (12,2025-04-05,AnnaSmith,9,8,7,12,4,6,8,Advanced,0,2,AddMoreRamps,Compliant,2025-06-01,50000.0,201,AllGood,85.0,Yes,8,15,Wheelchairs,20,Yes,http://example.com/audit12.pdf,VC12345,2025-04-10,Open);
INSERT INTO venue_accessibility_audits (venueId,auditDate,auditorName,wheelchairAccessScore,visualAidScore,hearingAidScore,rampCount,elevatorCount,accessibleToiletCount,signageClarityScore,staffTrainingLevel,incidentCount,complaintCount,improvementRecommendations,complianceStatus,followUpDate,budgetAllocation,vendorResponsibleId,notes,overallScore,emergencyPlanAccessibility,tactileFlooringScore,brailleSignageCount,assistiveDeviceInventory,parkingAccessibleSpots,shuttleServiceAvailable,auditReportUrl,verificationCode,lastUpdated,status) VALUES (13,2025-05-12,JamesLee,7,6,5,8,2,4,6,Basic,1,5,UpdateSignage,Partial,2025-07-15,30000.0,202,NeedsImprovement,70.0,No,5,10,AudioDevices,12,No,http://example.com/audit13.pdf,VC54321,2025-05-18,Open);
INSERT INTO venue_accessibility_audits (venueId,auditDate,auditorName,wheelchairAccessScore,visualAidScore,hearingAidScore,rampCount,elevatorCount,accessibleToiletCount,signageClarityScore,staffTrainingLevel,incidentCount,complaintCount,improvementRecommendations,complianceStatus,followUpDate,budgetAllocation,vendorResponsibleId,notes,overallScore,emergencyPlanAccessibility,tactileFlooringScore,brailleSignageCount,assistiveDeviceInventory,parkingAccessibleSpots,shuttleServiceAvailable,auditReportUrl,verificationCode,lastUpdated,status) VALUES (14,2025-03-20,EmilyWhite,8,9,8,10,3,5,9,Advanced,0,1,UpgradeLighting,Compliant,2025-05-20,45000.0,203,Excellent,90.0,Yes,9,12,VisualAids,18,Yes,http://example.com/audit14.pdf,VC67890,2025-03-25,Closed);

-- Fuel Efficiency Study
CREATE TABLE fuel_efficiency_study (
    studyId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    raceId INTEGER,
    fuelType TEXT,
    engineSpec TEXT,
    averageConsumptionLPer100km REAL,
    maxSpeedKph REAL,
    pitStopFuelAddedLiters REAL,
    totalFuelUsedLiters REAL,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    trackSurface TEXT,
    lapCount INTEGER,
    averageLapTime TEXT,
    fastestLapTime TEXT,
    fuelStrategy TEXT,
    telemetryDataUrl TEXT,
    analystName TEXT,
    analysisDate DATE,
    recommendation TEXT,
    confidenceScore REAL,
    notes TEXT,
    status TEXT,
    verificationCode TEXT,
    revisionNumber INTEGER,
    sponsorImpactScore REAL,
    complianceFlag TEXT,
    dataSource TEXT
);
INSERT INTO fuel_efficiency_study (constructorId,raceId,fuelType,engineSpec,averageConsumptionLPer100km,maxSpeedKph,pitStopFuelAddedLiters,totalFuelUsedLiters,weatherCondition,temperatureC,humidityPercent,windSpeedKph,trackSurface,lapCount,averageLapTime,fastestLapTime,fuelStrategy,telemetryDataUrl,analystName,analysisDate,recommendation,confidenceScore,notes,status,verificationCode,revisionNumber,sponsorImpactScore,complianceFlag,dataSource) VALUES (12,101,Petrol,V6Turbo,2.8,320.0,120.5,650.0,Sunny,25.0,45.0,10.0,Asphalt,58,'1:32.450','1:30.200','Balanced',http://example.com/telemetry101.json,LauraGrey,2025-06-15,ReducePitStops,0.92,AllGood,Completed,VC001,1,0.78,Yes,Telemetry);
INSERT INTO fuel_efficiency_study (constructorId,raceId,fuelType,engineSpec,averageConsumptionLPer100km,maxSpeedKph,pitStopFuelAddedLiters,totalFuelUsedLiters,weatherCondition,temperatureC,humidityPercent,windSpeedKph,trackSurface,lapCount,averageLapTime,fastestLapTime,fuelStrategy,telemetryDataUrl,analystName,analysisDate,recommendation,confidenceScore,notes,status,verificationCode,revisionNumber,sponsorImpactScore,complianceFlag,dataSource) VALUES (12,102,Hybrid,V8Hybrid,2.4,330.0,110.0,620.0,Rain,18.0,80.0,15.0,Concrete,60,'1:34.200','1:31.800','Aggressive',http://example.com/telemetry102.json,MarkTaylor,2025-07-20,OptimizeHybridUse,0.95,MinorVariances,Completed,VC002,1,0.85,Yes,Telemetry);
INSERT INTO fuel_efficiency_study (constructorId,raceId,fuelType,engineSpec,averageConsumptionLPer100km,maxSpeedKph,pitStopFuelAddedLiters,totalFuelUsedLiters,weatherCondition,temperatureC,humidityPercent,windSpeedKph,trackSurface,lapCount,averageLapTime,fastestLapTime,fuelStrategy,telemetryDataUrl,analystName,analysisDate,recommendation,confidenceScore,notes,status,verificationCode,revisionNumber,sponsorImpactScore,complianceFlag,dataSource) VALUES (12,103,Electric,PowerUnitE2,1.8,340.0,0.0,500.0,Cloudy,22.0,60.0,8.0,Asphalt,55,'1:30.800','1:28.500','Conservative',http://example.com/telemetry103.json,DavidLee,2025-08-05,EnhanceBatteryCooling,0.88,NoIssues,Completed,VC003,1,0.70,Yes,Telemetry);

-- Pit Stop Performance Logs
CREATE TABLE pit_stop_performance_logs (
    pitLogId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    stopNumber INTEGER,
    lap INTEGER,
    entryTime TEXT,
    exitTime TEXT,
    totalDuration TEXT,
    durationMilliseconds INTEGER,
    tyreCompound TEXT,
    tyreChangeCount INTEGER,
    fuelAddedLiters REAL,
    frontWingAdjustment TEXT,
    rearWingAdjustment TEXT,
    brakeDiscChangeFlag TEXT,
    clutchResetFlag TEXT,
    pitCrewLeader TEXT,
    pitCrewSize INTEGER,
    errorCode TEXT,
    errorDescription TEXT,
    weatherDuringStop TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    notes TEXT,
    complianceFlag TEXT,
    auditTimestamp DATE,
    supervisorName TEXT,
    correctiveAction TEXT,
    status TEXT,
    verificationCode TEXT,
    dataSource TEXT
);
INSERT INTO pit_stop_performance_logs (raceId,driverId,stopNumber,lap,entryTime,exitTime,totalDuration,durationMilliseconds,tyreCompound,tyreChangeCount,fuelAddedLiters,frontWingAdjustment,rearWingAdjustment,brakeDiscChangeFlag,clutchResetFlag,pitCrewLeader,pitCrewSize,errorCode,errorDescription,weatherDuringStop,temperatureC,humidityPercent,notes,complianceFlag,auditTimestamp,supervisorName,correctiveAction,status,verificationCode,dataSource) VALUES (101,12,1,12,'13:45.200','13:45.900','0:00.700',700,'Soft',4,40.0,'+2deg','-1deg','No','No','MikeJordan',6,'','',Sunny,27.0,55.0,'Smooth',Yes,2025-06-15,JohnDoe,','Open',VC01,Telemetry);
INSERT INTO pit_stop_performance_logs (raceId,driverId,stopNumber,lap,entryTime,exitTime,totalDuration,durationMilliseconds,tyreCompound,tyreChangeCount,fuelAddedLiters,frontWingAdjustment,rearWingAdjustment,brakeDiscChangeFlag,clutchResetFlag,pitCrewLeader,pitCrewSize,errorCode,errorDescription,weatherDuringStop,temperatureC,humidityPercent,notes,complianceFlag,auditTimestamp,supervisorName,correctiveAction,status,verificationCode,dataSource) VALUES (101,34,2,24,'14:30.500','14:31.300','0:00.800',800,'Medium',4,35.0,'+1deg','+0deg','Yes','No','SarahLee',7,'E01','WheelLock','Rain',22.0,80.0,'MinorDelay',No,2025-06-15,EmilyWhite,ReplaceBrake,'Closed',VC02,Telemetry);
INSERT INTO pit_stop_performance_logs (raceId,driverId,stopNumber,lap,entryTime,exitTime,totalDuration,durationMilliseconds,tyreCompound,tyreChangeCount,fuelAddedLiters,frontWingAdjustment,rearWingAdjustment,brakeDiscChangeFlag,clutchResetFlag,pitCrewLeader,pitCrewSize,errorCode,errorDescription,weatherDuringStop,temperatureC,humidityPercent,notes,complianceFlag,auditTimestamp,supervisorName,correctiveAction,status,verificationCode,dataSource) VALUES (102,58,1,15,'15:10.250','15:11.100','0:00.850',850,'Hard',2,0.0,'+0deg','-2deg','No','Yes','DavidKim',5,'','',Cloudy,20.0,65.0,'Efficient',Yes,2025-07-20,MarkTaylor,','Open',VC03,Telemetry);

-- Weather Microclimate Events
CREATE TABLE weather_microclimate_events (
    microEventId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    eventTimestamp DATE,
    location TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    windDirection TEXT,
    precipitationMm REAL,
    pressureHpa REAL,
    visibilityKm REAL,
    cloudCoverPercent INTEGER,
    uvIndex INTEGER,
    dewPointC REAL,
    heatIndexC REAL,
    gustSpeedKph REAL,
    sensorId TEXT,
    sensorStatus TEXT,
    dataSource TEXT,
    analysisNotes TEXT,
    impactOnRace TEXT,
    mitigationAction TEXT,
    recordedBy TEXT,
    verificationCode TEXT,
    status TEXT,
    confidenceScore REAL,
    relatedIncidentId INTEGER,
    externalReference TEXT,
    alertLevel TEXT,
    remediationCostUsd REAL,
    dataQualityFlag TEXT,
    lastUpdated DATE
);
INSERT INTO weather_microclimate_events (raceId,eventTimestamp,location,temperatureC,humidityPercent,windSpeedKph,windDirection,precipitationMm,pressureHpa,visibilityKm,cloudCoverPercent,uvIndex,dewPointC,heatIndexC,gustSpeedKph,sensorId,sensorStatus,dataSource,analysisNotes,impactOnRace,mitigationAction,recordedBy,verificationCode,status,confidenceScore,relatedIncidentId,externalReference,alertLevel,remediationCostUsd,dataQualityFlag,lastUpdated) VALUES (101,2025-06-15 14:30:00,Turn1,28.5,60,15,N,0.0,1013,10,20,5,18.0,30.0,20,T001,Active,SensorNet,'Stable conditions',None,None,JohnDoe,VCM001,Open,0.99,NULL,REFM001,Low,0.0,Good,2025-06-15);
INSERT INTO weather_microclimate_events (raceId,eventTimestamp,location,temperatureC,humidityPercent,windSpeedKph,windDirection,precipitationMm,pressureHpa,visibilityKm,cloudCoverPercent,uvIndex,dewPointC,heatIndexC,gustSpeedKph,sensorId,sensorStatus,dataSource,analysisNotes,impactOnRace,mitigationAction,recordedBy,verificationCode,status,confidenceScore,relatedIncidentId,externalReference,alertLevel,remediationCostUsd,dataQualityFlag,lastUpdated) VALUES (101,2025-06-15 15:45:00,Turn5,27.0,65,20,NE,1.2,1010,8,55,6,17.5,32.0,25,T002,Active,SensorNet,'Light rain started',ReducedGrip,IncreaseTireWetness,JaneSmith,VCM002,Open,0.95,12,REFM002,Medium,1500.0,Good,2025-06-15);
INSERT INTO weather_microclimate_events (raceId,eventTimestamp,location,temperatureC,humidityPercent,windSpeedKph,windDirection,precipitationMm,pressureHpa,visibilityKm,cloudCoverPercent,uvIndex,dewPointC,heatIndexC,gustSpeedKph,sensorId,sensorStatus,dataSource,analysisNotes,impactOnRace,mitigationAction,recordedBy,verificationCode,status,confidenceScore,relatedIncidentId,externalReference,alertLevel,remediationCostUsd,dataQualityFlag,lastUpdated) VALUES (102,2025-07-20 13:20:00,StartStraight,22.0,55,10,S,0.0,1015,12,10,4,12.0,25.0,12,T003,Active,SensorNet,'Clear and cool',None,None,DavidLee,VCM003,Open,0.98,NULL,REFM003,Low,0.0,Good,2025-07-20);
