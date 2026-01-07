-- Venue accommodation rooms for event venues
CREATE TABLE venue_accommodation_rooms (
    roomId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    roomNumber TEXT NOT NULL,
    floor INTEGER,
    bedCount INTEGER,
    roomType TEXT,
    sizeSqM REAL,
    hasBalcony INTEGER,
    hasEnsuite INTEGER,
    pricePerNight REAL,
    currency TEXT,
    availabilityStatus TEXT,
    lastRenovated DATE,
    wifiSpeedMbps INTEGER,
    airConditioning INTEGER,
    viewDescription TEXT,
    minibarIncluded INTEGER,
    smokingAllowed INTEGER,
    accessible INTEGER,
    housekeepingSchedule TEXT,
    notes TEXT
);
INSERT INTO venue_accommodation_rooms (venueId,roomNumber,floor,bedCount,roomType,sizeSqM,hasBalcony,hasEnsuite,pricePerNight,currency,availabilityStatus,lastRenovated,wifiSpeedMbps,airConditioning,viewDescription,minibarIncluded,smokingAllowed,accessible,housekeepingSchedule,notes) VALUES (1,'A101',1,2,'Deluxe',45.0,1,1,250.0,'USD','Available','2021-06-15',100,1,'Cityscape',1,0,1,'Daily','');
INSERT INTO venue_accommodation_rooms (venueId,roomNumber,floor,bedCount,roomType,sizeSqM,hasBalcony,hasEnsuite,pricePerNight,currency,availabilityStatus,lastRenovated,wifiSpeedMbps,airConditioning,viewDescription,minibarIncluded,smokingAllowed,accessible,housekeepingSchedule,notes) VALUES (2,'B202',2,1,'Standard',30.5,0,0,150.0,'EUR','Booked','2020-03-10',50,1,'Garden',0,0,0,'TwiceWeekly','Near conference hall');
INSERT INTO venue_accommodation_rooms (venueId,roomNumber,floor,bedCount,roomType,sizeSqM,hasBalcony,hasEnsuite,pricePerNight,currency,availabilityStatus,lastRenovated,wifiSpeedMbps,airConditioning,viewDescription,minibarIncluded,smokingAllowed,accessible,housekeepingSchedule,notes) VALUES (3,'C303',3,3,'Suite',80.0,1,1,400.0,'GBP','Maintenance','2019-11-05',200,1,'Panorama',1,0,1,'Weekly','Requires deep cleaning');

-- Team aerodynamic test runs at wind tunnels
CREATE TABLE team_aerodynamic_test_runs (
    testRunId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    circuitId INTEGER,
    testDate DATE NOT NULL,
    windTunnelId INTEGER,
    modelScale REAL,
    maxSpeedKph REAL,
    downforceN REAL,
    dragCoefficient REAL,
    temperatureC REAL,
    humidityPercent REAL,
    pressurePa REAL,
    notes TEXT,
    resultFilePath TEXT,
    engineerId INTEGER,
    simulationSoftware TEXT,
    dataCaptureRateHz INTEGER,
    totalRunTimeSec INTEGER,
    licensePlate TEXT,
    testCategory TEXT
);
INSERT INTO team_aerodynamic_test_runs (teamId,circuitId,testDate,windTunnelId,modelScale,maxSpeedKph,downforceN,dragCoefficient,temperatureC,humidityPercent,pressurePa,notes,resultFilePath,engineerId,simulationSoftware,dataCaptureRateHz,totalRunTimeSec,licensePlate,testCategory) VALUES (1,10,'2023-04-12',5,0.5,320.0,1500.0,0.32,22.5,45.0,101325.0,'Initial scale test','/results/run1.csv',101,'CFDPro',2000,3600,'XYZ123','Baseline');
INSERT INTO team_aerodynamic_test_runs (teamId,circuitId,testDate,windTunnelId,modelScale,maxSpeedKph,downforceN,dragCoefficient,temperatureC,humidityPercent,pressurePa,notes,resultFilePath,engineerId,simulationSoftware,dataCaptureRateHz,totalRunTimeSec,licensePlate,testCategory) VALUES (2,15,'2023-05-08',7,0.75,350.0,1800.0,0.29,20.0,40.0,100800.0,'High speed configuration','/results/run2.csv',102,'AeroSim',2500,4200,'ABC789','Performance');
INSERT INTO team_aerodynamic_test_runs (teamId,circuitId,testDate,windTunnelId,modelScale,maxSpeedKph,downforceN,dragCoefficient,temperatureC,humidityPercent,pressurePa,notes,resultFilePath,engineerId,simulationSoftware,dataCaptureRateHz,totalRunTimeSec,licensePlate,testCategory) VALUES (3,20,'2023-06-20',9,1.0,380.0,2000.0,0.27,18.0,35.0,101500.0,'Full scale validation','/results/run3.csv',103,'WindFlow',3000,4800,'LMN456','Validation');

