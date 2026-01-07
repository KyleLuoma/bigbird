-- Circuit safety audit details
CREATE TABLE circuit_safety_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    auditDate DATE,
    inspectorName TEXT,
    overallScore REAL,
    barrierConditionScore REAL,
    runOffAreaScore REAL,
    gravelTrapScore REAL,
    tireBarrierScore REAL,
    safetyCarReady INTEGER,
    medicalFacilityScore REAL,
    fireSuppressionScore REAL,
    lightingScore REAL,
    signageScore REAL,
    communicationSystemScore REAL,
    emergencyExitScore REAL,
    staffTrainingScore REAL,
    incidentHistoryScore REAL,
    recommendations TEXT,
    followUpDate DATE,
    status TEXT
);

INSERT INTO circuit_safety_audits (circuitId,auditDate,inspectorName,overallScore,barrierConditionScore,runOffAreaScore,gravelTrapScore,tireBarrierScore,safetyCarReady,medicalFacilityScore,fireSuppressionScore,lightingScore,signageScore,communicationSystemScore,emergencyExitScore,staffTrainingScore,incidentHistoryScore,recommendations,followUpDate,status) VALUES (1,'2023-03-15','John Doe',8.7,9.0,8.5,7.8,8.2,1,9.1,8.9,9.3,8.0,8.8,9.0,8.5,7.9,'Replace barrier panels','2023-09-15','Pending');
INSERT INTO circuit_safety_audits (circuitId,auditDate,inspectorName,overallScore,barrierConditionScore,runOffAreaScore,gravelTrapScore,tireBarrierScore,safetyCarReady,medicalFacilityScore,fireSuppressionScore,lightingScore,signageScore,communicationSystemScore,emergencyExitScore,staffTrainingScore,incidentHistoryScore,recommendations,followUpDate,status) VALUES (2,'2023-04-10','Maria Lee',9.2,9.5,9.1,9.0,9.3,1,9.6,9.4,9.8,9.2,9.7,9.5,9.3,9.0,'Upgrade lighting system','2023-10-10','Completed');
INSERT INTO circuit_safety_audits (circuitId,auditDate,inspectorName,overallScore,barrierConditionScore,runOffAreaScore,gravelTrapScore,tireBarrierScore,safetyCarReady,medicalFacilityScore,fireSuppressionScore,lightingScore,signageScore,communicationSystemScore,emergencyExitScore,staffTrainingScore,incidentHistoryScore,recommendations,followUpDate,status) VALUES (3,'2023-05-22','Liu Chen',8.0,8.2,7.9,8.1,7.8,0,8.3,8.0,8.5,7.9,8.2,8.0,7.7,7.5,'Add additional medical staff','2023-11-22','InProgress');

-- Driver training program records
CREATE TABLE driver_training_programs (
    programId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    programName TEXT,
    startDate DATE,
    endDate DATE,
    trainingType TEXT,
    location TEXT,
    instructorName TEXT,
    hoursAllocated INTEGER,
    hoursCompleted INTEGER,
    performanceScore REAL,
    physicalFitnessScore REAL,
    mentalFitnessScore REAL,
    simulatorHours INTEGER,
    trackHours INTEGER,
    vehicleType TEXT,
    certificationEarned TEXT,
    cost REAL,
    sponsorId INTEGER,
    notes TEXT,
    status TEXT,
    createdAt DATETIME
);

