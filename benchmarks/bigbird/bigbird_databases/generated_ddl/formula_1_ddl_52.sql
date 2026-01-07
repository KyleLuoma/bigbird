-- Event sponsor benefits per event
CREATE TABLE event_sponsor_benefits (
    benefitId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    benefitType TEXT NOT NULL,
    description TEXT,
    monetaryValue REAL,
    activationDate DATE,
    expirationDate DATE,
    tiers TEXT,
    audienceReach INTEGER,
    brandExposureScore REAL,
    socialMediaMentions INTEGER,
    onSiteSignageCount INTEGER,
    hospitalityAccessLevel TEXT,
    exclusiveRightsFlag INTEGER,
    customActivations TEXT,
    logoPlacementArea TEXT,
    reductionPercentage REAL,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO event_sponsor_benefits (sponsorId,eventId,benefitType,description,monetaryValue,activationDate,expirationDate,tiers,audienceReach,brandExposureScore,socialMediaMentions,onSiteSignageCount,hospitalityAccessLevel,exclusiveRightsFlag,customActivations,logoPlacementArea,reductionPercentage,notes) VALUES (101, 2021, 'Title', 'Primary naming rights', 5000000, '2021-03-01', '2021-12-31', 'Gold', 2000000, 9.5, 1500, 25, 'Platinum', 1, 'VIP lounge', 'Main Gate', 10.0, 'Renewed annually');
INSERT INTO event_sponsor_benefits (sponsorId,eventId,benefitType,description,monetaryValue,activationDate,expirationDate,tiers,audienceReach,brandExposureScore,socialMediaMentions,onSiteSignageCount,hospitalityAccessLevel,exclusiveRightsFlag,customActivations,logoPlacementArea,reductionPercentage,notes) VALUES (102, 2022, 'Official', 'Official fuel supplier', 1200000, '2022-01-15', '2022-11-30', 'Silver', 1500000, 7.8, 800, 12, 'Gold', 0, 'Pit lane branding', 'Pit Wall', 5.0, 'First year partnership');
INSERT INTO event_sponsor_benefits (sponsorId,eventId,benefitType,description,monetaryValue,activationDate,expirationDate,tiers,audienceReach,brandExposureScore,socialMediaMentions,onSiteSignageCount,hospitalityAccessLevel,exclusiveRightsFlag,customActivations,logoPlacementArea,reductionPercentage,notes) VALUES (103, 2023, 'Media', 'Broadcast partner', 800000, '2023-02-01', '2023-10-31', 'Bronze', 1800000, 6.2, 600, 8, 'Silver', 0, 'Digital ads', 'LED Boards', 0.0, 'Multi-year contract');

-- Circuit transport schedule
CREATE TABLE circuit_transport_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    transportMode TEXT NOT NULL,
    departureTime TIME,
    arrivalTime TIME,
    vehicleId INTEGER,
    driverId INTEGER,
    capacity INTEGER,
    occupancyRate REAL,
    routeNumber TEXT,
    frequencyMinutes INTEGER,
    serviceProvider TEXT,
    maintenanceStatus TEXT,
    wheelchairAccessibleFlag INTEGER,
    ticketPrice REAL,
    ticketCurrency TEXT,
    scheduleDate DATE,
    delayMinutes INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO circuit_transport_schedule (circuitId,transportMode,departureTime,arrivalTime,vehicleId,driverId,capacity,occupancyRate,routeNumber,frequencyMinutes,serviceProvider,maintenanceStatus,wheelchairAccessibleFlag,ticketPrice,ticketCurrency,scheduleDate,delayMinutes,notes) VALUES (1, 'Shuttle Bus', '08:00', '08:30', 501, 2001, 50, 0.75, 'SB01', 30, 'CityTransit', 'Operational', 1, 5.00, 'USD', '2024-03-15', 0, 'Morning service');
INSERT INTO circuit_transport_schedule (circuitId,transportMode,departureTime,arrivalTime,vehicleId,driverId,capacity,occupancyRate,routeNumber,frequencyMinutes,serviceProvider,maintenanceStatus,wheelchairAccessibleFlag,ticketPrice,ticketCurrency,scheduleDate,delayMinutes,notes) VALUES (2, 'Tram', '09:15', '09:45', 602, 2002, 70, 0.60, 'TR12', 45, 'MetroLink', 'Operational', 1, 7.50, 'USD', '2024-03-15', 5, 'Minor delay due to traffic');
INSERT INTO circuit_transport_schedule (circuitId,transportMode,departureTime,arrivalTime,vehicleId,driverId,capacity,occupancyRate,routeNumber,frequencyMinutes,serviceProvider,maintenanceStatus,wheelchairAccessibleFlag,ticketPrice,ticketCurrency,scheduleDate,delayMinutes,notes) VALUES (3, 'Electric Van', '10:30', '11:00', 703, 2003, 30, 0.90, 'EV09', 60, 'GreenTransit', 'Operational', 1, 6.00, 'USD', '2024-03-15', 0, 'Eco friendly transport');

-- Driver psychological profile
CREATE TABLE driver_psych_profile (
    profileId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    assessmentDate DATE,
    stressLevelScore REAL,
    focusScore REAL,
    emotionalStabilityScore REAL,
    riskTakingScore REAL,
    confidenceScore REAL,
    sleepQualityScore REAL,
    nutritionScore REAL,
    caffeineIntakeMg INTEGER,
    meditationMinutes INTEGER,
    therapySessionsCount INTEGER,
    mentalHealthNotes TEXT,
    psychologistId INTEGER,
    followUpDate DATE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    overallWellbeingScore REAL,
    remarks TEXT,
    lastModifiedBy TEXT
);
INSERT INTO driver_psych_profile (driverId,assessmentDate,stressLevelScore,focusScore,emotionalStabilityScore,riskTakingScore,confidenceScore,sleepQualityScore,nutritionScore,caffeineIntakeMg,meditationMinutes,therapySessionsCount,mentalHealthNotes,psychologistId,followUpDate,overallWellbeingScore,remarks,lastModifiedBy) VALUES (301,'2024-02-10',3.2,8.5,7.9,4.1,9.0,8.0,7.5,150,20,2,'Stable mood',401,'2024-03-01',8.1,'Good performance','system');
INSERT INTO driver_psych_profile (driverId,assessmentDate,stressLevelScore,focusScore,emotionalStabilityScore,riskTakingScore,confidenceScore,sleepQualityScore,nutritionScore,caffeineIntakeMg,meditationMinutes,therapySessionsCount,mentalHealthNotes,psychologistId,followUpDate,overallWellbeingScore,remarks,lastModifiedBy) VALUES (302,'2024-02-12',5.0,7.0,6.5,6.8,8.2,6.5,6.8,200,10,1,'Occasional anxiety',402,'2024-03-05',7.2,'Monitor stress','system');
INSERT INTO driver_psych_profile (driverId,assessmentDate,stressLevelScore,focusScore,emotionalStabilityScore,riskTakingScore,confidenceScore,sleepQualityScore,nutritionScore,caffeineIntakeMg,meditationMinutes,therapySessionsCount,mentalHealthNotes,psychologistId,followUpDate,overallWellbeingScore,remarks,lastModifiedBy) VALUES (303,'2024-02-15',2.5,9.0,8.8,3.0,9.5,9.2,8.9,100,30,3,'Excellent mental state',403,'2024-03-10',9.0,'Peak condition','system');

-- Media broadcast assets
CREATE TABLE media_broadcast_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    assetType TEXT NOT NULL,
    fileName TEXT,
    filePath TEXT,
    durationSeconds INTEGER,
    resolution TEXT,
    codec TEXT,
    broadcastChannel TEXT,
    language TEXT,
    subtitlesFlag INTEGER,
    rightsHolder TEXT,
    uploadDate DATE,
    fileSizeBytes INTEGER,
    checksum TEXT,
    thumbnailPath TEXT,
    description TEXT,
    approvedFlag INTEGER,
    approverId INTEGER,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO media_broadcast_assets (raceId,assetType,fileName,filePath,durationSeconds,resolution,codec,broadcastChannel,language,subtitlesFlag,rightsHolder,uploadDate,fileSizeBytes,checksum,thumbnailPath,description,approvedFlag,approverId) VALUES (401,'Video','race_highlights.mp4','/media/2024/03/','1800','1920x1080','H264','ChannelOne','English',1,'MediaCorp','2024-03-16',250000000,'abc123def','/thumbs/highlights.jpg','Full race highlights','1',501);
INSERT INTO media_broadcast_assets (raceId,assetType,fileName,filePath,durationSeconds,resolution,codec,broadcastChannel,language,subtitlesFlag,rightsHolder,uploadDate,fileSizeBytes,checksum,thumbnailPath,description,approvedFlag,approverId) VALUES (402,'Audio','post_race_interview.mp3','/audio/2024/03/','300','NA','MP3','ChannelTwo','English',0,'AudioInc','2024-03-16',15000000,'def456ghi','/thumbs/interview.jpg','Driver post race interview','1',502);
INSERT INTO media_broadcast_assets (raceId,assetType,fileName,filePath,durationSeconds,resolution,codec,broadcastChannel,language,subtitlesFlag,rightsHolder,uploadDate,fileSizeBytes,checksum,thumbnailPath,description,approvedFlag,approverId) VALUES (403,'Graphic','race_stats.png','/graphics/2024/03/','0','1280x720','PNG','ChannelThree','English',0,'DesignStudio','2024-03-16',2000000,'ghi789jkl','/thumbs/stats.png','Race statistics infographic','1',503);

-- Venue food service logs
CREATE TABLE venue_food_service_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    servicePointId INTEGER,
    timestamp DATETIME,
    staffId INTEGER,
    itemSold TEXT,
    quantity INTEGER,
    unitPrice REAL,
    totalPrice REAL,
    paymentMethod TEXT,
    customerFeedback TEXT,
    temperatureCelsius REAL,
    hygieneScore INTEGER,
    equipmentId INTEGER,
    maintenanceFlag INTEGER,
    shiftId INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    auditUser TEXT
);
INSERT INTO venue_food_service_logs (venueId,eventId,servicePointId,timestamp,staffId,itemSold,quantity,unitPrice,totalPrice,paymentMethod,customerFeedback,temperatureCelsius,hygieneScore,equipmentId,maintenanceFlag,shiftId,notes,auditUser) VALUES (1,301,10,'2024-03-15 12:05:00',601,'HotDog',2,4.5,9.0,'Card','Good','22.5',95,1001,0,1,'No issues','system');
INSERT INTO venue_food_service_logs (venueId,eventId,servicePointId,timestamp,staffId,itemSold,quantity,unitPrice,totalPrice,paymentMethod,customerFeedback,temperatureCelsius,hygieneScore,equipmentId,maintenanceFlag,shiftId,notes,auditUser) VALUES (1,301,11,'2024-03-15 12:15:00',602,'Soda',1,2.0,2.0,'Cash','Cold','22.0',98,1002,0,1,'Refilled fridge','system');
INSERT INTO venue_food_service_logs (venueId,eventId,servicePointId,timestamp,staffId,itemSold,quantity,unitPrice,totalPrice,paymentMethod,customerFeedback,temperatureCelsius,hygieneScore,equipmentId,maintenanceFlag,shiftId,notes,auditUser) VALUES (2,302,20,'2024-03-15 13:20:00',603,'Burger',1,6.0,6.0,'Card','Warm','23.0',92,2001,0,2,'Extra ketchup requested','system');