-- Broadcast media assets linked to races
CREATE TABLE broadcast_media_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    mediaType TEXT,
    filePath TEXT,
    durationSec INTEGER,
    resolution TEXT,
    frameRate REAL,
    codec TEXT,
    language TEXT,
    subtitles TEXT,
    creator TEXT,
    uploadDate DATE,
    fileSizeMb REAL,
    thumbnailPath TEXT,
    rightsHolder TEXT,
    usageLicense TEXT,
    broadcastChannel TEXT,
    segmentStartSec INTEGER,
    segmentEndSec INTEGER,
    audienceRating REAL,
    metadataJson TEXT
);
INSERT INTO broadcast_media_assets (raceId,mediaType,filePath,durationSec,resolution,frameRate,codec,language,subtitles,creator,uploadDate,fileSizeMb,thumbnailPath,rightsHolder,usageLicense,broadcastChannel,segmentStartSec,segmentEndSec,audienceRating,metadataJson) VALUES (100,'Video','/media/race100_main.mp4',5400,'1920x1080',29.97,'H.264','EN','EN','StudioA','2023-07-01',4500.0,'/thumbs/race100_main.jpg','FIA','Standard','Channel1',0,5400,8.7,'{}');
INSERT INTO broadcast_media_assets (raceId,mediaType,filePath,durationSec,resolution,frameRate,codec,language,subtitles,creator,uploadDate,fileSizeMb,thumbnailPath,rightsHolder,usageLicense,broadcastChannel,segmentStartSec,segmentEndSec,audienceRating,metadataJson) VALUES (101,'Audio','/media/race101_commentary.aac',5400,'','44.1','AAC','EN','EN','CommentatorB','2023-07-02',1200.0,'/thumbs/race101_audio.jpg','FIA','Standard','Channel2',0,5400,7.9,'{}');
INSERT INTO broadcast_media_assets (raceId,mediaType,filePath,durationSec,resolution,frameRate,codec,language,subtitles,creator,uploadDate,fileSizeMb,thumbnailPath,rightsHolder,usageLicense,broadcastChannel,segmentStartSec,segmentEndSec,audienceRating,metadataJson) VALUES (102,'Highlight','/media/race102_highlights.mp4',300,'1280x720',30.0,'H.265','EN','EN','StudioC','2023-07-03',800.0,'/thumbs/race102_highlights.jpg','FIA','Standard','Channel3',0,300,9.2,'{}');

