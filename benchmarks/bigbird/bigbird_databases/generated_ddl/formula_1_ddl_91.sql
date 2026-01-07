-- Circuit Parking Zones
CREATE TABLE circuit_parking_zones (
    zoneId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    zoneName TEXT NOT NULL,
    capacity INTEGER,
    level TEXT,
    isReserved INTEGER,
    accessTimeStart TEXT,
    accessTimeEnd TEXT,
    pricePerHour REAL,
    securityLevel TEXT,
    lightingType TEXT,
    signageCount INTEGER,
    wifiAvailable INTEGER,
    electricChargingSpots INTEGER,
    handicapAccessible INTEGER,
    surveillanceCameras INTEGER,
    entryGateCount INTEGER,
    exitGateCount INTEGER,
    maintenanceSchedule TEXT,
    notes TEXT
);
INSERT INTO circuit_parking_zones (circuitId,zoneName,capacity,level,isReserved,accessTimeStart,accessTimeEnd,pricePerHour,securityLevel,lightingType,signageCount,wifiAvailable,electricChargingSpots,handicapAccessible,surveillanceCameras,entryGateCount,exitGateCount,maintenanceSchedule,notes) VALUES (1,'EastZone',200,'Ground',0,'06:00','22:00',5.0,'High','LED',12,1,4,1,24,2,2,'Monthly','Primary fan parking');
INSERT INTO circuit_parking_zones (circuitId,zoneName,capacity,level,isReserved,accessTimeStart,accessTimeEnd,pricePerHour,securityLevel,lightingType,signageCount,wifiAvailable,electricChargingSpots,handicapAccessible,surveillanceCameras,entryGateCount,exitGateCount,maintenanceSchedule,notes) VALUES (2,'VIPZone',50,'Upper',1,'08:00','23:00',20.0,'VeryHigh','Halogen',6,1,2,1,12,1,1,'Quarterly','Reserved for sponsors');
INSERT INTO circuit_parking_zones (circuitId,zoneName,capacity,level,isReserved,accessTimeStart,accessTimeEnd,pricePerHour,securityLevel,lightingType,signageCount,wifiAvailable,electricChargingSpots,handicapAccessible,surveillanceCameras,entryGateCount,exitGateCount,maintenanceSchedule,notes) VALUES (3,'WestLot',150,'Ground',0,'06:00','22:00',4.5,'Medium','LED',10,1,3,1,18,2,2,'Monthly','General public zone');

-- Driver Fitness Metrics
CREATE TABLE driver_fitness_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    assessmentDate DATE,
    weightKg REAL,
    bodyFatPct REAL,
    vo2Max REAL,
    sprintTime100m REAL,
    agilityScore INTEGER,
    flexibilityScore INTEGER,
    enduranceHours REAL,
    injuryRiskScore INTEGER,
    nutritionPlan TEXT,
    sleepHours REAL,
    hydrationLiters REAL,
    medicalCheckPass INTEGER,
    trainingHoursWeek REAL,
    recoveryDays INTEGER,
    stressLevel INTEGER,
    heartRateRest INTEGER,
    heartRateMax INTEGER,
    notes TEXT
);
INSERT INTO driver_fitness_metrics (driverId,assessmentDate,weightKg,bodyFatPct,vo2Max,sprintTime100m,agilityScore,flexibilityScore,enduranceHours,injuryRiskScore,nutritionPlan,sleepHours,hydrationLiters,medicalCheckPass,trainingHoursWeek,recoveryDays,stressLevel,heartRateRest,heartRateMax,notes) VALUES (10,'2024-03-15',78.5,12.3,55.0,11.8,85,78,5.0,2,'HighProtein',7.5,2.8,1,12.0,2,30,60,190,'Fit and ready');
INSERT INTO driver_fitness_metrics (driverId,assessmentDate,weightKg,bodyFatPct,vo2Max,sprintTime100m,agilityScore,flexibilityScore,enduranceHours,injuryRiskScore,nutritionPlan,sleepHours,hydrationLiters,medicalCheckPass,trainingHoursWeek,recoveryDays,stressLevel,heartRateRest,heartRateMax,notes) VALUES (11,'2024-03-10',82.0,14.0,52.5,12.2,80,70,4.5,3,'Balanced',7.0,2.5,1,10.5,3,35,62,185,'Minor fatigue');
INSERT INTO driver_fitness_metrics (driverId,assessmentDate,weightKg,bodyFatPct,vo2Max,sprintTime100m,agilityScore,flexibilityScore,enduranceHours,injuryRiskScore,nutritionPlan,sleepHours,hydrationLiters,medicalCheckPass,trainingHoursWeek,recoveryDays,stressLevel,heartRateRest,heartRateMax,notes) VALUES (12,'2024-03-12',76.2,11.5,57.0,11.5,88,80,5.5,1,'LowCarb',8.0,3.0,1,13.0,1,25,58,195,'Excellent condition');