-- Team aerodynamic test results
CREATE TABLE team_aero_test_results (
    testId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    testDate DATE,
    windTunnelId INTEGER,
    modelScale REAL,
    airspeedKph REAL,
    downforceN REAL,
    dragCoefficient REAL,
    liftCoefficient REAL,
    temperatureC REAL,
    humidityPct REAL,
    pressurePa REAL,
    comment TEXT,
    passFlag INTEGER,
    engineerId INTEGER,
    dataFilePath TEXT,
    revisionNumber INTEGER,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    overallScore REAL,
    riskLevel TEXT
);
INSERT INTO team_aero_test_results (teamId,testDate,windTunnelId,modelScale,airspeedKph,downforceN,dragCoefficient,liftCoefficient,temperatureC,humidityPct,pressurePa,comment,passFlag,engineerId,dataFilePath,revisionNumber,overallScore,riskLevel) VALUES (701,'2024-02-20',301,0.25,200,1500,0.32,0.15,20.0,55,101325,'All parameters within target','1',801,'/aero/2024/02/20/test1.csv',3,8.7,'Low');
INSERT INTO team_aero_test_results (teamId,testDate,windTunnelId,modelScale,airspeedKph,downforceN,dragCoefficient,liftCoefficient,temperatureC,humidityPct,pressurePa,comment,passFlag,engineerId,dataFilePath,revisionNumber,overallScore,riskLevel) VALUES (702,'2024-02-22',302,0.30,210,1600,0.35,0.14,19.5,58,101300,'Slight increase in drag','0',802,'/aero/2024/02/22/test2.csv',2,6.5,'Medium');
INSERT INTO team_aero_test_results (teamId,testDate,windTunnelId,modelScale,airspeedKph,downforceN,dragCoefficient,liftCoefficient,temperatureC,humidityPct,pressurePa,comment,passFlag,engineerId,dataFilePath,revisionNumber,overallScore,riskLevel) VALUES (703,'2024-02-25',303,0.20,190,1400,0.30,0.16,21.0,52,101400,'Excellent downforce','1',803,'/aero/2024/02/25/test3.csv',4,9.2,'Low');