-- Sponsor engagement events table
CREATE TABLE sponsor_engagement_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    eventName TEXT,
    eventDate DATE,
    venueId INTEGER,
    city TEXT,
    country TEXT,
    expectedAttendees INTEGER,
    actualAttendees INTEGER,
    activationType TEXT,
    budgetUsd REAL,
    sponsorRep TEXT,
    marketingLead TEXT,
    socialMediaHashtag TEXT,
    pressReleaseIssued INTEGER,
    eventStatus TEXT,
    feedbackScore REAL,
    postEventReportPath TEXT,
    sponsorLogoPath TEXT,
    eventTheme TEXT,
    targetDemographic TEXT
);
INSERT INTO sponsor_engagement_events (sponsorId,eventName,eventDate,venueId,city,country,expectedAttendees,actualAttendees,activationType,budgetUsd,sponsorRep,marketingLead,socialMediaHashtag,pressReleaseIssued,eventStatus,feedbackScore,postEventReportPath,sponsorLogoPath,eventTheme,targetDemographic) VALUES (10,'Grand Opening','2023-08-10',5,'Monaco','Monaco',500,480,'Brand Activation',200000,'AliceSmith','BobJones','#GrandStart',1,'Completed',8.5,'/reports/event10.pdf','/logos/sponsor10.png','Luxury','HighNetWorth');
INSERT INTO sponsor_engagement_events (sponsorId,eventName,eventDate,venueId,city,country,expectedAttendees,actualAttendees,activationType,budgetUsd,sponsorRep,marketingLead,socialMediaHashtag,pressReleaseIssued,eventStatus,feedbackScore,postEventReportPath,sponsorLogoPath,eventTheme,targetDemographic) VALUES (11,'Tech Expo','2023-09-15',8,'Berlin','Germany',1500,1520,'Product Demo',350000,'CarlosDiaz','DianaLee','#TechFuture',1,'Completed',9.2,'/reports/event11.pdf','/logos/sponsor11.png','Innovation','TechEnthusiasts');
INSERT INTO sponsor_engagement_events (sponsorId,eventName,eventDate,venueId,city,country,expectedAttendees,actualAttendees,activationType,budgetUsd,sponsorRep,marketingLead,socialMediaHashtag,pressReleaseIssued,eventStatus,feedbackScore,postEventReportPath,sponsorLogoPath,eventTheme,targetDemographic) VALUES (12,'Charity Gala','2023-10-05',12,'Tokyo','Japan',800,790,'Philanthropy',500000,'EmmaKwon','FionaNg','#RacingGivesBack',1,'Completed',9.0,'/reports/event12.pdf','/logos/sponsor12.png','Community','GlobalFans');

-- Driver fitness assessments
CREATE TABLE driver_fitness_assessments (
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    assessmentDate DATE,
    weightKg REAL,
    heightCm REAL,
    bodyFatPercent REAL,
    VO2Max REAL,
    restingHeartRate INTEGER,
    maxHeartRate INTEGER,
    enduranceScore INTEGER,
    strengthScore INTEGER,
    flexibilityScore INTEGER,
    reactionTimeMs REAL,
    sleepHours REAL,
    nutritionScore INTEGER,
    hydrationLevel REAL,
    injuryStatus TEXT,
    medicalNotes TEXT,
    assessorId INTEGER,
    assessmentLocation TEXT
);
INSERT INTO driver_fitness_assessments (driverId,assessmentDate,weightKg,heightCm,bodyFatPercent,VO2Max,restingHeartRate,maxHeartRate,enduranceScore,strengthScore,flexibilityScore,reactionTimeMs,sleepHours,nutritionScore,hydrationLevel,injuryStatus,medicalNotes,assessorId,assessmentLocation) VALUES (1001,'2023-06-01',78.5,182.0,12.5,55.0,58,180,85,80,75,240.5,7.5,90,98.0,'None','All parameters normal',201,'TeamGym');
INSERT INTO driver_fitness_assessments (driverId,assessmentDate,weightKg,heightCm,bodyFatPercent,VO2Max,restingHeartRate,maxHeartRate,enduranceScore,strengthScore,flexibilityScore,reactionTimeMs,sleepHours,nutritionScore,hydrationLevel,injuryStatus,medicalNotes,assessorId,assessmentLocation) VALUES (1002,'2023-06-15',82.0,176.0,14.0,52.0,60,185,80,78,70,250.0,7.0,85,96.5,'KneeSoreness','Mild inflammation observed',202,'MedicalCenter');
INSERT INTO driver_fitness_assessments (driverId,assessmentDate,weightKg,heightCm,bodyFatPercent,VO2Max,restingHeartRate,maxHeartRate,enduranceScore,strengthScore,flexibilityScore,reactionTimeMs,sleepHours,nutritionScore,hydrationLevel,injuryStatus,medicalNotes,assessorId,assessmentLocation) VALUES (1003,'2023-07-01',75.0,180.0,11.0,58.0,55,178,88,85,80,230.0,8.0,92,99.0,'None','Recovery good after recent race',203,'TeamGym');