INSERT INTO driver_training_programs (driverId,programName,startDate,endDate,trainingType,location,instructorName,hoursAllocated,hoursCompleted,performanceScore,physicalFitnessScore,mentalFitnessScore,simulatorHours,trackHours,vehicleType,certificationEarned,cost,sponsorId,notes,status,createdAt) VALUES (10,'Advanced Cornering','2023-06-01','2023-06-15','OnTrack','Monza','Carlos Perez',40,38,9.1,8.9,9.0,12,10,'Formula2','CorneringPro',15000,5,'Good progress','Active','2023-06-01 08:00:00');
INSERT INTO driver_training_programs (driverId,programName,startDate,endDate,trainingType,location,instructorName,hoursAllocated,hoursCompleted,performanceScore,physicalFitnessScore,mentalFitnessScore,simulatorHours,trackHours,vehicleType,certificationEarned,cost,sponsorId,notes,status,createdAt) VALUES (12,'Physical Conditioning','2023-07-05','2023-07-20','Fitness','Berlin','Anna Schmidt',30,30,8.5,9.3,8.8,0,0,'N/A','FitnessLevel1',8000,3,'Completed with high marks','Completed','2023-07-05 09:30:00');
INSERT INTO driver_training_programs (driverId,programName,startDate,endDate,trainingType,location,instructorName,hoursAllocated,hoursCompleted,performanceScore,physicalFitnessScore,mentalFitnessScore,simulatorHours,trackHours,vehicleType,certificationEarned,cost,sponsorId,notes,status,createdAt) VALUES (15,'Data Analysis for Racing','2023-08-10','2023-08-12','Classroom','London','Mike O\'Neil',16,16,9.4,8.2,9.2,5,0,'N/A','DataCert',5000,7,'Excellent understanding','Active','2023-08-10 10:00:00');

-- Constructor supply contract details
CREATE TABLE constructor_supply_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    supplierName TEXT,
    materialType TEXT,
    contractStart DATE,
    contractEnd DATE,
    quantity INTEGER,
    unitPrice REAL,
    totalValue REAL,
    deliverySchedule TEXT,
    qualityRating REAL,
    complianceStatus TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    paymentTerms TEXT,
    penaltyClause TEXT,
    renewalOption TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    activeFlag INTEGER
);

INSERT INTO constructor_supply_contracts (constructorId,supplierName,materialType,contractStart,contractEnd,quantity,unitPrice,totalValue,deliverySchedule,qualityRating,complianceStatus,contactPerson,contactEmail,paymentTerms,penaltyClause,renewalOption,notes,createdAt,updatedAt,activeFlag) VALUES (1,'Alpha Metals','Carbon Fiber','2023-01-01','2024-01-01',500,2000,1000000,'Monthly','9.5','Compliant','James Holt','james.holt@alphametals.com','30 days','5% late fee','Option to extend','Priority supplier','2023-01-01 00:00:00','2023-06-01 12:00:00',1);
INSERT INTO constructor_supply_contracts (constructorId,supplierName,materialType,contractStart,contractEnd,quantity,unitPrice,totalValue,deliverySchedule,qualityRating,complianceStatus,contactPerson,contactEmail,paymentTerms,penaltyClause,renewalOption,notes,createdAt,updatedAt,activeFlag) VALUES (2,'Beta Engines','Turbocharger','2023-03-15','2025-03-15',120,15000,1800000,'Quarterly','9.2','Compliant','Laura Kim','laura.kim@betaengines.com','45 days','2% late fee','Automatic renewal','High performance units','2023-03-15 09:00:00','2023-09-15 10:30:00',1);
INSERT INTO constructor_supply_contracts (constructorId,supplierName,materialType,contractStart,contractEnd,quantity,unitPrice,totalValue,deliverySchedule,qualityRating,complianceStatus,contactPerson,contactEmail,paymentTerms,penaltyClause,renewalOption,notes,createdAt,updatedAt,activeFlag) VALUES (3,'Gamma Tires','Racing Tire','2023-05-01','2024-05-01',300,800,240000,'Biweekly','8.8','Pending','Mark Feld','mark.feld@gammatire.com','60 days','3% late fee','Option to renegotiate','Seasonal tire set','2023-05-01 11:15:00','2023-07-01 14:45:00',0);

-- Race media broadcast metadata
CREATE TABLE race_media_broadcasts (
    broadcastId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    networkName TEXT,
    broadcastDate DATE,
    startTime TEXT,
    endTime TEXT,
    region TEXT,
    language TEXT,
    viewership INTEGER,
    rating REAL,
    streamUrl TEXT,
    commentaryTeam TEXT,
    productionCompany TEXT,
    budget REAL,
    sponsorMessage TEXT,
    adSlots INTEGER,
    adRevenue REAL,
    technicalDirector TEXT,
    cameraCount INTEGER,
    droneFootageFlag INTEGER,
    notes TEXT,
    createdAt DATETIME
);

