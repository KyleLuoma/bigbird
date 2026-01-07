-- Wind tunnel test results
CREATE TABLE wind_tunnel_test_results (
    testId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    constructorId INTEGER,
    driverId INTEGER,
    year INTEGER,
    testDate TEXT,
    windSpeed REAL,
    temperature REAL,
    humidity REAL,
    pressure REAL,
    downforce REAL,
    dragCoefficient REAL,
    liftCoefficient REAL,
    note TEXT,
    simulationSoftware TEXT,
    version TEXT,
    analyst TEXT,
    resultUrl TEXT,
    approved INTEGER,
    validationScore REAL,
    createdAt TEXT
);

INSERT INTO wind_tunnel_test_results (circuitId,constructorId,driverId,year,testDate,windSpeed,temperature,humidity,pressure,downforce,dragCoefficient,liftCoefficient,note,simulationSoftware,version,analyst,resultUrl,approved,validationScore,createdAt) VALUES (1,10,101,2023,'2023-03-15',12.5,22.0,45.0,1013.25,350.0,0.32,0.05,'initial run','CFDTool','v1.2','jdoe','http://example.com/result1',1,0.95,'2023-03-15');
INSERT INTO wind_tunnel_test_results (circuitId,constructorId,driverId,year,testDate,windSpeed,temperature,humidity,pressure,downforce,dragCoefficient,liftCoefficient,note,simulationSoftware,version,analyst,resultUrl,approved,validationScore,createdAt) VALUES (2,12,103,2023,'2023-04-10',15.0,18.5,50.0,1012.80,400.0,0.28,0.04,'second iteration','AeroSim','v2.0','asmith','http://example.com/result2',1,0.98,'2023-04-10');
INSERT INTO wind_tunnel_test_results (circuitId,constructorId,driverId,year,testDate,windSpeed,temperature,humidity,pressure,downforce,dragCoefficient,liftCoefficient,note,simulationSoftware,version,analyst,resultUrl,approved,validationScore,createdAt) VALUES (3,14,105,2023,'2023-05-05',10.0,20.0,40.0,1013.00,300.0,0.35,0.06,'final validation','WindFlow','v3.1','bwhite','http://example.com/result3',0,0.90,'2023-05-05');

-- Fuel consumption logs
CREATE TABLE fuel_consumption_logs (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    constructorId INTEGER,
    lap INTEGER,
    fuelUsedLiters REAL,
    fuelRemainingLiters REAL,
    consumptionRate REAL,
    engineMode TEXT,
    timestamp TEXT,
    telemetryId INTEGER,
    sensorTemp REAL,
    sensorPressure REAL,
    notes TEXT,
    verified INTEGER,
    sourceSystem TEXT,
    batchNumber INTEGER,
    createdBy TEXT,
    createdAt TEXT,
    revision INTEGER
);

INSERT INTO fuel_consumption_logs (raceId,driverId,constructorId,lap,fuelUsedLiters,fuelRemainingLiters,consumptionRate,engineMode,timestamp,telemetryId,sensorTemp,sensorPressure,notes,verified,sourceSystem,batchNumber,createdBy,createdAt,revision) VALUES (101,201,301,12,2.5,38.0,0.208,'high','2023-09-01 14:35:00',5001,85.2,101.5,'normal operation',1,'telemetry','B001','jdoe','2023-09-01',1);
INSERT INTO fuel_consumption_logs (raceId,driverId,constructorId,lap,fuelUsedLiters,fuelRemainingLiters,consumptionRate,engineMode,timestamp,telemetryId,sensorTemp,sensorPressure,notes,verified,sourceSystem,batchNumber,createdBy,createdAt,revision) VALUES (102,202,302,25,3.0,35.0,0.120,'medium','2023-09-02 15:10:00',5002,88.0,100.8,'slight climb',1,'telemetry','B002','asmith','2023-09-02',1);
INSERT INTO fuel_consumption_logs (raceId,driverId,constructorId,lap,fuelUsedLiters,fuelRemainingLiters,consumptionRate,engineMode,timestamp,telemetryId,sensorTemp,sensorPressure,notes,verified,sourceSystem,batchNumber,createdBy,createdAt,revision) VALUES (103,203,303,40,1.8,30.0,0.045,'low','2023-09-03 16:00:00',5003,80.5,102.0,'conservative mode',0,'telemetry','B003','bwhite','2023-09-03',1);

