-- Circuit Maintenance Schedule
CREATE TABLE circuit_maintenance_schedule
(
    scheduleId           INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER NOT NULL,
    maintenanceDate      TEXT NOT NULL,
    maintenanceType      TEXT NOT NULL,
    description          TEXT,
    estimatedHours       REAL,
    crewLeadId           INTEGER,
    crewMemberCount      INTEGER,
    equipmentRequired    TEXT,
    costEstimate         REAL,
    approvedBy           TEXT,
    status               TEXT,
    priorityLevel        INTEGER,
    riskLevel            TEXT,
    safetyProtocolId     INTEGER,
    weatherImpactScore   REAL,
    downtimeHours        REAL,
    notificationSent     INTEGER,
    followUpRequired     INTEGER,
    comments             TEXT
);

INSERT INTO circuit_maintenance_schedule (circuitId,maintenanceDate,maintenanceType,description,estimatedHours,crewLeadId,crewMemberCount,equipmentRequired,costEstimate,approvedBy,status,priorityLevel,riskLevel,safetyProtocolId,weatherImpactScore,downtimeHours,notificationSent,followUpRequired,comments) VALUES (1,'2025-06-01','Track Resurfacing','Full resurfacing of the main straight',48.5,101,12,'Paver,Compactor',250000,'Operations','Planned',1,'High',201,0.3,48,1,1,'All permits obtained');
INSERT INTO circuit_maintenance_schedule (circuitId,maintenanceDate,maintenanceType,description,estimatedHours,crewLeadId,crewMemberCount,equipmentRequired,costEstimate,approvedBy,status,priorityLevel,riskLevel,safetyProtocolId,weatherImpactScore,downtimeHours,notificationSent,followUpRequired,comments) VALUES (2,'2025-07-15','Barrier Inspection','Inspect all barriers for wear',8.0,102,4,'Inspection Kit',15000,'Safety','InProgress',2,'Medium',202,0.1,0,1,0,'Inspection to be completed before race weekend');
INSERT INTO circuit_maintenance_schedule (circuitId,maintenanceDate,maintenanceType,description,estimatedHours,crewLeadId,crewMemberCount,equipmentRequired,costEstimate,approvedBy,status,priorityLevel,riskLevel,safetyProtocolId,weatherImpactScore,downtimeHours,notificationSent,followUpRequired,comments) VALUES (3,'2025-08-20','Drainage Cleaning','Clear drainage channels',6.0,103,3,'Excavator',8000,'Engineering','Completed',3,'Low',203,0.0,0,1,0,'No issues found');

-- Driver Physiology Measurements
CREATE TABLE driver_physiology_measurements
(
    measurementId        INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId             INTEGER NOT NULL,
    raceId               INTEGER NOT NULL,
    measurementDate      TEXT NOT NULL,
    heartRateBpm         INTEGER,
    systolicPressure     INTEGER,
    diastolicPressure    INTEGER,
    bloodOxygenSat       REAL,
    bodyTemperatureC     REAL,
    hydrationLevelPct    REAL,
    glucoseLevelMgDl     REAL,
    lactateLevelMmolL    REAL,
    heatStressIndex      REAL,
    fatigueScore         INTEGER,
    reactionTimeMs       REAL,
    focusLevelPct        REAL,
    respiratoryRate      INTEGER,
    cortisolLevelNmolL   REAL,
    sleepHoursPrevNight  REAL,
    nutritionIntakeKcal  INTEGER,
    injuryReport         TEXT
);