-- Fan experience interactions
CREATE TABLE fan_experience_interactions (
    interactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    raceId INTEGER NOT NULL,
    interactionType TEXT,
    location TEXT,
    timestamp DATETIME,
    deviceId TEXT,
    appVersion TEXT,
    pointsEarned INTEGER,
    rewardId INTEGER,
    feedbackScore INTEGER,
    comments TEXT,
    redeemedFlag INTEGER,
    staffAssistedId INTEGER,
    channel TEXT,
    mediaId INTEGER,
    sponsorId INTEGER,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    sessionDurationSec INTEGER,
    interactionDetail TEXT
);
INSERT INTO fan_experience_interactions (fanId,raceId,interactionType,location,timestamp,deviceId,appVersion,pointsEarned,rewardId,feedbackScore,comments,redeemedFlag,staffAssistedId,channel,mediaId,sponsorId,sessionDurationSec,interactionDetail) VALUES (1001,401,'CheckIn','Gate A','2024-03-15 09:00:00','devA1','1.2.0',50,301,9,'Smooth','1',2001,'Mobile','5001',101,120,'Checked in via QR');
INSERT INTO fan_experience_interactions (fanId,raceId,interactionType,location,timestamp,deviceId,appVersion,pointsEarned,rewardId,feedbackScore,comments,redeemedFlag,staffAssistedId,channel,mediaId,sponsorId,sessionDurationSec,interactionDetail) VALUES (1002,401,'Game','Paddock','2024-03-15 10:15:00','devB2','1.2.0',30,302,8,'Fun game','0',2002,'Tablet','5002',102,90,'Pit lane trivia');
INSERT INTO fan_experience_interactions (fanId,raceId,interactionType,location,timestamp,deviceId,appVersion,pointsEarned,rewardId,feedbackScore,comments,redeemedFlag,staffAssistedId,channel,mediaId,sponsorId,sessionDurationSec,interactionDetail) VALUES (1003,401,'Survey','Hospitality Suite','2024-03-15 11:45:00','devC3','1.2.0',20,303,7,'Good service','1',2003,'Kiosk','5003',103,150,'Post‑race satisfaction survey');