-- Circuit environmental monitoring
CREATE TABLE circuit_environmental_monitoring (
    monitorId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    sensorId INTEGER,
    sensorType TEXT,
    measurementDate DATE,
    temperatureC REAL,
    humidityPercent REAL,
    airQualityIndex INTEGER,
    noiseLevelDb REAL,
    uvIndex REAL,
    particulateMatterPm25 REAL,
    particulateMatterPm10 REAL,
    windSpeedMs REAL,
    windDirectionDeg INTEGER,
    soilMoisturePercent REAL,
    waterUsageLiters REAL,
    solarRadiationWm2 REAL,
    powerConsumptionKw REAL,
    maintenanceDueDate DATE,
    notes TEXT
);
INSERT INTO circuit_environmental_monitoring (circuitId,sensorId,sensorType,measurementDate,temperatureC,humidityPercent,airQualityIndex,noiseLevelDb,uvIndex,particulateMatterPm25,particulateMatterPm10,windSpeedMs,windDirectionDeg,soilMoisturePercent,waterUsageLiters,solarRadiationWm2,powerConsumptionKw,maintenanceDueDate,notes) VALUES (10,301,'TempHum','2023-07-20',28.5,55.0,42,65.0,5.2,12.0,20.5,3.5,180,22.0,1500.0,850.0,45.0,'2023-12-01','Routine check');
INSERT INTO circuit_environmental_monitoring (circuitId,sensorId,sensorType,measurementDate,temperatureC,humidityPercent,airQualityIndex,noiseLevelDb,uvIndex,particulateMatterPm25,particulateMatterPm10,windSpeedMs,windDirectionDeg,soilMoisturePercent,waterUsageLiters,solarRadiationWm2,powerConsumptionKw,maintenanceDueDate,notes) VALUES (15,402,'AirQuality','2023-07-21',31.0,60.0,55,70.0,6.0,18.5,30.0,4.0,210,20.5,1800.0,900.0,48.0,'2024-01-15','Filter replacement required');
INSERT INTO circuit_environmental_monitoring (circuitId,sensorId,sensorType,measurementDate,temperatureC,humidityPercent,airQualityIndex,noiseLevelDb,uvIndex,particulateMatterPm25,particulateMatterPm10,windSpeedMs,windDirectionDeg,soilMoisturePercent,waterUsageLiters,solarRadiationWm2,powerConsumptionKw,maintenanceDueDate,notes) VALUES (20,503,'Noise','2023-07-22',27.0,50.0,38,62.0,4.8,10.0,15.0,2.8,150,23.0,1300.0,800.0,42.0,'2023-11-10','Calibration completed');

-- Hospitality catering inventory
CREATE TABLE hospitality_catering_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    itemName TEXT,
    category TEXT,
    quantityOnHand REAL,
    unit TEXT,
    reorderLevel REAL,
    supplierId INTEGER,
    lastOrderDate DATE,
    nextDeliveryDate DATE,
    storageLocation TEXT,
    expirationDate DATE,
    temperatureRequirementC REAL,
    isPerishable INTEGER,
    costPerUnitUsd REAL,
    totalCostUsd REAL,
    responsibleStaffId INTEGER,
    auditDate DATE,
    auditResult TEXT,
    notes TEXT
);
INSERT INTO hospitality_catering_inventory (venueId,itemName,category,quantityOnHand,unit,reorderLevel,supplierId,lastOrderDate,nextDeliveryDate,storageLocation,expirationDate,temperatureRequirementC,isPerishable,costPerUnitUsd,totalCostUsd,responsibleStaffId,auditDate,auditResult,notes) VALUES (5,'Champagne','Beverage',120.0,'bottles',30,201,'2023-06-01','2023-06-15','CoolerA','2024-01-01',6,1,45.0,5400.0,301,'2023-06-20','Pass','');
INSERT INTO hospitality_catering_inventory (venueId,itemName,category,quantityOnHand,unit,reorderLevel,supplierId,lastOrderDate,nextDeliveryDate,storageLocation,expirationDate,temperatureRequirementC,isPerishable,costPerUnitUsd,totalCostUsd,responsibleStaffId,auditDate,auditResult,notes) VALUES (8,'Grilled Salmon','Food',200.0,'servings',50,202,'2023-06-05','2023-06-18','FreezerB','2023-09-30',-18,1,12.5,2500.0,302,'2023-06-22','Pass','');
INSERT INTO hospitality_catering_inventory (venueId,itemName,category,quantityOnHand,unit,reorderLevel,supplierId,lastOrderDate,nextDeliveryDate,storageLocation,expirationDate,temperatureRequirementC,isPerishable,costPerUnitUsd,totalCostUsd,responsibleStaffId,auditDate,auditResult,notes) VALUES (12,'Paper Napkins','Supplies',5000.0,'pieces',1000,203,'2023-05-20','2023-06-10','WarehouseC','2025-12-31',22,0,0.02,100.0,303,'2023-06-25','Pass','Eco‑friendly');