INSERT INTO driver_physiology_measurements (driverId,raceId,measurementDate,heartRateBpm,systolicPressure,diastolicPressure,bloodOxygenSat,bodyTemperatureC,hydrationLevelPct,glucoseLevelMgDl,lactateLevelMmolL,heatStressIndex,fatigueScore,reactionTimeMs,focusLevelPct,respiratoryRate,cortisolLevelNmolL,sleepHoursPrevNight,nutritionIntakeKcal,injuryReport) VALUES (10,101,'2025-05-10',78,118,76,98.5,36.7,85,90,1.2,0.5,2,250,92,16,12.5,7.0,2500,'None');
INSERT INTO driver_physiology_measurements (driverId,raceId,measurementDate,heartRateBpm,systolicPressure,diastolicPressure,bloodOxygenSat,bodyTemperatureC,hydrationLevelPct,glucoseLevelMgDl,lactateLevelMmolL,heatStressIndex,fatigueScore,reactionTimeMs,focusLevelPct,respiratoryRate,cortisolLevelNmolL,sleepHoursPrevNight,nutritionIntakeKcal,injuryReport) VALUES (12,102,'2025-06-12',85,124,80,97.8,37.0,78,95,1.5,0.8,4,260,88,18,14.0,6.5,2600,'Mild wrist strain');
INSERT INTO driver_physiology_measurements (driverId,raceId,measurementDate,heartRateBpm,systolicPressure,diastolicPressure,bloodOxygenSat,bodyTemperatureC,hydrationLevelPct,glucoseLevelMgDl,lactateLevelMmolL,heatStressIndex,fatigueScore,reactionTimeMs,focusLevelPct,respiratoryRate,cortisolLevelNmolL,sleepHoursPrevNight,nutritionIntakeKcal,injuryReport) VALUES (15,103,'2025-07-08',72,110,70,99.0,36.5,90,88,0.9,0.3,1,240,95,15,11.0,8.0,2400,'None');

-- Sponsor Engagement Metrics
CREATE TABLE sponsor_engagement_metrics
(
    sponsorMetricId      INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId            INTEGER NOT NULL,
    raceId               INTEGER NOT NULL,
    activationType       TEXT NOT NULL,
    impressions          INTEGER,
    engagements          INTEGER,
    leadsGenerated       INTEGER,
    activationCost       REAL,
    brandExposureHours   REAL,
    socialMediaMentions  INTEGER,
    onsiteSamplesGiven   INTEGER,
    bannerViews          INTEGER,
    digitalClicks        INTEGER,
    audienceReach        INTEGER,
    engagementRatePct    REAL,
    costPerEngagement    REAL,
    activationStartDate  TEXT,
    activationEndDate    TEXT,
    feedbackScore        INTEGER,
    notes                TEXT
);

INSERT INTO sponsor_engagement_metrics (sponsorId,raceId,activationType,impressions,engagements,leadsGenerated,activationCost,brandExposureHours,socialMediaMentions,onsiteSamplesGiven,bannerViews,digitalClicks,audienceReach,engagementRatePct,costPerEngagement,activationStartDate,activationEndDate,feedbackScore,notes) VALUES (201,101,'Pit Lane Banner',50000,1200,45,15000,3.5,250,300,8000,1200,200000,2.4,12.5,'2025-05-10','2025-05-10',8,'Highly effective');
INSERT INTO sponsor_engagement_metrics (sponsorId,raceId,activationType,impressions,engagements,leadsGenerated,activationCost,brandExposureHours,socialMediaMentions,onsiteSamplesGive n,bannerViews,digitalClicks,audienceReach,engagementRatePct,costPerEngagement,activationStartDate,activationEndDate,feedbackScore,notes) VALUES (202,102,'Virtual Reality Booth',30000,800,30,12000,2.0,180,200,5000,900,150000,2.7,15.0,'2025-06-12','2025-06-12',7,'Positive feedback');
INSERT INTO sponsor_engagement_metrics (sponsorId,raceId,activationType,impressions,engagements,leadsGenerated,activationCost,brandExposureHours,socialMediaMentions,onsiteSamplesGiven,bannerViews,digitalClicks,audienceReach,engagementRatePct,costPerEngagement,activationStartDate,activationEndDate,feedbackScore,notes) VALUES (203,103,'Trackside LED',80000,2000,60,20000,4.0,320,500,12000,2500,250000,2.5,10.0,'2025-07-08','2025-07-08',9,'Excellent ROI');

