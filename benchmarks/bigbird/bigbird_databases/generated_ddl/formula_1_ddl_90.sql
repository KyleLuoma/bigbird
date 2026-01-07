-- Circuit security incident logs
CREATE TABLE circuit_security_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    logTimestamp TEXT,
    cameraId TEXT,
    incidentType TEXT,
    severity INTEGER,
    officerId INTEGER,
    description TEXT,
    videoLink TEXT,
    resolutionStatus TEXT,
    resolutionTime TEXT,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    visibilityM INTEGER,
    lightLevelLux REAL,
    barrierStatus TEXT,
    accessPoint TEXT,
    sensorReading REAL,
    auditUser TEXT,
    auditTimestamp TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO circuit_security_logs (circuitId,logTimestamp,cameraId,incidentType,severity,officerId,description,videoLink,resolutionStatus,resolutionTime,temperatureC,humidityPct,windSpeedKph,visibilityM,lightLevelLux,barrierStatus,accessPoint,sensorReading,auditUser,auditTimestamp) VALUES (1,'2024-03-15 14:22:00','CAM01','UnauthorizedAccess',3,101,'Driver entered restricted area','http://media.example.com/vid1.mp4','Resolved','2024-03-15 14:45:00',22.5,55.0,12.3,8000,450.0,'Closed','GateA',0.98,'admin','2024-03-15 15:00:00');
INSERT INTO circuit_security_logs (circuitId,logTimestamp,cameraId,incidentType,severity,officerId,description,videoLink,resolutionStatus,resolutionTime,temperatureC,humidityPct,windSpeedKph,visibilityM,lightLevelLux,barrierStatus,accessPoint,sensorReading,auditUser,auditTimestamp) VALUES (2,'2024-04-02 09:10:00','CAM07','VehicleCollision',5,104,'Collision between service vehicle and barrier','http://media.example.com/vid2.mp4','Investigating',NULL,18.0,62.0,9.5,5000,300.0,'Damaged','BarrierB',1.42,'security','2024-04-02 09:30:00');
INSERT INTO circuit_security_logs (circuitId,logTimestamp,cameraId,incidentType,severity,officerId,description,videoLink,resolutionStatus,resolutionTime,temperatureC,humidityPct,windSpeedKph,visibilityM,lightLevelLux,barrierStatus,accessPoint,sensorReading,auditUser,auditTimestamp) VALUES (3,'2024-05-20 20:05:00','CAM12','SuspiciousPackage',4,109,'Unidentified package near pit lane','http://media.example.com/vid3.mp4','Escalated','2024-05-20 20:45:00',24.0,48.0,5.0,10000,600.0,'Intact','PitLane',0.75,'ops','2024-05-20 21:00:00');

-- Driver fitness program tracking
CREATE TABLE driver_fitness_programs (
    programId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    programStartDate TEXT,
    programEndDate TEXT,
    trainerId INTEGER,
    cardioHours REAL,
    strengthHours REAL,
    flexibilityHours REAL,
    nutritionPlan TEXT,
    caloriesTarget INTEGER,
    proteinTargetGrams INTEGER,
    carbsTargetGrams INTEGER,
    fatsTargetGrams INTEGER,
    hydrationLiters REAL,
    sleepHoursTarget REAL,
    heartRateResting INTEGER,
    VO2Max REAL,
    flexibilityScore INTEGER,
    enduranceScore INTEGER,
    strengthScore INTEGER,
    injuryRiskLevel TEXT,
    notes TEXT,
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);
INSERT INTO driver_fitness_programs (driverId,programStartDate,programEndDate,trainerId,cardioHours,strengthHours,flexibilityHours,nutritionPlan,caloriesTarget,proteinTargetGrams,carbsTargetGrams,fatsTargetGrams,hydrationLiters,sleepHoursTarget,heartRateResting,VO2Max,flexibilityScore,enduranceScore,strengthScore,injuryRiskLevel,notes) VALUES (12,'2024-01-01','2024-06-30',201,45.5,30.0,12.0,'HighProteinLowCarb',2800,180,200,80,3.5,8.0,60,55.2,85,90,88,'Medium','Improved VO2Max');
INSERT INTO driver_fitness_programs (driverId,programStartDate,programEndDate,trainerId,cardioHours,strengthHours,flexibilityHours,nutritionPlan,caloriesTarget,proteinTargetGrams,carbsTargetGrams,fatsTargetGrams,hydrationLiters,sleepHoursTarget,heartRateResting,VO2Max,flexibilityScore,enduranceScore,strengthScore,injuryRiskLevel,notes) VALUES (27,'2024-02-15','2024-08-15',205,38.0,28.5,15.5,'Balanced',2600,150,250,70,3.0,7.5,58,52.8,78,84,80,'Low','Stable performance');
INSERT INTO driver_fitness_programs (driverId,programStartDate,programEndDate,trainerId,cardioHours,strengthHours,flexibilityHours,nutritionPlan,caloriesTarget,proteinTargetGrams,carbsTargetGrams,fatsTargetGrams,hydrationLiters,sleepHoursTarget,heartRateResting,VO2Max,flexibilityScore,enduranceScore,strengthScore,injuryRiskLevel,notes) VALUES (33,'2024-03-10','2024-09-10',209,50.0,35.0,10.0,'LowCarbHighFat',3000,200,150,100,4.0,8.5,55,57.3,90,95,92,'High','Monitoring knee strain');