INSERT INTO race_media_broadcasts (raceId,networkName,broadcastDate,startTime,endTime,region,language,viewership,rating,streamUrl,commentaryTeam,productionCompany,budget,sponsorMessage,adSlots,adRevenue,technicalDirector,cameraCount,droneFootageFlag,notes,createdAt) VALUES (101,'World Sports','2023-09-10','14:00','15:30','Europe','English',2000000,7.8,'http://stream.ws.com/race101','John Smith;Anna Lee','ProdCo Ltd',500000,'Fasten your seatbelts',12,350000,'Mark Jensen',25,1,'High definition broadcast','2023-09-10 08:00:00');
INSERT INTO race_media_broadcasts (raceId,networkName,broadcastDate,startTime,endTime,region,language,viewership,rating,streamUrl,commentaryTeam,productionCompany,budget,sponsorMessage,adSlots,adRevenue,technicalDirector,cameraCount,droneFootageFlag,notes,createdAt) VALUES (102,'Speed Channel','2023-10-05','16:00','17:45','Asia','Mandarin',1500000,6.5,'http://stream.sc.com/race102','Li Wei;Chen Hao','SpeedProd',300000,'Feel the rush',10,200000,'Yuan Zhang',20,0,'Live from the pit lane','2023-10-05 09:30:00');
INSERT INTO race_media_broadcasts (raceId,networkName,broadcastDate,startTime,endTime,region,language,viewership,rating,streamUrl,commentaryTeam,productionCompany,budget,sponsorMessage,adSlots,adRevenue,technicalDirector,cameraCount,droneFootageFlag,notes,createdAt) VALUES (103,'Global Live','2023-11-12','13:30','15:00','America','Spanish',1800000,7.1,'http://stream.gl.com/race103','Carlos Mendez;Sofia Ruiz','LiveProd',450000,'Racing passion',11,280000,'Diego Torres',22,1,'Multi-angle coverage','2023-11-12 07:45:00');

-- Fan loyalty activity log
CREATE TABLE fan_loyalty_activity_log (
    activityId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    activityDate DATE,
    activityType TEXT,
    pointsEarned INTEGER,
    rewardRedeemed TEXT,
    location TEXT,
    deviceUsed TEXT,
    appVersion TEXT,
    campaignName TEXT,
    latitude REAL,
    longitude REAL,
    ipAddress TEXT,
    browser TEXT,
    os TEXT,
    referralSource TEXT,
    transactionId TEXT,
    amountSpent REAL,
    tierLevel TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME
);

INSERT INTO fan_loyalty_activity_log (fanId,activityDate,activityType,pointsEarned,rewardRedeemed,location,deviceUsed,appVersion,campaignName,latitude,longitude,ipAddress,browser,os,referralSource,transactionId,amountSpent,tierLevel,status,notes,createdAt) VALUES (1001,'2023-06-20','Login',10,NULL,'Online','Mobile','1.3.5','SummerPromo',0.0,0.0,'192.168.1.10','Chrome','iOS','Email','TXN001',0.0,'Silver','Completed','First login of the season','2023-06-20 08:05:00');
INSERT INTO fan_loyalty_activity_log (fanId,activityDate,activityType,pointsEarned,rewardRedeemed,location,deviceUsed,appVersion,campaignName,latitude,longitude,ipAddress,browser,os,referralSource,transactionId,amountSpent,tierLevel,status,notes,createdAt) VALUES (1002,'2023-07-05','Purchase',150,'T-Shirt','Stadium','Tablet','1.4.0','MidSeasonSale',40.7128,-74.0060,'203.0.113.5','Safari','iPadOS','SocialMedia','TXN045',75.0,'Gold','Completed','Bought official merchandise','2023-07-05 12:30:00');
INSERT INTO fan_loyalty_activity_log (fanId,activityDate,activityType,pointsEarned,rewardRedeemed,location,deviceUsed,appVersion,campaignName,latitude,longitude,ipAddress,browser,os,referralSource,transactionId,amountSpent,tierLevel,status,notes,createdAt) VALUES (1003,'2023-08-12','Survey',20,NULL,'Online','Desktop','1.4.2','FanSurvey2023',51.5074,-0.1278,'198.51.100.22','Firefox','Windows','Direct','TXN078',0.0,'Gold','Completed','Provided feedback on race experience','2023-08-12 15:45:00');