-- Fan Experience Zones
CREATE TABLE fan_experience_zones
(
    zoneId               INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER NOT NULL,
    zoneName             TEXT NOT NULL,
    zoneType             TEXT,
    capacity             INTEGER,
    areaSqMeters         REAL,
    entryTime            TEXT,
    exitTime             TEXT,
    ticketPriceUsd       REAL,
    amenitiesList        TEXT,
    wifiAvailable        INTEGER,
    foodStallsCount      INTEGER,
    merchandiseStalls    INTEGER,
    interactiveFeatures  TEXT,
    accessibilityScore   INTEGER,
    securityStaffCount   INTEGER,
    averageDwellMinutes  REAL,
    sponsorId            INTEGER,
    maintenanceStatus    TEXT,
    notes                TEXT
);

INSERT INTO fan_experience_zones (circuitId,zoneName,zoneType,capacity,areaSqMeters,entryTime,exitTime,ticketPriceUsd,amenitiesList,wifiAvailable,foodStallsCount,merchandiseStalls,interactiveFeatures,accessibilityScore,securityStaffCount,averageDwellMinutes,sponsorId,maintenanceStatus,notes) VALUES (1,'Grandstand West','Seated',20000,15000,'09:00','22:00',150,'Restrooms,Concessions',1,20,15,'AR Simulators',9,30,45.5,201,'Good','High demand area');
INSERT INTO fan_experience_zones (circuitId,zoneName,zoneType,capacity,areaSqMeters,entryTime,exitTime,ticketPriceUsd,amenitiesList,wifiAvailable,foodStallsCount,merchandiseStalls,interactiveFeatures,accessibilityScore,securityStaffCount,averageDwellMinutes,sponsorId,maintenanceStatus,notes) VALUES (2,'Paddock Club','Premium',5000,3000,'08:00','23:00',500,'Lounge,VIP Restrooms',1,8,5,'Live Timing Screens',10,15,120.0,202,'Excellent','Exclusive access');
INSERT INTO fan_experience_zones (circuitId,zoneName,zoneType,capacity,areaSqMeters,entryTime,exitTime,ticketPriceUsd,amenitiesList,wifiAvailable,foodStallsCount,merchandiseStalls,interactiveFeatures,accessibilityScore,securityStaffCount,averageDwellMinutes,sponsorId,maintenanceStatus,notes) VALUES (3,'Fan Zone East','Open',15000,12000,'10:00','21:00',75,'Games,Food Trucks',1,12,10,'VR Racing Pods',8,25,30.0,203,'Good','Family friendly');

-- Telemetry Event Log
CREATE TABLE telemetry_event_log
(
    eventId              INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId               INTEGER NOT NULL,
    driverId             INTEGER NOT NULL,
    timestampMs          INTEGER NOT NULL,
    sensorId             TEXT NOT NULL,
    sensorType           TEXT,
    valueNumeric         REAL,
    valueString          TEXT,
    unit                 TEXT,
    confidenceScore      REAL,
    isAnomaly            INTEGER,
    lapNumber            INTEGER,
    sectorNumber         INTEGER,
    trackSection         TEXT,
    processedFlag        INTEGER,
    rawDataBlob          TEXT,
    comments             TEXT
);

INSERT INTO telemetry_event_log (raceId,driverId,timestampMs,sensorId,sensorType,valueNumeric,valueString,unit,confidenceScore,isAnomaly,lapNumber,sectorNumber,trackSection,processedFlag,rawDataBlob,comments) VALUES (101,10,120450,'SPEED_01','Speed',305.5,'','kmh',0.99,0,12,3,'Turn 3',1,'','Speed peak');
INSERT INTO telemetry_event_log (raceId,driverId,timestampMs,sensorId,sensorType,valueNumeric,valueString,unit,confidenceScore,isAnomaly,lapNumber,sectorNumber,trackSection,processedFlag,rawDataBlob,comments) VALUES (102,12,87530,'BRAKE_PRESS','BrakePressure',85.2,'','bar',0.97,0,7,2,'Straight 2',1,'','Normal braking');
INSERT INTO telemetry_event_log (raceId,driverId,timestampMs,sensorId,sensorType,valueNumeric,valueString,unit,confidenceScore,isAnomaly,lapNumber,sectorNumber,trackSection,processedFlag,rawDataBlob,comments) VALUES (103,15,54210,'G_FORCE','GForce',3.4,'','g',0.94,1,3,1,'Hairpin',0,'','Potential loss of traction');