-- Pit lane equipment
CREATE TABLE pit_lane_equipment (
    equipmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    pitStopNumber INTEGER,
    equipmentType TEXT,
    serialNumber TEXT,
    manufacturer TEXT,
    purchaseDate TEXT,
    warrantyEndDate TEXT,
    lastInspectionDate TEXT,
    condition TEXT,
    isAvailable INTEGER,
    assignedTeamId INTEGER,
    assignedDriverId INTEGER,
    location TEXT,
    weightKg REAL,
    dimensions TEXT,
    status TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO pit_lane_equipment (raceId,pitStopNumber,equipmentType,serialNumber,manufacturer,purchaseDate,warrantyEndDate,lastInspectionDate,condition,isAvailable,assignedTeamId,assignedDriverId,location,weightKg,dimensions,status,notes,createdAt,updatedAt) VALUES (101,3,'wheel gun','WG-001','PitTech','2020-06-15','2025-06-15','2023-08-01','good',1,10,201,'pit lane A',12.5,'30x15x20','operational','none','2023-08-01','2023-08-10');
INSERT INTO pit_lane_equipment (raceId,pitStopNumber,equipmentType,serialNumber,manufacturer,purchaseDate,warrantyEndDate,lastInspectionDate,condition,isAvailable,assignedTeamId,assignedDriverId,location,weightKg,dimensions,status,notes,createdAt,updatedAt) VALUES (102,5,'jacks','JK-078','LiftCo','2019-03-20','2024-03-20','2023-07-20','fair',1,12,203,'pit lane B',45.0,'40x20x15','operational','replaced hydraulic hose','2023-07-20','2023-07-30');
INSERT INTO pit_lane_equipment (raceId,pitStopNumber,equipmentType,serialNumber,manufacturer,purchaseDate,warrantyEndDate,lastInspectionDate,condition,isAvailable,assignedTeamId,assignedDriverId,location,weightKg,dimensions,status,notes,createdAt,updatedAt) VALUES (103,1,'fuel rig','FR-210','FuelSys','2021-11-05','2026-11-05','2023-09-05','good',0,14,205,'pit lane C',85.0,'120x80x70','maintenance','scheduled calibration','2023-09-05','2023-09-12');

-- Race track accessibility
CREATE TABLE race_track_accessibility (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    year INTEGER,
    wheelchairAccess INTEGER,
    brailleSignage INTEGER,
    audioGuides INTEGER,
    accessibleRestrooms INTEGER,
    parkingSpaces INTEGER,
    shuttleService INTEGER,
    assistanceStaff INTEGER,
    complianceLevel TEXT,
    auditDate TEXT,
    auditorName TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    revision INTEGER,
    contactPhone TEXT,
    contactEmail TEXT,
    website TEXT,
    accessibilityScore REAL
);

INSERT INTO race_track_accessibility (circuitId,year,wheelchairAccess,brailleSignage,audioGuides,accessibleRestrooms,parkingSpaces,shuttleService,assistanceStaff,complianceLevel,auditDate,auditorName,notes,createdAt,updatedAt,revision,contactPhone,contactEmail,website,accessibilityScore) VALUES (1,2023,1,1,1,1,10,1,5,'Level A','2023-06-01','auditteam','full compliance','2023-06-01','2023-06-10',1,'1234567890','info@circuit1.com','http://circuit1.com','9.5');
INSERT INTO race_track_accessibility (circuitId,year,wheelchairAccess,brailleSignage,audioGuides,accessibleRestrooms,parkingSpaces,shuttleService,assistanceStaff,complianceLevel,auditDate,auditorName,notes,createdAt,updatedAt,revision,contactPhone,contactEmail,website,accessibilityScore) VALUES (2,2023,0,1,0,1,5,0,2,'Level B','2023-07-15','auditteam','partial upgrades needed','2023-07-15','2023-07-20',1,'0987654321','contact@circuit2.org','http://circuit2.org','7.0');
INSERT INTO race_track_accessibility (circuitId,year,wheelchairAccess,brailleSignage,audioGuides,accessibleRestrooms,parkingSpaces,shuttleService,assistanceStaff,complianceLevel,auditDate,auditorName,notes,createdAt,updatedAt,revision,contactPhone,contactEmail,website,accessibilityScore) VALUES (3,2023,1,0,1,0,8,1,3,'Level A','2023-08-20','auditteam','recent improvements','2023-08-20','2023-08-25',1,'5551234567','services@circuit3.net','http://circuit3.net','8.8');

-- Venue noise monitoring
CREATE TABLE venue_noise_monitoring (
    monitorId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    eventId INTEGER,
    date TEXT,
    startTime TEXT,
    endTime TEXT,
    decibelLevel REAL,
    peakDecibel REAL,
    avgDecibel REAL,
    noiseSource TEXT,
    sensorId INTEGER,
    latitude REAL,
    longitude REAL,
    weatherCondition TEXT,
    windSpeed REAL,
    notes TEXT,
    reportedBy TEXT,
    approved INTEGER,
    createdAt TEXT,
    updatedAt TEXT
);

INSERT INTO venue_noise_monitoring (circuitId,eventId,date,startTime,endTime,decibelLevel,peakDecibel,avgDecibel,noiseSource,sensorId,latitude,longitude,weatherCondition,windSpeed,notes,reportedBy,approved,createdAt,updatedAt) VALUES (1,1001,'2023-09-01','10:00','12:00',85.2,102.5,90.0,'crowd',2001,45.123,-73.456,'sunny',5.0,'normal range','jdoe',1,'2023-09-01','2023-09-02');
INSERT INTO venue_noise_monitoring (circuitId,eventId,date,startTime,endTime,decibelLevel,peakDecibel,avgDecibel,noiseSource,sensorId,latitude,longitude,weatherCondition,windSpeed,notes,reportedBy,approved,createdAt,updatedAt) VALUES (2,1002,'2023-09-02','14:00','16:00',78.0,95.0,82.5,'engine',2002,46.789,-74.321,'cloudy',3.2,'within limits','asmith',1,'2023-09-02','2023-09-03');
INSERT INTO venue_noise_monitoring (circuitId,eventId,date,startTime,endTime,decibelLevel,peakDecibel,avgDecibel,noiseSource,sensorId,latitude,longitude,weatherCondition,windSpeed,notes,reportedBy,approved,createdAt,updatedAt) VALUES (3,1003,'2023-09-03','09:30','11:30',92.5,110.0,98.0,'construction',2003,47.001,-75.111,'rain',6.5,'exceeds threshold','bwhite',0,'2023-09-03','2023-09-04');

-- Hospitality event feedback
CREATE TABLE hospitality_event_feedback (
    feedbackId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    guestId INTEGER,
    ratingOverall INTEGER,
    ratingFood INTEGER,
    ratingService INTEGER,
    comments TEXT,
    surveyDate TEXT,
    submittedVia TEXT,
    followUpNeeded INTEGER,
    followUpNotes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    responderName TEXT,
    responderEmail TEXT,
    venueId INTEGER,
    roomId INTEGER,
    staffOnDuty TEXT,
    wifiQuality INTEGER,
    temperatureComfort INTEGER,
    noiseLevel INTEGER
);

INSERT INTO hospitality_event_feedback (eventId,guestId,ratingOverall,ratingFood,ratingService,comments,surveyDate,submittedVia,followUpNeeded,followUpNotes,createdAt,updatedAt,responderName,responderEmail,venueId,roomId,staffOnDuty,wifiQuality,temperatureComfort,noiseLevel) VALUES (501,10001,9,8,9,'excellent experience','2023-09-05','online',0,'','2023-09-05','2023-09-06','john doe','john.doe@example.com',10,101,'alice','5','22','3');
INSERT INTO hospitality_event_feedback (eventId,guestId,ratingOverall,ratingFood,ratingService,comments,surveyDate,submittedVia,followUpNeeded,followUpNotes,createdAt,updatedAt,responderName,responderEmail,venueId,roomId,staffOnDuty,wifiQuality,temperatureComfort,noiseLevel) VALUES (502,10002,7,6,7,'food could be better','2023-09-06','paper',1,'offer discount on next visit','2023-09-06','2023-09-07','bob smith','bob.smith@example.com',11,102,'charlie','4','21','4');
INSERT INTO hospitality_event_feedback (eventId,guestId,ratingOverall,ratingFood,ratingService,comments,surveyDate,submittedVia,followUpNeeded,followUpNotes,createdAt,updatedAt,responderName,responderEmail,venueId,roomId,staffOnDuty,wifiQuality,temperatureComfort,noiseLevel) VALUES (503,10003,5,5,5,'average overall','2023-09-07','online',0,'','2023-09-07','2023-09-08','diana','diana@example.com',12,103,'eve','3','20','2');

-- Vendor performance metrics
CREATE TABLE vendor_performance_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId INTEGER,
    contractId INTEGER,
    year INTEGER,
    deliveryOnTimePct REAL,
    qualityScore REAL,
    costVariancePct REAL,
    safetyIncidents INTEGER,
    complianceScore REAL,
    communicationScore REAL,
    contractRenewalLikelihood REAL,
    notes TEXT,
    reviewedBy TEXT,
    reviewDate TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    auditTrail TEXT,
    region TEXT,
    serviceCategory TEXT,
    active INTEGER,
    targetScore REAL
);