-- Race environmental zone definitions
CREATE TABLE race_environmental_zones (
    zoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    zoneName TEXT,
    startLap INTEGER,
    endLap INTEGER,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    precipitationMm REAL,
    airQualityIndex INTEGER,
    noiseLevelDbA REAL,
    dustLevelUgM3 REAL,
    solarRadiationWm2 REAL,
    ozoneLevelDob REAL,
    co2ConcentrationPpm REAL,
    visibilityM INTEGER,
    groundTempC REAL,
    waterTempC REAL,
    humidityDewPointC REAL,
    remarks TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO race_environmental_zones (raceId,zoneName,startLap,endLap,temperatureC,humidityPct,windSpeedKph,precipitationMm,airQualityIndex,noiseLevelDbA,dustLevelUgM3,solarRadiationWm2,ozoneLevelDob,co2ConcentrationPpm,visibilityM,groundTempC,waterTempC,humidityDewPointC,remarks) VALUES (101,'StartGrid',1,3,21.5,60,8.2,0.0,42,85.5,12.3,560,0.030,410,12000,22.0,18.0,12.0,'Clear conditions');
INSERT INTO race_environmental_zones (raceId,zoneName,startLap,endLap,temperatureC,humidityPct,windSpeedKph,precipitationMm,airQualityIndex,noiseLevelDbA,dustLevelUgM3,solarRadiationWm2,ozoneLevelDob,co2ConcentrationPpm,visibilityM,groundTempC,waterTempC,humidityDewPointC,remarks) VALUES (101,'MidRace',4,30,24.0,55,12.5,0.0,35,90.2,18.7,610,0.028,415,15000,24.5,20.0,13.5,'Slight wind gusts');
INSERT INTO race_environmental_zones (raceId,zoneName,startLap,endLap,temperatureC,humidityPct,windSpeedKph,precipitationMm,airQualityIndex,noiseLevelDbA,dustLevelUgM3,solarRadiationWm2,ozoneLevelDob,co2ConcentrationPpm,visibilityM,groundTempC,waterTempC,humidityDewPointC,remarks) VALUES (101,'FinalLap',31,58,26.3,48,14.0,0.0,30,95.0,22.1,680,0.027,420,20000,27.0,22.0,14.0,'Optimal for overtakes');

-- Sponsor engagement events detail
CREATE TABLE sponsor_engagement_events_detail (
    engagementId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventName TEXT,
    eventDate TEXT,
    venue TEXT,
    audienceSize INTEGER,
    activationType TEXT,
    budgetUsd REAL,
    impressions INTEGER,
    clicks INTEGER,
    leadCount INTEGER,
    customHashtag TEXT,
    socialMediaPlatform TEXT,
    onSiteActivities TEXT,
    staffCount INTEGER,
    feedbackScore REAL,
    sponsorRep TEXT,
    contractReference TEXT,
    notes TEXT,
    FOREIGN KEY (sponsorId) REFERENCES sponsors(sponsorId)
);
INSERT INTO sponsor_engagement_events_detail (sponsorId,eventName,eventDate,venue,audienceSize,activationType,budgetUsd,impressions,clicks,leadCount,customHashtag,socialMediaPlatform,onSiteActivities,staffCount,feedbackScore,sponsorRep,contractReference,notes) VALUES (12,'SpeedZone Fan Expo','2024-06-05','Grand Prix Plaza',5000,'InteractiveBooth',250000,1500000,3500,120,'#SpeedZone2024','Instagram','VR Racing Sim',25,4.7,'AliceSmith','CON12345','High engagement with VR demo');
INSERT INTO sponsor_engagement_events_detail (sponsorId,eventName,eventDate,venue,audienceSize,activationType,budgetUsd,impressions,clicks,leadCount,customHashtag,socialMediaPlatform,onSiteActivities,staffCount,feedbackScore,sponsorRep,contractReference,notes) VALUES (18,'EcoDrive Presentation','2024-07-12','Circuit Conference Hall',1200,'PanelDiscussion',120000,800000,1800,80,'#EcoDriveTalk','Twitter','Live Q&A',15,4.2,'BobJones','CON67890','Focused on sustainability tech');
INSERT INTO sponsor_engagement_events_detail (sponsorId,eventName,eventDate,venue,audienceSize,activationType,budgetUsd,impressions,clicks,leadCount,customHashtag,socialMediaPlatform,onSiteActivities,staffCount,feedbackScore,sponsorRep,contractReference,notes) VALUES (22,'TurboBoost Launch','2024-08-20','Main Pit Lane',3000,'ProductLaunch',350000,2000000,5400,250,'#TurboBoost','Facebook','Demo Drives',30,4.9,'CarolLee','CON54321','Record attendance and media coverage');

-- Venue accessibility feature registry
CREATE TABLE venue_accessibility_features (
    featureId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    featureType TEXT,
    description TEXT,
    locationDetail TEXT,
    complianceLevel TEXT,
    installationDate TEXT,
    lastInspectionDate TEXT,
    maintenanceFrequencyDays INTEGER,
    status TEXT,
    responsibleDept TEXT,
    accessibilityRating INTEGER,
    notes TEXT,
    FOREIGN KEY (venueId) REFERENCES circuits(circuitId)
);
INSERT INTO venue_accessibility_features (venueId,featureType,description,locationDetail,complianceLevel,installationDate,lastInspectionDate,maintenanceFrequencyDays,status,responsibleDept,accessibilityRating,notes) VALUES (1,'Ramp','Wheelchair ramp with handrails','Main Entrance','ADA','2018-04-10','2024-01-15',365,'Operational','Facilities','5','Inspected annually');
INSERT INTO venue_accessibility_features (venueId,featureType,description,locationDetail,complianceLevel,installationDate,lastInspectionDate,maintenanceFrequencyDays,status,responsibleDept,accessibilityRating,notes) VALUES (2,'AssistiveListening','Audio induction loops for hearing impaired','Stadium Seats Section B','ISO','2019-09-22','2023-12-01',730,'Operational','AudioTech','4','System upgraded 2022');
INSERT INTO venue_accessibility_features (venueId,featureType,description,locationDetail,complianceLevel,installationDate,lastInspectionDate,maintenanceFrequencyDays,status,responsibleDept,accessibilityRating,notes) VALUES (3,'BrailleSignage','Braille directional signs','Patrol Routes','ADA','2020-02-05','2024-03-10',365,'Operational','Signage','5','Reviewed for completeness');

-- Team aerodynamics projects catalog
CREATE TABLE team_aerodynamics_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    projectName TEXT,
    startDate TEXT,
    endDate TEXT,
    leadEngineer TEXT,
    windTunnelHours REAL,
    cfdSimulations INTEGER,
    targetDownforceNewton REAL,
    targetDragCoefficient REAL,
    materialUsed TEXT,
    budgetUsd REAL,
    status TEXT,
    milestones TEXT,
    riskLevel TEXT,
    complianceNotes TEXT,
    resultsSummary TEXT,
    nextPhaseDate TEXT,
    externalPartner TEXT,
    notes TEXT,
    FOREIGN KEY (teamId) REFERENCES constructors(constructorId)
);
INSERT INTO team_aerodynamics_projects (teamId,projectName,startDate,endDate,leadEngineer,windTunnelHours,cfdSimulations,targetDownforceNewton,targetDragCoefficient,materialUsed,budgetUsd,status,milestones,riskLevel,complianceNotes,resultsSummary,nextPhaseDate,externalPartner,notes) VALUES (5,'LowDragFrontWing','2024-01-01','2024-06-30','EmmaClark',150.5,320,8000,0.28,'CarbonFiber','500000','InProgress','Design,Prototype,Testing','Medium','Meets FIA draft','Preliminary wind‑tunnel shows 8% drag reduction','2024-07-15','AeroTech Ltd','Pending CFD validation');
INSERT INTO team_aerodynamics_projects (teamId,projectName,startDate,endDate,leadEngineer,windTunnelHours,cfdSimulations,targetDownforceNewton,targetDragCoefficient,materialUsed,budgetUsd,status,milestones,riskLevel,complianceNotes,resultsSummary,nextPhaseDate,externalPartner,notes) VALUES (8,'RearDiffuserOptimization','2024-02-15','2024-09-01','LiamNguyen',200.0,450,12000,0.32,'TitaniumAlloy','750000','Planned','Concept,Simulation','High','Awaiting safety clearance','N/A','2024-09-15','WindFlow Solutions','Target 5% downforce increase');
INSERT INTO team_aerodynamics_projects (teamId,projectName,startDate,endDate,leadEngineer,windTunnelHours,cfdSimulations,targetDownforceNewton,targetDragCoefficient,materialUsed,budgetUsd,status,milestones,riskLevel,complianceNotes,resultsSummary,nextPhaseDate,externalPartner,notes) VALUES (12,'ActiveAerodynamicsSystem','2024-03-01','2024-12-31','SofiaMartinez',300.2,600,15000,0.30,'Aluminium','1200000','InProgress','Prototype,Integration,TrackTest','Medium','Compliant with 2024 regs','Bench tests successful','2025-01-10','Dynamic Aero Inc','Scaling up for 2025 season');