-- Sponsor Engagement Activities
CREATE TABLE sponsor_engagement_activities (
    engagementId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    raceId INTEGER,
    activityType TEXT,
    description TEXT,
    startDate DATE,
    endDate DATE,
    targetAudience TEXT,
    budgetUsd REAL,
    impressions INTEGER,
    engagements INTEGER,
    leadsGenerated INTEGER,
    ROI REAL,
    sponsorRep TEXT,
    contactEmail TEXT,
    location TEXT,
    mediaCoverage TEXT,
    socialMediaHashtag TEXT,
    metricsUrl TEXT,
    notes TEXT
);
INSERT INTO sponsor_engagement_activities (sponsorId,raceId,activityType,description,startDate,endDate,targetAudience,budgetUsd,impressions,engagements,leadsGenerated,ROI,sponsorRep,contactEmail,location,mediaCoverage,socialMediaHashtag,metricsUrl,notes) VALUES (5,101,'FanZone','Interactive product showcase','2024-04-01','2024-04-01','Fans',50000,250000,12000,300,4.2,'JohnDoe','john@example.com','Paddock','TV,Online','#FastTrack2024','http://metrics.example.com/1','Successful launch');
INSERT INTO sponsor_engagement_activities (sponsorId,raceId,activityType,description,startDate,endDate,targetAudience,budgetUsd,impressions,engagements,leadsGenerated,ROI,sponsorRep,contactEmail,location,mediaCoverage,socialMediaHashtag,metricsUrl,notes) VALUES (6,102,'Hospitality','VIP dinner with drivers','2024-04-15','2024-04-15','VIPs',75000,50000,8000,150,5.0,'JaneSmith','jane@example.com','GrandStand','Print,Online','#VIPNight','http://metrics.example.com/2','High satisfaction');
INSERT INTO sponsor_engagement_activities (sponsorId,raceId,activityType,description,startDate,endDate,targetAudience,budgetUsd,impressions,engagements,leadsGenerated,ROI,sponsorRep,contactEmail,location,mediaCoverage,socialMediaHashtag,metricsUrl,notes) VALUES (7,103,'Digital','Social media challenge','2024-04-20','2024-04-20','Global Fans',30000,400000,25000,1200,3.5,'MikeLee','mike@example.com','Online','Social','#RaceChallenge','http://metrics.example.com/3','Viral trend');

-- Hospitality Service Requests
CREATE TABLE hospitality_service_requests (
    requestId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    guestId INTEGER,
    requestType TEXT,
    description TEXT,
    requestDate DATE,
    status TEXT,
    assignedStaffId INTEGER,
    completionDate DATE,
    priority INTEGER,
    costUsd REAL,
    supplierId INTEGER,
    approvalRequired INTEGER,
    approvedBy TEXT,
    notes TEXT,
    followUpNeeded INTEGER,
    feedbackScore INTEGER,
    fulfillmentMethod TEXT,
    location TEXT,
    relatedTicketId INTEGER
);
INSERT INTO hospitality_service_requests (eventId,guestId,requestType,description,requestDate,status,assignedStaffId,completionDate,priority,costUsd,supplierId,approvalRequired,approvedBy,notes,followUpNeeded,feedbackScore,fulfillmentMethod,location,relatedTicketId) VALUES (201,301,'Catering','Vegan meal request','2024-03-20','Completed',45,'2024-03-20',2,25.0,12,0,'','Delivered on time',0,9,'InHouse','DiningHall',1001);
INSERT INTO hospitality_service_requests (eventId,guestId,requestType,description,requestDate,status,assignedStaffId,completionDate,priority,costUsd,supplierId,approvalRequired,approvedBy,notes,followUpNeeded,feedbackScore,fulfillmentMethod,location,relatedTicketId) VALUES (202,302,'Transport','Shuttle from hotel','2024-03-22','Pending',58,NULL,1,0,0,1,'ManagerA','Awaiting approval',1,NULL,'External','HotelPickup',1002);
INSERT INTO hospitality_service_requests (eventId,guestId,requestType,description,requestDate,status,assignedStaffId,completionDate,priority,costUsd,supplierId,approvalRequired,approvedBy,notes,followUpNeeded,feedbackScore,fulfillmentMethod,location,relatedTicketId) VALUES (203,303,'Access','Wheelchair ramp request','2024-03-25','InProgress',62,NULL,3,0,0,0,'','Installation scheduled',0,NULL,'InHouse','MainEntrance',1003);