-- Hospitality Service Requests
CREATE TABLE hospitality_service_requests
(
    requestId            INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId              INTEGER NOT NULL,
    guestId              INTEGER NOT NULL,
    requestDate          TEXT NOT NULL,
    serviceType          TEXT NOT NULL,
    priorityLevel        INTEGER,
    status               TEXT,
    assignedStaffId      INTEGER,
    estimatedCompletion  TEXT,
    actualCompletion     TEXT,
    notes                TEXT,
    quantityRequested    INTEGER,
    specialRequirements  TEXT,
    costEstimateUsd      REAL,
    approvedBy           TEXT,
    contactPhone         TEXT,
    contactEmail         TEXT,
    locationDetail       TEXT,
    feedbackScore        INTEGER,
    resolutionNotes      TEXT
);

INSERT INTO hospitality_service_requests (eventId,guestId,requestDate,serviceType,priorityLevel,status,assignedStaffId,estimatedCompletion,actualCompletion,notes,quantityRequested,specialRequirements,costEstimateUsd,approvedBy,contactPhone,contactEmail,locationDetail,feedbackScore,resolutionNotes) VALUES (301,501,'2025-05-02','Catering','2','Pending',401,'2025-05-04','', 'Vegan menu required',50,'Vegan,GlutenFree',2000,'Manager','5551234567','guest1@example.com','VIP Suite A',0,'');
INSERT INTO hospitality_service_requests (eventId,guestId,requestDate,serviceType,priorityLevel,status,assignedStaffId,estimatedCompletion,actualCompletion,notes,quantityRequested,specialRequirements,costEstimateUsd,approvedBy,contactPhone,contactEmail,locationDetail,feedbackScore,resolutionNotes) VALUES (302,502,'2025-06-10','Transportation','1','Completed',402,'2025-06-11','2025-06-11','Luxury sedan',5,'Chauffeur with English speaking',1500,'Director','5559876543','guest2@example.com','Parking Lot 3',9,'Driver punctual and courteous');
INSERT INTO hospitality_service_requests (eventId,guestId,requestDate,serviceType,priorityLevel,status,assignedStaffId,estimatedCompletion,actualCompletion,notes,quantityRequested,specialRequirements,costEstimateUsd,approvedBy,contactPhone,contactEmail,locationDetail,feedbackScore,resolutionNotes) VALUES (303,503,'2025-07-15','Technical Support','3','InProgress',403,'2025-07-16','', 'Audio system malfunction',1,'Urgent',500,'Ops Lead','5551112222','guest3@example.com','Media Center',0,'');

-- Environmental Noise Monitoring
CREATE TABLE environmental_noise_monitoring
(
    noiseRecordId        INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId            INTEGER NOT NULL,
    measurementDate      TEXT NOT NULL,
    timeOfDay            TEXT,
    decibelLevelA        REAL,
    decibelLevelC        REAL,
    frequencyHz          REAL,
    durationSeconds      REAL,
    sensorId             TEXT,
    weatherCondition     TEXT,
    windSpeedKph         REAL,
    temperatureC         REAL,
    humidityPct          REAL,
    remarks              TEXT,
    complianceStatus     TEXT,
    violationCount       INTEGER,
    averageDecibel       REAL,
    peakDecibel          REAL,
    mitigationAction     TEXT,
    reportedBy           TEXT,
    verificationDate     TEXT
);