-- Venue noise complaints records
CREATE TABLE venue_noise_complaints (
    complaintId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    complaintDate DATE,
    complainantName TEXT,
    contactInfo TEXT,
    noiseLevelDb REAL,
    timeOfDay TEXT,
    durationMinutes INTEGER,
    sourceDescription TEXT,
    severityLevel TEXT,
    actionTaken TEXT,
    resolvedDate DATE,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    status TEXT,
    priority INTEGER,
    locationWithinVenue TEXT,
    weatherCondition TEXT,
    eventId INTEGER
);

INSERT INTO venue_noise_complaints (venueId,complaintDate,complainantName,contactInfo,noiseLevelDb,timeOfDay,durationMinutes,sourceDescription,severityLevel,actionTaken,resolvedDate,notes,createdAt,updatedAt,status,priority,locationWithinVenue,weatherCondition,eventId) VALUES (10,'2023-06-18','Laura Smith','laura.smith@email.com',92.5,'Evening',45,'Crowd chanting',High,'Adjusted speaker volume','2023-06-20','Complaint resolved after adjustments','2023-06-18 09:00:00','2023-06-20 14:30:00','Closed',2,'Grandstand','Clear',101);
INSERT INTO venue_noise_complaints (venueId,complaintDate,complainantName,contactInfo,noiseLevelDb,timeOfDay,durationMinutes,sourceDescription,severityLevel,actionTaken,resolvedDate,notes,createdAt,updatedAt,status,priority,locationWithinVenue,weatherCondition,eventId) VALUES (12,'2023-07-02','Michael Tan','m.tan@phone.com',105.0,'Night',30,'Aftermarket sound system',Critical,'Shutdown of system','2023-07-04','Technical fault identified','2023-07-02 11:15:00','2023-07-04 16:00:00','Closed',1,'Pit Lane','Rain',102);
INSERT INTO venue_noise_complaints (venueId,complaintDate,complainantName,contactInfo,noiseLevelDb,timeOfDay,durationMinutes,sourceDescription,severityLevel,actionTaken,resolvedDate,notes,createdAt,updatedAt,status,priority,locationWithinVenue,weatherCondition,eventId) VALUES (15,'2023-08-10','Sofia Alvarez','sofia.alvarez@mail.com',88.0,'Afternoon',60,'Construction work',Medium,'Scheduled later in evening','2023-08-15','Work shifted to non‑event hours','2023-08-10 08:45:00','2023-08-15 10:20:00','Pending',3,'North Entrance','Windy',103);