-- Telemetry Event Logs
CREATE TABLE telemetry_event_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    eventTimestamp TEXT,
    sensorId TEXT,
    parameter TEXT,
    value REAL,
    unit TEXT,
    status TEXT,
    anomalyFlag INTEGER,
    processedBy TEXT,
    processingTimeMs INTEGER,
    qualityScore REAL,
    notes TEXT,
    firmwareVersion TEXT,
    batteryLevel REAL,
    signalStrength INTEGER,
    latitude REAL,
    longitude REAL,
    altitude REAL
);
INSERT INTO telemetry_event_logs (raceId,driverId,eventTimestamp,sensorId,parameter,value,unit,status,anomalyFlag,processedBy,processingTimeMs,qualityScore,notes,firmwareVersion,batteryLevel,signalStrength,latitude,longitude,altitude) VALUES (101,10,'2024-04-01T14:23:10Z','S001','speed',215.5,'km/h','OK',0,'systemA',45,0.98,'Normal operation','v1.2',95.0,80,45.123,-93.456,200);
INSERT INTO telemetry_event_logs (raceId,driverId,eventTimestamp,sensorId,parameter,value,unit,status,anomalyFlag,processedBy,processingTimeMs,qualityScore,notes,firmwareVersion,batteryLevel,signalStrength,latitude,longitude,altitude) VALUES (101,11,'2024-04-01T14:23:12Z','S005','gForce',1.8,'g','OK',0,'systemB',30,0.96,'Stable','v1.2',93.5,78,45.124,-93.457,202);
INSERT INTO telemetry_event_logs (raceId,driverId,eventTimestamp,sensorId,parameter,value,unit,status,anomalyFlag,processedBy,processingTimeMs,qualityScore,notes,firmwareVersion,batteryLevel,signalStrength,latitude,longitude,altitude) VALUES (101,12,'2024-04-01T14:23:15Z','S009','engineTemp',96.2,'C','OK',0,'systemA',55,0.99,'Within limits','v1.2',94.2,79,45.125,-93.458,201);

-- Environmental Monitoring Stations
CREATE TABLE environmental_monitoring_stations (
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    stationName TEXT,
    latitude REAL,
    longitude REAL,
    elevation INTEGER,
    installationDate DATE,
    sensorTypes TEXT,
    dataFrequencySec INTEGER,
    maintenanceIntervalDays INTEGER,
    lastMaintenanceDate DATE,
    operatorContact TEXT,
    status TEXT,
    notes TEXT,
    calibrationDate DATE,
    calibrationDue DATE,
    powerSource TEXT,
    connectivityType TEXT,
    dataEndpointUrl TEXT,
    complianceLevel TEXT
);
INSERT INTO environmental_monitoring_stations (circuitId,stationName,latitude,longitude,elevation,installationDate,sensorTypes,dataFrequencySec,maintenanceIntervalDays,lastMaintenanceDate,operatorContact,status,notes,calibrationDate,calibrationDue,powerSource,connectivityType,dataEndpointUrl,complianceLevel) VALUES (1,'StationA',45.123,-93.456,310,'2022-05-01','Temp,Humidity,Wind',60,180,'2024-01-15','techA','Active','No issues','2024-01-01','2024-07-01','Solar','LTE','http://data.example.com/a','Level1');
INSERT INTO environmental_monitoring_stations (circuitId,stationName,latitude,longitude,elevation,installationDate,sensorTypes,dataFrequencySec,maintenanceIntervalDays,lastMaintenanceDate,operatorContact,status,notes,calibrationDate,calibrationDue,powerSource,connectivityType,dataEndpointUrl,complianceLevel) VALUES (2,'StationB',46.234,-94.567,320,'2022-06-10','AirQuality,Noise',120,365,'2023-12-20','techB','Active','Routine check','2023-12-01','2024-12-01','Grid','WiFi','http://data.example.com/b','Level2');
INSERT INTO environmental_monitoring_stations (circuitId,stationName,latitude,longitude,elevation,installationDate,sensorTypes,dataFrequencySec,maintenanceIntervalDays,lastMaintenanceDate,operatorContact,status,notes,calibrationDate,calibrationDue,powerSource,connectivityType,dataEndpointUrl,complianceLevel) VALUES (3,'StationC',47.345,-95.678,300,'2023-01-15','Rainfall,UV',300,730,'2024-02-10','techC','Active','Verified','2024-02-01','2025-02-01','Hybrid','5G','http://data.example.com/c','Level1');