-- Media broadcast metadata repository
CREATE TABLE media_broadcast_metadata (
    mediaId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    broadcastDate TEXT,
    channelName TEXT,
    language TEXT,
    durationMinutes INTEGER,
    resolution TEXT,
    bitrateKbps INTEGER,
    audioChannels INTEGER,
    subtitleLanguages TEXT,
    ingestSource TEXT,
    codec TEXT,
    aspectRatio TEXT,
    frameRate REAL,
    contentRating TEXT,
    geoRestriction TEXT,
    sponsorshipTag TEXT,
    commentaryTeam TEXT,
    archiveLocation TEXT,
    notes TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO media_broadcast_metadata (raceId,broadcastDate,channelName,language,durationMinutes,resolution,bitrateKbps,audioChannels,subtitleLanguages,ingestSource,codec,aspectRatio,frameRate,contentRating,geoRestriction,sponsorshipTag,commentaryTeam,archiveLocation,notes) VALUES (101,'2024-08-25','GlobalSportsNet','English',180,'1920x1080',5000,2,'English,Spanish','Satellite','H.264','16:9',59.94,'PG','EU','BrandX','John Doe,Emily Lee','/archive/2024/GP01','Main feed');
INSERT INTO media_broadcast_metadata (raceId,broadcastDate,channelName,language,durationMinutes,resolution,bitrateKbps,audioChannels,subtitleLanguages,ingestSource,codec,aspectRatio,frameRate,contentRating,geoRestriction,sponsorshipTag,commentaryTeam,archiveLocation,notes) VALUES (102,'2024-09-12','SpeedChannel','German',150,'1280x720',3500,2,'German,English','Fiber','HEVC','16:9',50.0,'G','DE','BrandY','Markus Klein','/archive/2024/GP02','Compressed version');
INSERT INTO media_broadcast_metadata (raceId,broadcastDate,channelName,language,durationMinutes,resolution,bitrateKbps,audioChannels,subtitleLanguages,ingestSource,codec,aspectRatio,frameRate,contentRating,geoRestriction,sponsorshipTag,commentaryTeam,archiveLocation,notes) VALUES (103,'2024-10-03','RaceLive','French',200,'3840x2160',8000,6,'French,English','IP','AV1','16:9',60.0,'PG-13','FR','BrandZ','Sophie Dubois','/archive/2024/GP03','4K HDR version');

-- Logistics fuel tracking
CREATE TABLE logistics_fuel_tracking (
    trackingId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    supplierId INTEGER,
    fuelType TEXT,
    quantityLiters REAL,
    deliveryDate TEXT,
    deliveryTime TEXT,
    truckId TEXT,
    driverName TEXT,
    temperatureC REAL,
    humidityPct REAL,
    pressureKpa REAL,
    sealIntact BOOLEAN,
    receiptNumber TEXT,
    costUsd REAL,
    notes TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId),
    FOREIGN KEY (supplierId) REFERENCES sponsors(sponsorId)
);
INSERT INTO logistics_fuel_tracking (raceId,supplierId,fuelType,quantityLiters,deliveryDate,deliveryTime,truckId,driverName,temperatureC,humidityPct,pressureKpa,sealIntact,receiptNumber,costUsd,notes) VALUES (101,15,'PremiumUnleaded',25000,'2024-08-20','08:30','TRK001','John Peters',22.5,55,101.3,1,'RCPT1001',37500,'Delivered before pit lane opening');
INSERT INTO logistics_fuel_tracking (raceId,supplierId,fuelType,quantityLiters,deliveryDate,deliveryTime,truckId,driverName,temperatureC,humidityPct,pressureKpa,sealIntact,receiptNumber,costUsd,notes) VALUES (102,15,'PremiumUnleaded',26000,'2024-09-07','09:10','TRK002','Maria Lopez',24.0,60,100.8,1,'RCPT1002',39000,'Temperature within spec');
INSERT INTO logistics_fuel_tracking (raceId,supplierId,fuelType,quantityLiters,deliveryDate,deliveryTime,truckId,driverName,temperatureC,humidityPct,pressureKpa,sealIntact,receiptNumber,costUsd,notes) VALUES (103,15,'PremiumUnleaded',25500,'2024-09-30','07:45','TRK003','Ahmed Khan',21.0,58,101.0,1,'RCPT1003',38250,'All seals verified');