INSERT INTO environmental_noise_monitoring (circuitId,measurementDate,timeOfDay,decibelLevelA,decibelLevelC,frequencyHz,durationSeconds,sensorId,weatherCondition,windSpeedKph,temperatureC,humidityPct,remarks,complianceStatus,violationCount,averageDecibel,peakDecibel,mitigationAction,reportedBy,verificationDate) VALUES (1,'2025-05-01','14:30',85.2,78.5,1000,60,'NOISE01','Sunny',12,28,45,'Within limits', 'Compliant',0,80.0,90.5,'', 'Env Officer','2025-05-02');
INSERT INTO environmental_noise_monitoring (circuitId,measurementDate,timeOfDay,decibelLevelA,decibelLevelC,frequencyHz,durationSeconds,sensorId,weatherCondition,windSpeedKph,temperatureC,humidityPct,remarks,complianceStatus,violationCount,averageDecibel,peakDecibel,mitigationAction,reportedBy,verificationDate) VALUES (2,'2025-06-10','19:15',92.5,85.0,1200,45,'NOISE02','Rainy',8,22,70,'Exceeds night limit', 'Violation',1,88.0,95.0,'Installed temporary barriers','Env Officer','2025-06-11');
INSERT INTO environmental_noise_monitoring (circuitId,measurementDate,timeOfDay,decibelLevelA,decibelLevelC,frequencyHz,durationSeconds,sensorId,weatherCondition,windSpeedKph,temperatureC,humidityPct,remarks,complianceStatus,violationCount,averageDecibel,peakDecibel,mitigationAction,reportedBy,verificationDate) VALUES (3,'2025-07-20','11:00',78.0,70.2,900,30,'NOISE03','Cloudy',5,24,55,'Normal operation', 'Compliant',0,77.5,79.0,'', 'Env Officer','2025-07-21');

-- Race Media Content
CREATE TABLE race_media_content
(
    mediaId              INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId               INTEGER NOT NULL,
    mediaType            TEXT NOT NULL,
    fileName             TEXT NOT NULL,
    filePath             TEXT NOT NULL,
    fileSizeBytes        INTEGER,
    durationSeconds      INTEGER,
    resolutionWidth      INTEGER,
    resolutionHeight     INTEGER,
    codec                TEXT,
    bitrateKbps          INTEGER,
    creatorUserId        INTEGER,
    uploadDate           TEXT,
    description          TEXT,
    tags                 TEXT,
    viewCount            INTEGER,
    likeCount           INTEGER,
    commentCount         INTEGER,
    rightsHolder         TEXT,
    licenseType          TEXT,
    archivalStatus       TEXT
);

INSERT INTO race_media_content (raceId,mediaType,fileName,filePath,fileSizeBytes,durationSeconds,resolutionWidth,resolutionHeight,codec,bitrateKbps,creatorUserId,uploadDate,description,tags,viewCount,likeCount,commentCount,rightsholder,licenseType,archivalStatus) VALUES (101,'Video','race101_highlights.mp4','/media/race101/highlights.mp4',250000000,300,1920,1080,'H264',5000,9001,'2025-05-03','Highlights of race 101','highlights,2025,lap',1200,300,45,'MediaDept','Standard','Active');
INSERT INTO race_media_content (raceId,mediaType,fileName,filePath,fileSizeBytes,durationSeconds,resolutionWidth,resolutionHeight,codec,bitrateKbps,creatorUserId,uploadDate,description,tags,viewCount,likeCount,commentCount,rightsholder,licenseType,archivalStatus) VALUES (102,'Image','driver12_podium.jpg','/media/race102/driver12_podium.jpg',3500000,0,3840,2160,'JPEG',0,9002,'2025-06-14','Driver 12 on podium','podium,driver12',800,150,10,'MediaDept','Standard','Active');
INSERT INTO race_media_content (raceId,mediaType,fileName,filePath,fileSizeBytes,durationSeconds,resolutionWidth,resolutionHeight,codec,bitrateKbps,creatorUserId,uploadDate,description,tags,viewCount,likeCount,commentCount,rightsholder,licenseType,archivalStatus) VALUES (103,'Audio','race103_interview.wav','/media/race103/interview.wav',50000000,600,0,0,'PCM',1411,9003,'2025-07-09','Post‑race interview with driver 15','interview,driver15',500,80,5,'MediaDept','Standard','Active');