-- Race Media Assets
CREATE TABLE race_media_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    assetType TEXT,
    fileName TEXT,
    filePath TEXT,
    fileSizeBytes INTEGER,
    durationSec INTEGER,
    resolution TEXT,
    codec TEXT,
    createdAt DATE,
    uploadedBy TEXT,
    description TEXT,
    rightsHolder TEXT,
    usageLicense TEXT,
    geoTag TEXT,
    language TEXT,
    captionFile TEXT,
    version INTEGER,
    status TEXT,
    notes TEXT
);
INSERT INTO race_media_assets (raceId,assetType,fileName,filePath,fileSizeBytes,durationSec,resolution,codec,createdAt,uploadedBy,description,rightsHolder,usageLicense,geoTag,language,captionFile,version,status,notes) VALUES (101,'Video','race101_high.mp4','/media/race101/high/',250000000,7200,'1920x1080','H.264','2024-04-01','mediaTeam','Full race broadcast','F1 Org','Standard','45.124,-93.457','EN','/captions/race101_en.srt',1,'Published','');
INSERT INTO race_media_assets (raceId,assetType,fileName,filePath,fileSizeBytes,durationSec,resolution,codec,createdAt,uploadedBy,description,rightsHolder,usageLicense,geoTag,language,captionFile,version,status,notes) VALUES (101,'Audio','race101_commentary.wav','/media/race101/audio/',50000000,7200,'','PCM','2024-04-01','audioTeam','Race commentary','F1 Org','Standard','45.124,-93.457','EN','/captions/race101_en.srt',1,'Published','');
INSERT INTO race_media_assets (raceId,assetType,fileName,filePath,fileSizeBytes,durationSec,resolution,codec,createdAt,uploadedBy,description,rightsHolder,usageLicense,geoTag,language,captionFile,version,status,notes) VALUES (101,'Image','race101_podium.jpg','/media/race101/images/',2000000,0,'3840x2160','JPEG','2024-04-01','photoTeam','Podium ceremony','F1 Org','Standard','45.124,-93.457','EN',NULL,1,'Published','High resolution');

-- Fan Loyalty Transactions
CREATE TABLE fan_loyalty_transactions (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    transactionDate DATE,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    activityType TEXT,
    description TEXT,
    sourceSystem TEXT,
    redemptionItemId INTEGER,
    redemptionItemName TEXT,
    valueUsd REAL,
    tierLevel TEXT,
    expirationDate DATE,
    status TEXT,
    notes TEXT,
    campaignId INTEGER,
    channel TEXT,
    verificationCode TEXT,
    processedBy TEXT
);
INSERT INTO fan_loyalty_transactions (fanId,transactionDate,pointsEarned,pointsRedeemed,activityType,description,sourceSystem,redemptionItemId,redemptionItemName,valueUsd,tierLevel,expirationDate,status,notes,campaignId,channel,verificationCode,processedBy) VALUES (5001,'2024-03-10',1500,0,'RaceAttendance','Attended race101','CRM',NULL,NULL,0,'Gold','2025-03-10','Completed','',101,'Email','ABC123','systemX');
INSERT INTO fan_loyalty_transactions (fanId,transactionDate,pointsEarned,pointsRedeemed,activityType,description,sourceSystem,redemptionItemId,redemptionItemName,valueUsd,tierLevel,expirationDate,status,notes,campaignId,channel,verificationCode,processedBy) VALUES (5002,'2024-03-12',0,1200,'Merchandise','Redeemed team hat','ECom',2001,'TeamHat',45.00,'Silver','2024-09-12','Completed','',102,'Web','XYZ789','systemY');
INSERT INTO fan_loyalty_transactions (fanId,transactionDate,pointsEarned,pointsRedeemed,activityType,description,sourceSystem,redemptionItemId,redemptionItemName,valueUsd,tierLevel,expirationDate,status,notes,campaignId,channel,verificationCode,processedBy) VALUES (5003,'2024-03-15',800,0,'SocialShare','Shared race highlights on Twitter','Social',NULL,NULL,0,'Bronze','2025-03-15','Pending','Awaiting verification',103,'Social','LMN456','systemZ');

-- Circuit Security Incident Logs
CREATE TABLE circuit_security_incident_logs (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    incidentDate DATE,
    incidentTime TEXT,
    incidentType TEXT,
    description TEXT,
    severityLevel INTEGER,
    reportedBy TEXT,
    resolvedBy TEXT,
    resolutionDate DATE,
    status TEXT,
    evidenceFilePath TEXT,
    lockdownFlag INTEGER,
    areaAffected TEXT,
    personnelInvolved INTEGER,
    externalAgency TEXT,
    followUpActions TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);