-- Fan experience rewards catalog
CREATE TABLE fan_experience_rewards_catalog (
    rewardId INTEGER PRIMARY KEY AUTOINCREMENT,
    rewardName TEXT,
    category TEXT,
    pointsRequired INTEGER,
    availabilityStartDate TEXT,
    availabilityEndDate TEXT,
    description TEXT,
    redemptionLimit INTEGER,
    exclusive BOOLEAN,
    imageUrl TEXT,
    tierLevel TEXT,
    partnerBrand TEXT,
    stockQuantity INTEGER,
    expiryDate TEXT,
    termsAndConditions TEXT,
    createdBy TEXT,
    createdDate TEXT,
    lastUpdatedBy TEXT,
    lastUpdatedDate TEXT,
    notes TEXT
);
INSERT INTO fan_experience_rewards_catalog (rewardName,category,pointsRequired,availabilityStartDate,availabilityEndDate,description,redemptionLimit,exclusive,imageUrl,tierLevel,partnerBrand,stockQuantity,expiryDate,termsAndConditions,createdBy,createdDate,lastUpdatedBy,lastUpdatedDate,notes) VALUES ('Pit Lane Walk','Experience',5000,'2024-01-01','2024-12-31','Guided walk through the pit lane during race weekend',100,0,'http://images.example.com/pitwalk.png','Gold','TeamA',200,'2025-01-01','Non‑transferable, must be redeemed on race day','admin','2024-01-01','admin','2024-06-01','Limited availability');
INSERT INTO fan_experience_rewards_catalog (rewardName,category,pointsRequired,availabilityStartDate,availabilityEndDate,description,redemptionLimit,exclusive,imageUrl,tierLevel,partnerBrand,stockQuantity,expiryDate,termsAndConditions,createdBy,createdDate,lastUpdatedBy,lastUpdatedDate,notes) VALUES ('VIP Hospitality Suite','Hospitality',15000,'2024-01-01','2024-12-31','All‑inclusive access to VIP suite with catering',50,1,'http://images.example.com/vip_suite.png','Platinum','LuxuryBrand',50,'2025-12-31','Invitation only, subject to availability','admin','2024-01-01','admin','2024-06-01','High‑value reward');
INSERT INTO fan_experience_rewards_catalog (rewardName,category,pointsRequired,availabilityStartDate,availabilityEndDate,description,redemptionLimit,exclusive,imageUrl,tierLevel,partnerBrand,stockQuantity,expiryDate,termsAndConditions,createdBy,createdDate,lastUpdatedBy,lastUpdatedDate,notes) VALUES ('Virtual Race Sim Session','Digital',2000,'2024-01-01','2024-12-31','Online sim session with professional driver coach',300,0,'http://images.example.com/virtual_sim.png','Silver','SimTech',999,'2025-06-30','One session per participant','admin','2024-01-01','admin','2024-06-01','Scalable digital reward');