INSERT INTO vendor_performance_metrics (vendorId,contractId,year,deliveryOnTimePct,qualityScore,costVariancePct,safetyIncidents,complianceScore,communicationScore,contractRenewalLikelihood,notes,reviewedBy,reviewDate,createdAt,updatedAt,auditTrail,region,serviceCategory,active,targetScore) VALUES (2001,3001,2023,96.5,4.8,1.2,0,9.5,8.7,85.0,'excellent partner','jdoe','2023-09-10','2023-09-10','2023-09-11','v2001-2023','EMEA','logistics',1,9.0);
INSERT INTO vendor_performance_metrics (vendorId,contractId,year,deliveryOnTimePct,qualityScore,costVariancePct,safetyIncidents,complianceScore,communicationScore,contractRenewalLikelihood,notes,reviewedBy,reviewDate,createdAt,updatedAt,auditTrail,region,serviceCategory,active,targetScore) VALUES (2002,3002,2023,88.0,4.2,3.5,2,8.0,7.5,70.0,'needs improvement in safety','asmith','2023-09-11','2023-09-11','2023-09-12','v2002-2023','APAC','catering',1,8.0);
INSERT INTO vendor_performance_metrics (vendorId,contractId,year,deliveryOnTimePct,qualityScore,costVariancePct,safetyIncidents,complianceScore,communicationScore,contractRenewalLikelihood,notes,reviewedBy,reviewDate,createdAt,updatedAt,auditTrail,region,serviceCategory,active,targetScore) VALUES (2003,3003,2023,92.0,4.5,2.0,1,9.0,8.0,80.0,'stable performance','bwhite','2023-09-12','2023-09-12','2023-09-13','v2003-2023','NA','security',1,8.5);