-- Logistics Vehicle Registry
CREATE TABLE logistics_vehicle_registry
(
    vehicleId            INTEGER PRIMARY KEY AUTOINCREMENT,
    fleetNumber          TEXT NOT NULL,
    vehicleType          TEXT NOT NULL,
    makeModel            TEXT,
    yearManufactured     INTEGER,
    capacityKg           REAL,
    registrationNumber   TEXT,
    driverEmployeeId     INTEGER,
    licenseExpiryDate    TEXT,
    insurancePolicyId    TEXT,
    lastServiceDate      TEXT,
    nextServiceDueKm     REAL,
    currentOdometerKm    REAL,
    fuelType             TEXT,
    fuelCapacityLiters   REAL,
    averageConsumptionLper100km REAL,
    gpsDeviceId          TEXT,
    status               TEXT,
    assignedRouteId      INTEGER,
    notes                TEXT
);

INSERT INTO logistics_vehicle_registry (fleetNumber,vehicleType,makeModel,yearManufactured,capacityKg,registrationNumber,driverEmployeeId,licenseExpiryDate,insurancePolicyId,lastServiceDate,nextServiceDueKm,currentOdometerKm,fuelType,fuelCapacityLiters,averageConsumptionLper100km,gpsDeviceId,status,assignedRouteId,notes) VALUES ('V001','Truck','Volvo FH16',2018,20000,'ABC1234',301,'2026-04-01','INS1001','2025-03-15',25000,40000,'Diesel',600,28,'GPS001','Active',101,'Main equipment transport');
INSERT INTO logistics_vehicle_registry (fleetNumber,vehicleType,makeModel,yearManufactured,capacityKg,registrationNumber,driverEmployeeId,licenseExpiryDate,insurancePolicyId,lastServiceDate,nextServiceDueKm,currentOdometerKm,fuelType,fuelCapacityLiters,averageConsumptionLper100km,gpsDeviceId,status,assignedRouteId,notes) VALUES ('V002','Van','Mercedes Sprinter',2020,1500,'XYZ5678',302,'2025-12-31','INS1002','2025-06-20',15000,8000,'Diesel',80,9,'GPS002','Active',102,'Spare parts delivery');
INSERT INTO logistics_vehicle_registry (fleetNumber,vehicleType,makeModel,yearManufactured,capacityKg,registrationNumber,driverEmployeeId,licenseExpiryDate,insurancePolicyId,lastServiceDate,nextServiceDueKm,currentOdometerKm,fuelType,fuelCapacityLiters,averageConsumptionLper100km,gpsDeviceId,status,assignedRouteId,notes) VALUES ('V003','Trailer','Kögel EuroTrailer',2017,25000,'LMN3456',303,'2025-08-15','INS1003','2025-02-10',30000,120000,'Diesel',0,0,'GPS003','InRepair',103,'Awaiting parts');

-- Broadcast Schedule
CREATE TABLE broadcast_schedule
(
    broadcastId          INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId               INTEGER NOT NULL,
    channelName          TEXT NOT NULL,
    startTimeUtc         TEXT NOT NULL,
    endTimeUtc           TEXT NOT NULL,
    language             TEXT,
    subtitleLanguage     TEXT,
    feedType             TEXT,
    bitrateKbps          INTEGER,
    videoCodec           TEXT,
    audioCodec           TEXT,
    isLive               INTEGER,
    commercialBreaks     TEXT,
    delaySeconds         INTEGER,
    viewerRating         REAL,
    targetAudience       TEXT,
    region               TEXT,
    contactPerson        TEXT,
    contactPhone         TEXT,
    notes                TEXT
);