-- Telemetry data summary per race and driver
CREATE TABLE telemetry_data_summary (
    summaryId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    lapCount INTEGER,
    avgSpeed REAL,
    maxSpeed REAL,
    totalDistance REAL,
    fuelUsage REAL,
    tireWear REAL,
    brakeTemperature REAL,
    engineTemp REAL,
    gForcePeak REAL,
    throttlePercentage REAL,
    steeringAngleAvg REAL,
    pitStopCount INTEGER,
    avgPitStopTime REAL,
    incidentsCount INTEGER,
    telemetryVersion TEXT,
    dataCollectedAt DATETIME,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO telemetry_data_summary (raceId,driverId,lapCount,avgSpeed,maxSpeed,totalDistance,fuelUsage,tireWear,brakeTemperature,engineTemp,gForcePeak,throttlePercentage,steeringAngleAvg,pitStopCount,avgPitStopTime,incidentsCount,telemetryVersion,dataCollectedAt,notes,createdAt,updatedAt) VALUES (101,10,58,212.5,320.0,350.0,45.2,0.18,620,1050,4.2,85.0,5.3,2,22.5,0,'v2.3','2023-09-10 14:30:00','No anomalies','2023-09-10 15:00:00','2023-09-10 15:05:00');
INSERT INTO telemetry_data_summary (raceId,driverId,lapCount,avgSpeed,maxSpeed,totalDistance,fuelUsage,tireWear,brakeTemperature,engineTemp,gForcePeak,throttlePercentage,steeringAngleAvg,pitStopCount,avgPitStopTime,incidentsCount,telemetryVersion,dataCollectedAt,notes,createdAt,updatedAt) VALUES (102,12,62,210.0,315.5,360.0,47.0,0.20,610,1035,4.0,83.5,5.1,1,20.0,1,'v2.4','2023-10-05 16:15:00','Minor sensor glitch corrected','2023-10-05 16:45:00','2023-10-05 16:50:00');
INSERT INTO telemetry_data_summary (raceId,driverId,lapCount,avgSpeed,maxSpeed,totalDistance,fuelUsage,tireWear,brakeTemperature,engineTemp,gForcePeak,throttlePercentage,steeringAngleAvg,pitStopCount,avgPitStopTime,incidentsCount,telemetryVersion,dataCollectedAt,notes,createdAt,updatedAt) VALUES (103,15,55,215.2,322.3,340.0,44.5,0.17,630,1060,4.3,86.0,5.5,3,23.0,0,'v2.5','2023-11-12 13:45:00','Data validated','2023-11-12 14:10:00','2023-11-12 14:15:00');

-- Weather forecast models for circuits
CREATE TABLE weather_forecast_models (
    modelId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    modelName TEXT,
    version TEXT,
    forecastDate DATE,
    temperatureHigh REAL,
    temperatureLow REAL,
    precipitationProbability REAL,
    windSpeed REAL,
    windDirection TEXT,
    humidity REAL,
    pressure REAL,
    visibility REAL,
    cloudCover REAL,
    modelAccuracy REAL,
    updatedBy TEXT,
    updateTimestamp DATETIME,
    notes TEXT,
    activeFlag INTEGER,
    createdAt DATETIME,
    updatedAt DATETIME
);

INSERT INTO weather_forecast_models (circuitId,modelName,version,forecastDate,temperatureHigh,temperatureLow,precipitationProbability,windSpeed,windDirection,humidity,pressure,visibility,cloudCover,modelAccuracy,updatedBy,updateTimestamp,notes,activeFlag,createdAt,updatedAt) VALUES (1,'EuroCast','1.0','2023-09-10',28.5,15.2,10.0,12.0,'NW',65.0,1015,10.0,20.0,92.5,'Anna Lee','2023-09-09 18:00:00','Standard European model',1,'2023-09-01 09:00:00','2023-09-09 18:05:00');
INSERT INTO weather_forecast_models (circuitId,modelName,version,forecastDate,temperatureHigh,temperatureLow,precipitationProbability,windSpeed,windDirection,humidity,pressure,visibility,cloudCover,modelAccuracy,updatedBy,updateTimestamp,notes,activeFlag,createdAt,updatedAt) VALUES (2,'AsiaStorm','2.1','2023-10-05',32.0,22.5,30.0,15.0,'SE',78.0,1008,8.0,40.0,88.0,'Takeshi Mori','2023-10-04 20:00:00','Includes monsoon data',1,'2023-09-20 10:30:00','2023-10-04 20:05:00');
INSERT INTO weather_forecast_models (circuitId,modelName,version,forecastDate,temperatureHigh,temperatureLow,precipitationProbability,windSpeed,windDirection,humidity,pressure,visibility,cloudCover,modelAccuracy,updatedBy,updateTimestamp,notes,activeFlag,createdAt,updatedAt) VALUES (3,'AmeriFlex','3.0','2023-11-12',25.0,12.0,5.0,8.0,'NE',55.0,1018,12.0,15.0,94.0,'Emily Clark','2023-11-11 16:00:00','Optimized for desert tracks',1,'2023-10-15 08:45:00','2023-11-11 16:10:00');

-- Sponsor engagement event details
CREATE TABLE sponsor_engagement_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventName TEXT,
    startDate DATE,
    endDate DATE,
    venue TEXT,
    city TEXT,
    country TEXT,
    expectedAttendance INTEGER,
    actualAttendance INTEGER,
    cost REAL,
    sponsorBenefit TEXT,
    mediaCoverage TEXT,
    socialMediaReach INTEGER,
    leadGenerated INTEGER,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    status TEXT,
    contactPerson TEXT,
    contactEmail TEXT
);