-- Official certification history
CREATE TABLE official_certification_history (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId INTEGER,
    certificationType TEXT,
    issuingAuthority TEXT,
    issueDate TEXT,
    expiryDate TEXT,
    certificationNumber TEXT,
    status TEXT,
    renewalReminderDate TEXT,
    notes TEXT,
    FOREIGN KEY (officialId) REFERENCES official_assignments(officialId)
);
INSERT INTO official_certification_history (officialId,certificationType,issuingAuthority,issueDate,expiryDate,certificationNumber,status,renewalReminderDate,notes) VALUES (201,'StewardLicense','FIA','2022-03-15','2025-03-15','STW-001','Active','2025-02-01','Issued after advanced course');
INSERT INTO official_certification_history (officialId,certificationType,issuingAuthority,issueDate,expiryDate,certificationNumber,status,renewalReminderDate,notes) VALUES (202,'SafetyCarOperator','FIA','2021-06-20','2024-06-20','SCO-045','Expired','2024-05-15','Pending renewal');
INSERT INTO official_certification_history (officialId,certificationType,issuingAuthority,issueDate,expiryDate,certificationNumber,status,renewalReminderDate,notes) VALUES (203,'TrackInspector','FIA','2023-01-10','2026-01-10','TIS-078','Active','2025-12-01','Routine inspections completed');