-- Race security patrol routes
CREATE TABLE race_security_patrol_routes (
    routeId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    patrolTeamId INTEGER,
    startTime TEXT,
    endTime TEXT,
    routeDescription TEXT,
    distanceMeters REAL,
    checkpointsCount INTEGER,
    leadOfficerId INTEGER,
    vehicleType TEXT,
    radioChannel TEXT,
    nightVisionEquipment INTEGER,
    documentedIncidents INTEGER,
    routeStatus TEXT,
    lastUpdated DATE,
    mapFilePath TEXT,
    weatherCondition TEXT,
    riskLevel TEXT,
    comments TEXT,
    approvedBy TEXT
);
INSERT INTO race_security_patrol_routes (raceId,patrolTeamId,startTime,endTime,routeDescription,distanceMeters,checkpointsCount,leadOfficerId,vehicleType,radioChannel,nightVisionEquipment,documentedIncidents,routeStatus,lastUpdated,mapFilePath,weatherCondition,riskLevel,comments,approvedBy) VALUES (100,1,'18:00','20:00','North perimeter',3500.0,12,401,'PatrolCar','CH1',1,0,'Active','2023-07-01','/maps/route100.png','Clear','Medium','No issues','ChiefSec');
INSERT INTO race_security_patrol_routes (raceId,patrolTeamId,startTime,endTime,routeDescription,distanceMeters,checkpointsCount,leadOfficerId,vehicleType,radioChannel,nightVisionEquipment,documentedIncidents,routeStatus,lastUpdated,mapFilePath,weatherCondition,riskLevel,comments,approvedBy) VALUES (101,2,'19:30','22:00','East sector',4200.0,15,402,'Motorbike','CH2',0,1,'Active','2023-07-02','/maps/route101.png','Rain','High','Minor crowd disturbance','ChiefSec');
INSERT INTO race_security_patrol_routes (raceId,patrolTeamId,startTime,endTime,routeDescription,distanceMeters,checkpointsCount,leadOfficerId,vehicleType,radioChannel,nightVisionEquipment,documentedIncidents,routeStatus,lastUpdated,mapFilePath,weatherCondition,riskLevel,comments,approvedBy) VALUES (102,3,'20:00','23:00','South access road',2800.0,10,403,'SUV','CH3',1,0,'Planned','2023-07-03','/maps/route102.png','Clear','Low','Awaiting final approval','ChiefSec');