INSERT INTO sponsor_engagement_events (sponsorId,eventName,startDate,endDate,venue,city,country,expectedAttendance,actualAttendance,cost,sponsorBenefit,mediaCoverage,socialMediaReach,leadGenerated,notes,createdAt,updatedAt,status,contactPerson,contactEmail) VALUES (5,'Tech Expo 2023','2023-06-01','2023-06-03','Convention Center','Munich','Germany',5000,5200,250000,'Brand visibility','TV+Online','1500000',300,'Successful product showcase','2023-05-15 09:00:00','2023-06-04 17:00:00','Completed','Klaus Meyer','klaus.meyer@techsponsor.com');
INSERT INTO sponsor_engagement_events (sponsorId,eventName,startDate,endDate,venue,city,country,expectedAttendance,actualAttendance,cost,sponsorBenefit,mediaCoverage,socialMediaReach,leadGenerated,notes,createdAt,updatedAt,status,contactPerson,contactEmail) VALUES (7,'Energy Power Talk','2023-07-20','2023-07-22','Exhibition Hall','Tokyo','Japan',3000,3100,180000,'Industry leadership','Print+Digital','800000',150,'Positive feedback from attendees','2023-07-01 10:30:00','2023-07-23 12:45:00','Completed','Yuki Tanaka','yuki.tanaka@energysponsor.jp');
INSERT INTO sponsor_engagement_events (sponsorId,eventName,startDate,endDate,venue,city,country,expectedAttendance,actualAttendance,cost,sponsorBenefit,mediaCoverage,socialMediaReach,leadGenerated,notes,createdAt,updatedAt,status,contactPerson,contactEmail) VALUES (9,'Luxury Lifestyle Gala','2023-09-15','2023-09-15','Grand Ballroom','Dubai','UAE',800,850,400000,'Premium brand placement','Luxury Magazines','2000000',250,'High net‑worth leads','2023-09-01 08:00:00','2023-09-16 20:00:00','Completed','Aisha AlFarsi','aisha.alfarsi@luxurysponsor.ae');

-- Logistics equipment inventory
CREATE TABLE logistics_equipment_inventory (
    equipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    locationId INTEGER,
    equipmentType TEXT,
    brand TEXT,
    model TEXT,
    serialNumber TEXT,
    purchaseDate DATE,
    warrantyEnd DATE,
    status TEXT,
    lastMaintenanceDate DATE,
    nextMaintenanceDue DATE,
    assignedTo TEXT,
    usageHours INTEGER,
    conditionScore REAL,
    depreciationValue REAL,
    currentValue REAL,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    activeFlag INTEGER
);

INSERT INTO logistics_equipment_inventory (locationId,equipmentType,brand,model,serialNumber,purchaseDate,warrantyEnd,status,lastMaintenanceDate,nextMaintenanceDue,assignedTo,usageHours,conditionScore,depreciationValue,currentValue,notes,createdAt,updatedAt,activeFlag) VALUES (101,'Truck','Volvo','FH16','SN12345','2020-03-01','2025-03-01','Active','2023-06-01','2023-12-01','Transport Team',2500,8.9,15000,85000,'Regular route vehicle','2023-01-15 07:00:00','2023-06-15 09:30:00',1);
INSERT INTO logistics_equipment_inventory (locationId,equipmentType,brand,model,serialNumber,purchaseDate,warrantyEnd,status,lastMaintenanceDate,nextMaintenanceDue,assignedTo,usageHours,conditionScore,depreciationValue,currentValue,notes,createdAt,updatedAt,activeFlag) VALUES (102,'Generator','Caterpillar','G3500','SN98765','2019-07-15','2024-07-15','Active','2023-05-20','2023-11-20','Electrical Team',1800,9.2,20000,120000,'Backup power for events','2023-02-10 08:20:00','2023-05-21 10:00:00',1);
INSERT INTO logistics_equipment_inventory (locationId,equipmentType,brand,model,serialNumber,purchaseDate,warrantyEnd,status,lastMaintenanceDate,nextMaintenanceDue,assignedTo,usageHours,conditionScore,depreciationValue,currentValue,notes,createdAt,updatedAt,activeFlag) VALUES (103,'Crane','Liebherr','LTM 1100','SN54321','2021-11-05','2026-11-05','Active','2023-07-10','2024-01-10','Setup Crew',900,8.5,12000,65000,'Used for track installations','2023-03-01 09:15:00','2023-07-11 11:45:00',1);