-- Marquee event sponsorships
CREATE TABLE marquee_event_sponsorships (
    sponsorshipId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    sponsorId INTEGER,
    sponsorshipLevel TEXT,
    amountUSD REAL,
    startDate TEXT,
    endDate TEXT,
    brandingLocations TEXT,
    activationDetails TEXT,
    contractFileUrl TEXT,
    paymentStatus TEXT,
    invoicedAmount REAL,
    paidAmount REAL,
    notes TEXT,
    createdBy TEXT,
    createdAt TEXT,
    approvedBy TEXT,
    approvedAt TEXT,
    renewalOption TEXT,
    performanceMetric TEXT,
    visibilityScore REAL
);

INSERT INTO marquee_event_sponsorships (eventId,sponsorId,sponsorshipLevel,amountUSD,startDate,endDate,brandingLocations,activationDetails,contractFileUrl,paymentStatus,invoicedAmount,paidAmount,notes,createdBy,createdAt,approvedBy,approvedAt,renewalOption,performanceMetric,visibilityScore) VALUES (1001,5001,'Platinum',250000,'2023-01-01','2023-12-31','track signage,online','fan zone activation','http://example.com/contract1','Paid',250000,250000,'','jdoe','2023-01-01','asmith','2023-01-05','Yes','engagement','9.2');
INSERT INTO marquee_event_sponsorships (eventId,sponsorId,sponsorshipLevel,amountUSD,startDate,endDate,brandingLocations,activationDetails,contractFileUrl,paymentStatus,invoicedAmount,paidAmount,notes,createdBy,createdAt,approvedBy,approvedAt,renewalOption,performanceMetric,visibilityScore) VALUES (1002,5002,'Gold',150000,'2023-02-01','2023-11-30','pit lane banners','social media campaign','http://example.com/contract2','Pending',150000,0,'','asmith','2023-02-01','bwhite','2023-02-05','No','reach','8.0');
INSERT INTO marquee_event_sponsorships (eventId,sponsorId,sponsorshipLevel,amountUSD,startDate,endDate,brandingLocations,activationDetails,contractFileUrl,paymentStatus,invoicedAmount,paidAmount,notes,createdBy,createdAt,approvedBy,approvedAt,renewalOption,performanceMetric,visibilityScore) VALUES (1003,5003,'Silver',80000,'2023-03-01','2023-10-31','hospitality lounge','product showcase','http://example.com/contract3','Paid',80000,80000,'','bwhite','2023-03-01','jdoe','2023-03-05','Yes','brand recall','7.5');

-- Digital infrastructure inventory
CREATE TABLE digital_infrastructure_inventory (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    assetType TEXT,
    serialNumber TEXT,
    manufacturer TEXT,
    model TEXT,
    installDate TEXT,
    location TEXT,
    ipAddress TEXT,
    macAddress TEXT,
    firmwareVersion TEXT,
    lastPatchDate TEXT,
    status TEXT,
    assignedToTeam TEXT,
    warrantyEnd TEXT,
    maintenanceCycleDays INTEGER,
    lastMaintenanceDate TEXT,
    notes TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    depreciationRate REAL
);