-- Telemetry event log
CREATE TABLE telemetry_event_log (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    driverId INTEGER NOT NULL,
    timestampMs INTEGER,
    eventType TEXT,
    description TEXT,
    sensorId INTEGER,
    valueNumeric REAL,
    valueString TEXT,
    severityLevel TEXT,
    recordedBy TEXT,
    sourceSystem TEXT,
    relatedLap INTEGER,
    relatedSector INTEGER,
    videoClipPath TEXT,
    processedFlag INTEGER,
    analysisResult TEXT,
    anomalyScore REAL,
    mitigationAction TEXT,
    notes TEXT
);
INSERT INTO telemetry_event_log (raceId,driverId,timestampMs,eventType,description,sensorId,valueNumeric,valueString,severityLevel,recordedBy,sourceSystem,relatedLap,relatedSector,videoClipPath,processedFlag,analysisResult,anomalyScore,mitigationAction,notes) VALUES (100,1001,123456,'Throttle','Full throttle applied',12,100.0,'', 'Info','SystemA','Telemetry','12',1,'/videos/clip1.mp4',1,'Normal',0.0,'None','');
INSERT INTO telemetry_event_log (raceId,driverId,timestampMs,eventType,description,sensorId,valueNumeric,valueString,severityLevel,recordedBy,sourceSystem,relatedLap,relatedSector,videoClipPath,processedFlag,analysisResult,anomalyScore,mitigationAction,notes) VALUES (101,1002,223456,'Brake','Brake pressure spike',15,95.0,'', 'Warning','SystemB','Telemetry','15',2,'/videos/clip2.mp4',1,'Investigated',0.7,'Adjust brake bias','Possible sensor glitch');
INSERT INTO telemetry_event_log (raceId,driverId,timestampMs,eventType,description,sensorId,valueNumeric,valueString,severityLevel,recordedBy,sourceSystem,relatedLap,relatedSector,videoClipPath,processedFlag,analysisResult,anomalyScore,mitigationAction,notes) VALUES (102,1003,323456,'Gear','Unexpected gear shift',9,5.0,'', 'Critical','SystemC','Telemetry','8',3,'/videos/clip3.mp4',0,'Pending review',0.9,'Check gearbox','Driver reported shift issue');

-- Fan loyalty reward catalog
CREATE TABLE fan_loyalty_reward_catalog (
    rewardId INTEGER PRIMARY KEY AUTOINCREMENT,
    programId INTEGER NOT NULL,
    rewardName TEXT,
    description TEXT,
    pointsRequired INTEGER,
    rewardType TEXT,
    availabilityStartDate DATE,
    availabilityEndDate DATE,
    maxRedemptions INTEGER,
    redemptionCount INTEGER,
    imageUrl TEXT,
    termsAndConditions TEXT,
    supplierId INTEGER,
    shippingRequired INTEGER,
    estimatedDeliveryDays INTEGER,
    stockQuantity INTEGER,
    category TEXT,
    tierLevel TEXT,
    isActive INTEGER,
    createdDate DATE
);
INSERT INTO fan_loyalty_reward_catalog (programId,rewardName,description,pointsRequired,rewardType,availabilityStartDate,availabilityEndDate,maxRedemptions,redemptionCount,imageUrl,termsAndConditions,supplierId,shippingRequired,estimatedDeliveryDays,stockQuantity,category,tierLevel,isActive,createdDate) VALUES (1,'Pit Lane Pass','Access to pit lane on race day',5000,'Experience','2023-07-01','2023-12-31',100,20,'/images/pitpass.png','Non‑transferable','301',1,5,50,'Access','Gold',1,'2023-06-15');
INSERT INTO fan_loyalty_reward_catalog (programId,rewardName,description,pointsRequired,rewardType,availabilityStartDate,availabilityEndDate,maxRedemptions,redemptionCount,imageUrl,termsAndConditions,supplierId,shippingRequired,estimatedDeliveryDays,stockQuantity,category,tierLevel,isActive,createdDate) VALUES (2,'Team Cap','Official team cap',2500,'Merchandise','2023-07-01','2024-06-30',1000,150,'/images/teamcap.png','One per fan','302',1,7,300,'Apparel','Silver',1,'2023-06-20');
INSERT INTO fan_loyalty_reward_catalog (programId,rewardName,description,pointsRequired,rewardType,availabilityStartDate,availabilityEndDate,maxRedemptions,redemptionCount,imageUrl,termsAndConditions,supplierId,shippingRequired,estimatedDeliveryDays,stockQuantity,category,tierLevel,isActive,createdDate) VALUES (3,'Virtual Race Experience','Simulated race with pro driver',8000,'Experience','2023-08-01','2024-01-31',50,5,'/images/virtualrace.png','Requires VR headset','303',0,0,25,'Digital','Platinum',1,'2023-07-01');