-- Team strategy meeting minutes
CREATE TABLE team_strategy_meetings (
    meetingId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    meetingDate TEXT,
    location TEXT,
    agenda TEXT,
    decisions TEXT,
    actionItems TEXT,
    attendees TEXT,
    leadStrategist TEXT,
    durationMinutes INTEGER,
    followUpDate TEXT,
    status TEXT,
    notes TEXT,
    FOREIGN KEY (teamId) REFERENCES constructors(constructorId)
);
INSERT INTO team_strategy_meetings (teamId,meetingDate,location,agenda,decisions,actionItems,attendees,leadStrategist,durationMinutes,followUpDate,status,notes) VALUES (5,'2024-04-15','Team HQ','Qualifying setup, tyre strategy','Adopt medium compound for Q1','Prepare tyre sets A,B,C','John Doe,Anna Smith,Mark Lee','Laura Patel',90,'2024-04-20','Completed','Minutes recorded');
INSERT INTO team_strategy_meetings (teamId,meetingDate,location,agenda,decisions,actionItems,attendees,leadStrategist,durationMinutes,followUpDate,status,notes) VALUES (8,'2024-05-10','Racing Base','Race start procedure, pit window','Set pit window 15-20 laps','Update pit crew checklist','Mike Tan,Erika Wu,Sam Patel','David Kim',75,'2024-05-15','Completed','Focused on safety');
INSERT INTO team_strategy_meetings (teamId,meetingDate,location,agenda,decisions,actionItems,attendees,leadStrategist,durationMinutes,followUpDate,status,notes) VALUES (12,'2024-06-05','Circuit Hotel','Mid‑season performance review','Introduce new aerodynamic package','Schedule wind‑tunnel test','Liam Ng,Olivia Cruz,Thomas Reed','Sofia Martinez',120,'2024-06-15','Pending','Awaiting test results');