INSERT INTO broadcast_schedule (raceId,channelName,startTimeUtc,endTimeUtc,language,subtitleLanguage,feedType,bitrateKbps,videoCodec,audioCodec,isLive,commercialBreaks,delaySeconds,viewerRating,targetAudience,region,contactPerson,contactPhone,notes) VALUES (101,'GlobalSports','2025-05-10T13:00:00Z','2025-05-10T15:30:00Z','English','Spanish','HD',3500,'H264','AAC',1,'15:30-15:45;18:00-18:10',0,8.5,'Motorsport Fans','Europe','John Doe','5551230000','Primary feed');
INSERT INTO broadcast_schedule (raceId,channelName,startTimeUtc,endTimeUtc,language,subtitleLanguage,feedType,bitrateKbps,videoCodec,audioCodec,isLive,commercialBreaks,delaySeconds,viewerRating,targetAudience,region,contactPerson,contactPhone,notes) VALUES (102,'SpeedChannel','2025-06-12T10:00:00Z','2025-06-12T12:45:00Z','English','French','FullHD',4500,'H265','Dolby',1,'12:00-12:15',5,9.2,'Racing Enthusiasts','North America','Jane Smith','5559870000','Includes pre‑race analysis');
INSERT INTO broadcast_schedule (raceId,channelName,startTimeUtc,endTimeUtc,language,subtitleLanguage,feedType,bitrateKbps,videoCodec,audioCodec,isLive,commercialBreaks,delaySeconds,viewerRating,targetAudience,region,contactPerson,contactPhone,notes) VALUES (103,'RaceWorld','2025-07-08T18:00:00Z','2025-07-08T20:30:00Z','English','German','HD',3000,'H264','AAC',1,'20:00-20:10',2,7.8,'General Audience','Asia','Mike Lee','5555550000','Late‑night repeat broadcast');

-- Hospitality Service Requests (continued example table with distinct name)
-- (Already created above, no further tables needed)

-- Sponsor Activation Events Log
CREATE TABLE sponsor_activation_events_log
(
    activationLogId      INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId            INTEGER NOT NULL,
    raceId               INTEGER NOT NULL,
    activationDate       TEXT NOT NULL,
    activationType       TEXT NOT NULL,
    locationDetail       TEXT,
    durationHours        REAL,
    audienceReach        INTEGER,
    engagementScore      REAL,
    costUsd              REAL,
    responsibleStaffId   INTEGER,
    approvalStatus       TEXT,
    notes                TEXT,
    mediaAssetId         INTEGER,
    performanceMetric    TEXT,
    feedbackScore        INTEGER,
    followUpRequired     INTEGER,
    followUpDate         TEXT,
    externalPartnerId    INTEGER,
    complianceCheck      TEXT
);

INSERT INTO sponsor_activation_events_log (sponsorId,raceId,activationDate,activationType,locationDetail,durationHours,audienceReach,engagementScore,costUsd,responsibleStaffId,approvalStatus,notes,mediaAssetId,performanceMetric,feedbackScore,followUpRequired,followUpDate,externalPartnerId,complianceCheck) VALUES (201,101,'2025-05-10','Pit Lane Banner','Pit Lane East',2.0,50000,0.85,15000,401,'Approved','Banner displayed successfully',1201,'Impressions',8,0,'','501','Passed');
INSERT INTO sponsor_activation_events_log (sponsorId,raceId,activationDate,activationType,locationDetail,durationHours,audienceReach,engagementScore,costUsd,responsibleStaffId,approvalStatus,notes,mediaAssetId,performanceMetric,feedbackScore,followUpRequired,followUpDate,externalPartnerId,complianceCheck) VALUES (202,102,'2025-06-12','VR Experience Booth','Fan Zone North',4.5,30000,0.92,20000,402,'Approved','High user satisfaction',1202,'Interactions',9,1,'2025-06-20','502','Passed');
INSERT INTO sponsor_activation_events_log (sponsorId,raceId,activationDate,activationType,locationDetail,durationHours,audienceReach,engagementScore,costUsd,responsibleStaffId,approvalStatus,notes,mediaAssetId,performanceMetric,feedbackScore,followUpRequired,followUpDate,externalPartnerId,complianceCheck) VALUES (203,103,'2025-07-08','Trackside LED','Turn 2',3.0,75000,0.78,18000,403,'Pending','Awaiting final content approval',1203,'Visibility',7,1,'2025-07-15','503','Pending');