INSERT INTO digital_infrastructure_inventory (assetType,serialNumber,manufacturer,model,installDate,location,ipAddress,macAddress,firmwareVersion,lastPatchDate,status,assignedToTeam,warrantyEnd,maintenanceCycleDays,lastMaintenanceDate,notes,createdAt,updatedAt,depreciationRate) VALUES ('router','RT-001','Cisco','ISR4321','2021-05-10','datacenter A','10.0.0.1','AA:BB:CC:DD:EE:01','12.3','2023-06-01','operational','network','2024-05-10',180,'2023-12-01','','2023-05-10','2023-12-01',0.15);
INSERT INTO digital_infrastructure_inventory (assetType,serialNumber,manufacturer,model,installDate,location,ipAddress,macAddress,firmwareVersion,lastPatchDate,status,assignedToTeam,warrantyEnd,maintenanceCycleDays,lastMaintenanceDate,notes,createdAt,updatedAt,depreciationRate) VALUES ('server','SV-200','Dell','PowerEdge R740','2020-08-20','datacenter B','10.0.1.20','AA:BB:CC:DD:EE:20','5.6','2023-05-15','operational','it','2023-08-20',365,'2023-11-01','','2020-08-20','2023-11-01',0.20);
INSERT INTO digital_infrastructure_inventory (assetType,serialNumber,manufacturer,model,installDate,location,ipAddress,macAddress,firmwareVersion,lastPatchDate,status,assignedToTeam,warrantyEnd,maintenanceCycleDays,lastMaintenanceDate,notes,createdAt,updatedAt,depreciationRate) VALUES ('switch','SW-350','Juniper','EX4300','2022-01-15','datacenter C','10.0.2.30','AA:BB:CC:DD:EE:30','21.4','2023-07-20','operational','network','2025-01-15',90,'2023-09-10','','2022-01-15','2023-09-10',0.12);

-- Safety training materials
CREATE TABLE safety_training_materials (
    materialId INTEGER PRIMARY KEY AUTOINCREMENT,
    trainingSessionId INTEGER,
    title TEXT,
    format TEXT,
    version TEXT,
    author TEXT,
    releaseDate TEXT,
    durationMinutes INTEGER,
    language TEXT,
    targetAudience TEXT,
    complianceLevel TEXT,
    fileUrl TEXT,
    thumbnailUrl TEXT,
    isMandatory INTEGER,
    requiredScore REAL,
    notes TEXT,
    createdBy TEXT,
    createdAt TEXT,
    updatedAt TEXT,
    archiveFlag INTEGER,
    lastAccessed TEXT
);

INSERT INTO safety_training_materials (trainingSessionId,title,format,version,author,releaseDate,durationMinutes,language,targetAudience,complianceLevel,fileUrl,thumbnailUrl,isMandatory,requiredScore,notes,createdBy,createdAt,updatedAt,archiveFlag,lastAccessed) VALUES (401,'Fire Safety Basics','video','v1.0','jdoe','2023-01-10',30,'English','all staff','Level 1','http://example.com/fire_safety.mp4','http://example.com/fire_thumb.png',1,80.0,'','jdoe','2023-01-10','2023-06-01',0,'2023-06-01');
INSERT INTO safety_training_materials (trainingSessionId,title,format,version,author,releaseDate,durationMinutes,language,targetAudience,complianceLevel,fileUrl,thumbnailUrl,isMandatory,requiredScore,notes,createdBy,createdAt,updatedAt,archiveFlag,lastAccessed) VALUES (402,'First Aid Procedures','pdf','v2.1','asmith','2023-02-15',15,'English','medical staff','Level 2','http://example.com/first_aid.pdf','http://example.com/first_aid_thumb.png',1,85.0,'','asmith','2023-02-15','2023-07-01',0,'2023-07-01');
INSERT INTO safety_training_materials (trainingSessionId,title,format,version,author,releaseDate,durationMinutes,language,targetAudience,complianceLevel,fileUrl,thumbnailUrl,isMandatory,requiredScore,notes,createdBy,createdAt,updatedAt,archiveFlag,lastAccessed) VALUES (403,'Track Evacuation Plan','slide','v1.2','bwhite','2023-03-20',20,'English','security staff','Level 3','http://example.com/evacuation.pptx','http://example.com/evacuation_thumb.png',1,90.0,'','bwhite','2023-03-20','2023-08-01',0,'2023-08-01');