-- Circuit environmental sensor registry
CREATE TABLE circuit_environment_sensor_registry (
    sensorId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    sensorType TEXT,
    model TEXT,
    installationDate TEXT,
    lastCalibrationDate TEXT,
    calibrationIntervalDays INTEGER,
    latitude REAL,
    longitude REAL,
    status TEXT,
    dataEndpoint TEXT,
    firmwareVersion TEXT,
    powerSource TEXT,
    maintenanceContact TEXT,
    notes TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO circuit_environment_sensor_registry (circuitId,sensorType,model,installationDate,lastCalibrationDate,calibrationIntervalDays,latitude,longitude,status,dataEndpoint,firmwareVersion,powerSource,maintenanceContact,notes) VALUES (1,'Temperature','TempX100','2022-05-01','2024-01-10',180,34.0522,-118.2437,'Active','http://sensors.example.com/1','v2.3','Solar','tech1@example.com','Mounted on pole 12');
INSERT INTO circuit_environment_sensor_registry (circuitId,sensorType,model,installationDate,lastCalibrationDate,calibrationIntervalDays,latitude,longitude,status,dataEndpoint,firmwareVersion,powerSource,maintenanceContact,notes) VALUES (2,'WindSpeed','WindPro200','2023-03-15','2024-02-20',365,48.8566,2.3522,'Active','http://sensors.example.com/2','v1.9','Mains','tech2@example.com','Installed near grandstand');
INSERT INTO circuit_environment_sensor_registry (circuitId,sensorType,model,installationDate,lastCalibrationDate,calibrationIntervalDays,latitude,longitude,status,dataEndpoint,firmwareVersion,powerSource,maintenanceContact,notes) VALUES (3,'AirQuality','AQSense300','2021-11-10','2024-03-05',365,51.5074,-0.1278','Active','http://sensors.example.com/3','v3.0','Battery','tech3@example.com','Monitors CO2 and PM2.5');

-- Broadcast advertiser contract details
CREATE TABLE broadcast_advertiser_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    advertiserName TEXT,
    campaignName TEXT,
    contractStartDate TEXT,
    contractEndDate TEXT,
    totalBudgetUsd REAL,
    impressionsTarget INTEGER,
    cpmUsd REAL,
    adSlots INTEGER,
    slotDurationSeconds INTEGER,
    broadcastChannels TEXT,
    regions TEXT,
    creativeFormat TEXT,
    approvalStatus TEXT,
    paymentTerms TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    notes TEXT
);
INSERT INTO broadcast_advertiser_contracts (advertiserName,campaignName,contractStartDate,contractEndDate,totalBudgetUsd,impressionsTarget,cpmUsd,adSlots,slotDurationSeconds,broadcastChannels,regions,creativeFormat,approvalStatus,paymentTerms,contactPerson,contactEmail,notes) VALUES ('TechGear','Summer Speed','2024-04-01','2024-09-30',850000,25000000,34.0,120,30,'GlobalSportsNet,SpeedChannel','EU,NA','Video30','Approved','Net30','James Lee','jlee@techgear.com','High‑impact slots during qualifying');
INSERT INTO broadcast_advertiser_contracts (advertiserName,campaignName,contractStartDate,contractEndDate,totalBudgetUsd,impressionsTarget,cpmUsd,adSlots,slotDurationSeconds,broadcastChannels,regions,creativeFormat,approvalStatus,paymentTerms,contactPerson,contactEmail,notes) VALUES ('EcoFuel','Green Race','2024-05-15','2024-11-15',620000,18000000,34.4,80,45,'RaceLive','EU','Video45','Pending','Net45','Maria Gomez','mgomez@ecofuel.com','Focus on sustainability messaging');
INSERT INTO broadcast_advertiser_contracts (advertiserName,campaignName,contractStartDate,contractEndDate,totalBudgetUsd,impressionsTarget,cpmUsd,adSlots,slotDurationSeconds,broadcastChannels,regions,creativeFormat,approvalStatus,paymentTerms,contactPerson,contactEmail,notes) VALUES ('FastTrack','Mid‑Season Promo','2024-06-01','2024-12-31',470000,12000000,39.2,60,60,'GlobalSportsNet','NA','Video60','Approved','Net60','Peter Novak','pnovak@fasttrack.com','Targeting US audience during race weekends');