-- Environmental monitoring station detail
CREATE TABLE environmental_monitoring_station_detail (
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    stationName TEXT,
    latitude REAL,
    longitude REAL,
    elevationM INTEGER,
    installationDate DATE,
    sensorType TEXT,
    measurementIntervalSec INTEGER,
    lastCalibrationDate DATE,
    status TEXT,
    temperatureC REAL,
    humidityPct REAL,
    airQualityIndex INTEGER,
    noiseDb REAL,
    windSpeedKph REAL,
    windDirectionDeg INTEGER,
    precipitationMm REAL,
    solarRadiationWm2 REAL,
    batteryLevelPct INTEGER,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO environmental_monitoring_station_detail (circuitId,stationName,latitude,longitude,elevationM,installationDate,sensorType,measurementIntervalSec,lastCalibrationDate,status,temperatureC,humidityPct,airQualityIndex,noiseDb,windSpeedKph,windDirectionDeg,precipitationMm,solarRadiationWm2,batteryLevelPct) VALUES (1,'NorthEdge',45.1234,-93.1234,250,'2022-06-01','Multi',300,'2024-01-15','Active',22.5,55,42,68,12.5,180,0.0,500,95);
INSERT INTO environmental_monitoring_station_detail (circuitId,stationName,latitude,longitude,elevationM,installationDate,sensorType,measurementIntervalSec,lastCalibrationDate,status,temperatureC,humidityPct,airQualityIndex,noiseDb,windSpeedKph,windDirectionDeg,precipitationMm,solarRadiationWm2,batteryLevelPct) VALUES (2,'SouthValley',46.5678,-94.5678,260,'2022-07-15','Multi',300,'2024-01-20','Active',21.0,60,38,65,10.0,200,0.0,480,92);
INSERT INTO environmental_monitoring_station_detail (circuitId,stationName,latitude,longitude,elevationM,installationDate,sensorType,measurementIntervalSec,lastCalibrationDate,status,temperatureC,humidityPct,airQualityIndex,noiseDb,windSpeedKph,windDirectionDeg,precipitationMm,solarRadiationWm2,batteryLevelPct) VALUES (3,'EastSlope',47.9101,-95.9101,240,'2022-08-10','Multi',300,'2024-01-25','Active',23.2,53,45,70,14.0,150,0.0,520,88);

-- Logistics fuel transaction records
CREATE TABLE logistics_fuel_transaction_records (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    supplierId INTEGER,
    fuelType TEXT,
    volumeLiters REAL,
    pricePerLiter REAL,
    totalCost REAL,
    deliveryDate DATE,
    deliveryTime TIME,
    driverId INTEGER,
    vehicleId INTEGER,
    tankerId INTEGER,
    receiptNumber TEXT,
    qualityRating INTEGER,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    approvedBy INTEGER,
    approvalDate DATE,
    fuelTemperatureC REAL,
    fuelDensityKgM3 REAL
);
INSERT INTO logistics_fuel_transaction_records (raceId,supplierId,fuelType,volumeLiters,pricePerLiter,totalCost,deliveryDate,deliveryTime,driverId,vehicleId,tankerId,receiptNumber,qualityRating,notes,approvedBy,approvalDate,fuelTemperatureC,fuelDensityKgM3) VALUES (401,901,'Premium',12000,1.45,17400,'2024-03-14','08:30',2001,3001,4001,'RCPT001',9,'Verified quality','501','2024-03-15',15.0,0.78);
INSERT INTO logistics_fuel_transaction_records (raceId,supplierId,fuelType,volumeLiters,pricePerLiter,totalCost,deliveryDate,deliveryTime,driverId,vehicleId,tankerId,receiptNumber,qualityRating,notes,approvedBy,approvalDate,fuelTemperatureC,fuelDensityKgM3) VALUES (402,902,'Standard',15000,1.30,19500,'2024-03-15','09:00',2002,3002,4002,'RCPT002',8,'Slight delay','502','2024-03-16',16.5,0.76);
INSERT INTO logistics_fuel_transaction_records (raceId,supplierId,fuelType,volumeLiters,pricePerLiter,totalCost,deliveryDate,deliveryTime,driverId,vehicleId,tankerId,receiptNumber,qualityRating,notes,approvedBy,approvalDate,fuelTemperatureC,fuelDensityKgM3) VALUES (403,903,'Eco',10000,1.55,15500,'2024-03-16','07:45',2003,3003,4003,'RCPT003',10,'Eco blend approved','503','2024-03-17',14.0,0.80);

-- Race security incident reports
CREATE TABLE race_security_incident_reports (
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    incidentDate DATE,
    incidentTime TIME,
    incidentType TEXT,
    location TEXT,
    severityLevel INTEGER,
    description TEXT,
    reportedBy INTEGER,
    resolvedFlag INTEGER,
    resolutionDate DATE,
    resolutionDetails TEXT,
    officerId INTEGER,
    witnessCount INTEGER,
    evidenceFilePath TEXT,
    finesIssued REAL,
    penaltiesApplied TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    status TEXT,
    followUpActions TEXT
);
INSERT INTO race_security_incident_reports (raceId,incidentDate,incidentTime,incidentType,location,severityLevel,description,reportedBy,resolvedFlag,resolutionDate,resolutionDetails,officerId,witnessCount,evidenceFilePath,finesIssued,penaltiesApplied,status,followUpActions) VALUES (401,'2024-03-15','10:20:00','UnauthorizedAccess','Paddock Gate','2','Fan entered restricted area','6001','1','2024-03-15','Ejected and warned','7001','2','/evidence/401_20240315_1020.jpg',0,'Warning','Closed','Review access protocols');
INSERT INTO race_security_incident_reports (raceId,incidentDate,incidentTime,incidentType,location,severityLevel,description,reportedBy,resolvedFlag,resolutionDate,resolutionDetails,officerId,witnessCount,evidenceFilePath,finesIssued,penaltiesApplied,status,followUpActions) VALUES (402,'2024-03-16','12:45:00','VehicleCollision','Pit Lane','3','Two support vehicles collided','6002','1','2024-03-16','Damage assessed, drivers cited','7002','3','/evidence/402_20240316_1245.mp4',1500,'Safety training','Open','Increase pit lane speed limits');
INSERT INTO race_security_incident_reports (raceId,incidentDate,incidentTime,incidentType,location,severityLevel,description,reportedBy,resolvedFlag,resolutionDate,resolutionDetails,officerId,witnessCount,evidenceFilePath,finesIssued,penaltiesApplied,status,followUpActions) VALUES (403,'2024-03-17','15:30:00','SpectatorDisturbance','Grandstand Section B','1','Loud argument escalated','6003','0',NULL,NULL,'7003','5','/evidence/403_20240317_1530.jpg',0,'Verbal warning','Open','Monitor future incidents');