INSERT INTO circuit_security_incident_logs (circuitId,incidentDate,incidentTime,incidentType,description,severityLevel,reportedBy,resolvedBy,resolutionDate,status,evidenceFilePath,lockdownFlag,areaAffected,personnelInvolved,externalAgency,followUpActions,notes,createdAt,updatedAt) VALUES (1,'2024-03-20','22:15','UnauthorizedAccess','Fence breach near garage',3,'SecGuard1','SecChief','2024-03-20','Closed','/evidence/incident001.mp4',1,'Garage','2','Police','Install additional cameras','Resolved quickly','2024-03-20','2024-03-20');
INSERT INTO circuit_security_incident_logs (circuitId,incidentDate,incidentTime,incidentType,description,severityLevel,reportedBy,resolvedBy,resolutionDate,status,evidenceFilePath,lockdownFlag,areaAffected,personnelInvolved,externalAgency,followUpActions,notes,createdAt,updatedAt) VALUES (2,'2024-03-22','09:30','FireAlarm','Small fire in kitchen area',2,'StaffA','FireDept','2024-03-22','Closed','/evidence/incident002.jpg',0,'Kitchen','1','FireDept','Review fire suppression system','No injuries','2024-03-22','2024-03-22');
INSERT INTO circuit_security_incident_logs (circuitId,incidentDate,incidentTime,incidentType,description,severityLevel,reportedBy,resolvedBy,resolutionDate,status,evidenceFilePath,lockdownFlag,areaAffected,personnelInvolved,externalAgency,followUpActions,notes,createdAt,updatedAt) VALUES (3,'2024-03-25','14:45','Protest','Group protest at main entrance',4,'SecurityLead','PoliceChief','2024-03-25','Closed','/evidence/incident003.mp4',1,'MainEntrance','5','Police','Increase security presence','Managed peacefully','2024-03-25','2024-03-25');

-- Logistics Vehicle Assignments
CREATE TABLE logistics_vehicle_assignments (
    assignmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId INTEGER,
    raceId INTEGER,
    driverStaffId INTEGER,
    departureTime TEXT,
    arrivalTime TEXT,
    purpose TEXT,
    cargoDescription TEXT,
    cargoWeightKg REAL,
    routeId INTEGER,
    fuelStartLiters REAL,
    fuelEndLiters REAL,
    mileageKm REAL,
    maintenanceDueKm REAL,
    assignedBy TEXT,
    status TEXT,
    notes TEXT,
    expectedReturnTime TEXT,
    actualReturnTime TEXT,
    complianceCheck INTEGER
);
INSERT INTO logistics_vehicle_assignments (vehicleId,raceId,driverStaffId,departureTime,arrivalTime,purpose,cargoDescription,cargoWeightKg,routeId,fuelStartLiters,fuelEndLiters,mileageKm,maintenanceDueKm,assignedBy,status,notes,expectedReturnTime,actualReturnTime,complianceCheck) VALUES (301,101,45,'2024-03-30 06:00','2024-03-30 09:00','EquipmentTransport','Tyre racks and tools',1200.5,12,200.0,180.0,350.0,10000,'LogisticsMgr','InTransit','Urgent delivery','2024-03-30 10:00',NULL,1);
INSERT INTO logistics_vehicle_assignments (vehicleId,raceId,driverStaffId,departureTime,arrivalTime,purpose,cargoDescription,cargoWeightKg,routeId,fuelStartLiters,fuelEndLiters,mileageKm,maintenanceDueKm,assignedBy,status,notes,expectedReturnTime,actualReturnTime,complianceCheck) VALUES (302,101,46,'2024-04-01 08:00','2024-04-01 11:30','PPE Supply','Medical kits and masks',800.0,13,150.0,130.0,250.0,9500,'OpsLead','Completed','Delivered on schedule','2024-04-01 12:00','2024-04-01 11:45',1);
INSERT INTO logistics_vehicle_assignments (vehicleId,raceId,driverStaffId,departureTime,arrivalTime,purpose,cargoDescription,cargoWeightKg,routeId,fuelStartLiters,fuelEndLiters,mileageKm,maintenanceDueKm,assignedBy,status,notes,expectedReturnTime,actualReturnTime,complianceCheck) VALUES (303,101,47,'2024-04-02 07:30','2024-04-02 10:15','MediaTransport','Camera rigs and lighting',1500.0,14,250.0,225.0,400.0,12000,'MediaMgr','InTransit','Handled with care','2024-04-02 11:00',NULL,1);