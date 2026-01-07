-- Table storing detailed accessibility audits for each venue
CREATE TABLE venue_accessibility_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER NOT NULL,
    auditDate DATE NOT NULL,
    wheelchair_access BOOLEAN,
    braille_signage BOOLEAN,
    audio_guide_available BOOLEAN,
    ramp_grade REAL,
    elevator_count INTEGER,
    emergency_exit_width REAL,
    staff_training_completed BOOLEAN,
    notes TEXT,
    inspectorName TEXT,
    inspectorId INTEGER,
    compliance_score REAL,
    recommendation_summary TEXT,
    follow_up_date DATE,
    resolved BOOLEAN,
    resolution_notes TEXT,
    create_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO venue_accessibility_audits (venueId,auditDate,wheelchair_access,braille_signage,audio_guide_available,ramp_grade,elevator_count,emergency_exit_width,staff_training_completed,notes,inspectorName,inspectorId,compliance_score,recommendation_summary,follow_up_date,resolved,resolution_notes) VALUES (101,'2023-05-12',1,1,0,5.2,4,1.5,1,'All paths clear','John Doe',2001,92.5,'Add tactile paving at entrance','2023-06-01',0,'');
INSERT INTO venue_accessibility_audits (venueId,auditDate,wheelchair_access,braille_signage,audio_guide_available,ramp_grade,elevator_count,emergency_exit_width,staff_training_completed,notes,inspectorName,inspectorId,compliance_score,recommendation_summary,follow_up_date,resolved,resolution_notes) VALUES (102,'2023-07-03',0,1,1,6.8,2,2.0,0,'Elevator malfunction','Anna Smith',2002,78.0,'Replace faulty elevator','2023-07-20',0,'');
INSERT INTO venue_accessibility_audits (venueId,auditDate,wheelchair_access,braille_signage,audio_guide_available,ramp_grade,elevator_count,emergency_exit_width,staff_training_completed,notes,inspectorName,inspectorId,compliance_score,recommendation_summary,follow_up_date,resolved,resolution_notes) VALUES (103,'2023-08-15',1,0,1,4.5,3,1.2,1,'Good overall','Mark Lee',2003,88.0,'Install braille signs in restrooms','2023-09-01',1,'Completed');

-- Table tracking psychology and mental‑wellness sessions for team personnel
CREATE TABLE team_psychology_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER NOT NULL,
    memberId INTEGER NOT NULL,
    memberRole TEXT,
    therapistId INTEGER,
    therapistName TEXT,
    sessionDate DATE,
    sessionDurationMinutes INTEGER,
    focusArea TEXT,
    sessionType TEXT,
    notes TEXT,
    outcomeScore REAL,
    followUpRequired BOOLEAN,
    followUpDate DATE,
    confidentialFlag BOOLEAN,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    location TEXT,
    sessionMode TEXT,
    paymentMethod TEXT,
    invoiceId INTEGER
);

INSERT INTO team_psychology_sessions (teamId,memberId,memberRole,therapistId,therapistName,sessionDate,sessionDurationMinutes,focusArea,sessionType,notes,outcomeScore,followUpRequired,followUpDate,confidentialFlag,location,sessionMode,paymentMethod,invoiceId) VALUES (10,501,'Driver',301,'Dr Greene','2023-04-10',60,'Performance Anxiety','OneOnOne','Patient reported reduced stress','85.5',0,NULL,1,'Team HQ','InPerson','Company','4001');
INSERT INTO team_psychology_sessions (teamId,memberId,memberRole,therapistId,therapistName,sessionDate,sessionDurationMinutes,focusArea,sessionType,notes,outcomeScore,followUpRequired,followUpDate,confidentialFlag,location,sessionMode,paymentMethod,invoiceId) VALUES (11,502,'Engineer',302,'Ms Patel','2023-05-22',45,'Team Dynamics','Group','Improved communication observed','90.0',1,'2023-06-05',1,'Remote Studio','Virtual','Company','4002');
INSERT INTO team_psychology_sessions (teamId,memberId,memberRole,therapistId,therapistName,sessionDate,sessionDurationMinutes,focusArea,sessionType,notes,outcomeScore,followUpRequired,followUpDate,confidentialFlag,location,sessionMode,paymentMethod,invoiceId) VALUES (12,503,'Strategist',303,'Dr Liu','2023-06-15',30,'Focus & Concentration','OneOnOne','Client reported better focus','78.0',0,NULL,1,'Training Center','InPerson','Company','4003');

-- Table capturing metrics from sponsor‑led charity events
CREATE TABLE sponsor_charity_event_metrics (
    metricId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    eventName TEXT,
    eventDate DATE,
    cause TEXT,
    pledgedAmount REAL,
    amountRaised REAL,
    participantCount INTEGER,
    volunteerHours INTEGER,
    mediaMentions INTEGER,
    socialImpressions INTEGER,
    donorCount INTEGER,
    averageDonation REAL,
    fundraisingGoal REAL,
    goalAchieved BOOLEAN,
    postEventRating REAL,
    feedbackSummary TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    region TEXT,
    eventDurationHours INTEGER
);

INSERT INTO sponsor_charity_event_metrics (sponsorId,eventId,eventName,eventDate,cause,pledgedAmount,amountRaised,participantCount,volunteerHours,mediaMentions,socialImpressions,donorCount,averageDonation,fundraisingGoal,goalAchieved,postEventRating,feedbackSummary,region,eventDurationHours) VALUES (9001,301,'Kids Racing Day','2023-03-10','Youth Sports',20000,18500,350,120,15,50000,180,102.8,20000,0,4.5,'Positive feedback from families','Europe',6);
INSERT INTO sponsor_charity_event_metrics (sponsorId,eventId,eventName,eventDate,cause,pledgedAmount,amountRaised,participantCount,volunteerHours,mediaMentions,socialImpressions,donorCount,averageDonation,fundraisingGoal,goalAchieved,postEventRating,feedbackSummary,region,eventDurationHours) VALUES (9002,302,'Green Track Initiative','2023-04-22','Environmental',15000,16250,220,80,10,35000,140,115.9,15000,1,4.8,'Excellent community involvement','NorthAmerica',4);
INSERT INTO sponsor_charity_event_metrics (sponsorId,eventId,eventName,eventDate,cause,pledgedAmount,amountRaised,participantCount,volunteerHours,mediaMentions,socialImpressions,donorCount,averageDonation,fundraisingGoal,goalAchieved,postEventRating,feedbackSummary,region,eventDurationHours) VALUES (9003,303,'Veterans Pit Stop','2023-05-18','Veterans Support',25000,26000,400,150,20,60000,200,130.0,25000,1,4.9,'High satisfaction among attendees','Asia',5);

-- Table describing vegetation management activities around circuits
CREATE TABLE circuit_vegetation_management (
    managementId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    scheduleDate DATE,
    vegetationType TEXT,
    areaSqM REAL,
    pruningPerformed BOOLEAN,
    weedControlMethod TEXT,
    herbicideUsed TEXT,
    pesticideApplied BOOLEAN,
    pesticideType TEXT,
    laborHours INTEGER,
    crewLeadId INTEGER,
    crewLeadName TEXT,
    notes TEXT,
    complianceFlag BOOLEAN,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    soilMoisturePercent REAL
);

INSERT INTO circuit_vegetation_management (circuitId,scheduleDate,vegetationType,areaSqM,pruningPerformed,weedControlMethod,herbicideUsed,pesticideApplied,pesticideType,laborHours,crewLeadId,crewLeadName,notes,complianceFlag,weatherCondition,temperatureC,humidityPercent,soilMoisturePercent) VALUES (1,'2023-03-05','Grass',1500,1,'Mechanical','None',0,NULL,30,501,'Luis Gomez','Routine mowing',1,'Sunny',22.5,45,30);
INSERT INTO circuit_vegetation_management (circuitId,scheduleDate,vegetationType,areaSqM,pruningPerformed,weedControlMethod,herbicideUsed,pesticideApplied,pesticideType,laborHours,crewLeadId,crewLeadName,notes,complianceFlag,weatherCondition,temperatureC,humidityPercent,soilMoisturePercent) VALUES (2,'2023-04-12','Shrubs',800,1,'Chemical','Roundup',1,'InsecticideA',20,502,'Anita Rao','Removed invasive species',1,'Overcast',18.0,55,35);
INSERT INTO circuit_vegetation_management (circuitId,scheduleDate,vegetationType,areaSqM,pruningPerformed,weedControlMethod,herbicideUsed,pesticideApplied,pesticideType,laborHours,crewLeadId,crewLeadName,notes,complianceFlag,weatherCondition,temperatureC,humidityPercent,soilMoisturePercent) VALUES (3,'2023-05-20','Trees',3000,0,'None',NULL,0,NULL,45,503,'Marco Silva','Performed health assessment',1,'Rainy',16.3,70,40);

-- Table archiving broadcast metadata records
CREATE TABLE broadcast_metadata_archive (
    archiveId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER NOT NULL,
    mediaType TEXT,
    codec TEXT,
    bitrateKbps INTEGER,
    resolution TEXT,
    aspectRatio TEXT,
    frameRate REAL,
    audioChannels INTEGER,
    language TEXT,
    subtitleLanguage TEXT,
    durationSeconds INTEGER,
    fileSizeMB REAL,
    checksum TEXT,
    storageLocation TEXT,
    uploadedBy TEXT,
    uploadDate DATE,
    processingStatus TEXT,
    qualityScore REAL,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO broadcast_metadata_archive (broadcastId,mediaType,codec,bitrateKbps,resolution,aspectRatio,frameRate,audioChannels,language,subtitleLanguage,durationSeconds,fileSizeMB,checksum,storageLocation,uploadedBy,uploadDate,processingStatus,qualityScore,notes) VALUES (1001,'Video','H264',5000,'1920x1080','16:9',29.97,2,'English','Spanish',7200,1500.5,'ABC123','/archive/2023/','tech1','2023-03-01','Processed',9.2,'');
INSERT INTO broadcast_metadata_archive (broadcastId,mediaType,codec,bitrateKbps,resolution,aspectRatio,frameRate,audioChannels,language,subtitleLanguage,durationSeconds,fileSizeMB,checksum,storageLocation,uploadedBy,uploadDate,processingStatus,qualityScore,notes) VALUES (1002,'Audio','AAC',320,'','',0,2,'German','English',3600,120.0,'DEF456','/archive/2023/','tech2','2023-04-15','Processed',8.7,'');
INSERT INTO broadcast_metadata_archive (broadcastId,mediaType,codec,bitrateKbps,resolution,aspectRatio,frameRate,audioChannels,language,subtitleLanguage,durationSeconds,fileSizeMB,checksum,storageLocation,uploadedBy,uploadDate,processingStatus,qualityScore,notes) VALUES (1003,'Video','HEVC',8000,'3840x2160','16:9',60.00,6,'Japanese','English',5400,5000.0,'GHI789','/archive/2023/','tech3','2023-05-22','Pending',0.0,'Awaiting QC');

-- Table recording calibration data for medical equipment
CREATE TABLE medical_equipment_calibration (
    calibrationId INTEGER PRIMARY KEY AUTOINCREMENT,
    equipmentId INTEGER NOT NULL,
    equipmentType TEXT,
    serialNumber TEXT,
    calibrationDate DATE,
    technicianId INTEGER,
    technicianName TEXT,
    calibrationMethod TEXT,
    toleranceUpper REAL,
    toleranceLower REAL,
    measuredValue REAL,
    passFail BOOLEAN,
    comments TEXT,
    nextDueDate DATE,
    location TEXT,
    department TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    calibrationStatus TEXT,
    calibrationAgency TEXT,
    costUSD REAL
);

INSERT INTO medical_equipment_calibration (equipmentId,equipmentType,serialNumber,calibrationDate,technicianId,technicianName,calibrationMethod,toleranceUpper,toleranceLower,measuredValue,passFail,comments,nextDueDate,location,department,calibrationStatus,calibrationAgency,costUSD) VALUES (2001,'ECG','ECG-5678','2023-02-10',401,'Sam Patel','Standard','0.5','-0.5','0.1',1,'All good','2024-02-10','Medical Center A','Cardiology','Completed','HealthCal Inc',250);
INSERT INTO medical_equipment_calibration (equipmentId,equipmentType,serialNumber,calibrationDate,technicianId,technicianName,calibrationMethod,toleranceUpper,toleranceLower,measuredValue,passFail,comments,nextDueDate,location,department,calibrationStatus,calibrationAgency,costUSD) VALUES (2002,'Ventilator','VNT-3344','2023-03-15',402,'Liu Wei','Advanced','1.0','-1.0','1.2',0,'Outside tolerance','2024-03-15','Medical Center B','ICU','Pending','MediCheck',1200);
INSERT INTO medical_equipment_calibration (equipmentId,equipmentType,serialNumber,calibrationDate,technicianId,technicianName,calibrationMethod,toleranceUpper,toleranceLower,measuredValue,passFail,comments,nextDueDate,location,department,calibrationStatus,calibrationAgency,costUSD) VALUES (2003,'Defibrillator','DFB-7890','2023-04-20',403,'Anna Rossi','Standard','0.2','-0.2','0.05',1,'Within limits','2025-04-20','Medical Center C','Emergency','Completed','HealthCal Inc',800);

-- Table storing results of driver licensing examinations
CREATE TABLE driver_licensing_exam_results (
    resultId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    examYear INTEGER,
    examDate DATE,
    country TEXT,
    licenseClass TEXT,
    theoryScore REAL,
    practicalScore REAL,
    totalScore REAL,
    pass BOOLEAN,
    examinerId INTEGER,
    examinerName TEXT,
    testCenterId INTEGER,
    testCenterName TEXT,
    remarks TEXT,
    certificateNumber TEXT,
    issueDate DATE,
    expiryDate DATE,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    venueId INTEGER,
    weatherCondition TEXT
);

INSERT INTO driver_licensing_exam_results (driverId,examYear,examDate,country,licenseClass,theoryScore,practicalScore,totalScore,pass,examinerId,examinerName,testCenterId,testCenterName,remarks,certificateNumber,issueDate,expiryDate,venueId,weatherCondition) VALUES (501,2023,'2023-01-12','UK','A','88.5','92.0','90.3',1,701,'John Baker',101,'London Test Centre','Excellent','UKA2023001','2023-01-15','2028-01-15',10,'Clear');
INSERT INTO driver_licensing_exam_results (driverId,examYear,examDate,country,licenseClass,theoryScore,practicalScore,totalScore,pass,examinerId,examinerName,testCenterId,testCenterName,remarks,certificateNumber,issueDate,expiryDate,venueId,weatherCondition) VALUES (502,2023,'2023-02-20','Germany','B','75.0','80.0','77.5',1,702,'Klaus Meyer',102,'Berlin Test Centre','Satisfactory','DEB2023002','2023-02-25','2028-02-25',11,'Cloudy');
INSERT INTO driver_licensing_exam_results (driverId,examYear,examDate,country,licenseClass,theoryScore,practicalScore,totalScore,pass,examinerId,examinerName,testCenterId,testCenterName,remarks,certificateNumber,issueDate,expiryDate,venueId,weatherCondition) VALUES (503,2023,'2023-03-05','Spain','C','60.0','58.0','59.0',0,703,'Maria Lopez',103,'Madrid Test Centre','Failed practical','ESP2023003','2023-03-10','2028-03-10',12,'Rain');

-- Table tracking fuel supply chain logistics
CREATE TABLE fuel_supply_chain_logistics (
    logisticsId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    fuelProviderId INTEGER,
    providerName TEXT,
    contractNumber TEXT,
    deliveryDate DATE,
    quantityLiters REAL,
    unitPriceUSD REAL,
    totalCostUSD REAL,
    transportMode TEXT,
    vehicleId INTEGER,
    driverId INTEGER,
    loadingPort TEXT,
    unloadingPort TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    qualityStandard TEXT,
    complianceFlag BOOLEAN,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    shipmentStatus TEXT,
    inspectorId INTEGER
);

INSERT INTO fuel_supply_chain_logistics (raceId,fuelProviderId,providerName,contractNumber,deliveryDate,quantityLiters,unitPriceUSD,totalCostUSD,transportMode,vehicleId,driverId,loadingPort,unloadingPort,temperatureC,humidityPercent,qualityStandard,complianceFlag,notes,shipmentStatus,inspectorId) VALUES (301,900,'FuelCo','FC-2023-001','2023-04-01',50000,1.20,60000,'Truck',7001,401,'Port A','Circuit A',15.0,70,'ISO9001',1,'On schedule','Delivered',501);
INSERT INTO fuel_supply_chain_logistics (raceId,fuelProviderId,providerName,contractNumber,deliveryDate,quantityLiters,unitPriceUSD,totalCostUSD,transportMode,vehicleId,driverId,loadingPort,unloadingPort,temperatureC,humidityPercent,qualityStandard,complianceFlag,notes,shipmentStatus,inspectorId) VALUES (302,901,'PetroMax','PM-2023-045','2023-05-10',75000,1.15,86250,'Rail',7002,402,'Port B','Circuit B',18.5,65,'ISO14001',1,'Delayed 2 hrs','Delivered',502);
INSERT INTO fuel_supply_chain_logistics (raceId,fuelProviderId,providerName,contractNumber,deliveryDate,quantityLiters,unitPriceUSD,totalCostUSD,transportMode,vehicleId,driverId,loadingPort,unloadingPort,temperatureC,humidityPercent,qualityStandard,complianceFlag,notes,shipmentStatus,inspectorId) VALUES (303,902,'EnergyPlus','EP-2023-078','2023-06-20',60000,1.25,75000,'Truck',7003,403,'Port C','Circuit C',20.0,60,'ISO50001',0,'Quality issue detected','Pending Inspection',503);

-- Table logging extreme weather events affecting races
CREATE TABLE weather_extreme_event_reports (
    reportId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    eventType TEXT,
    eventStart DATETIME,
    eventEnd DATETIME,
    maxWindSpeedKph REAL,
    maxPrecipitationMm REAL,
    temperatureC REAL,
    humidityPercent REAL,
    visibilityKm REAL,
    impactDescription TEXT,
    delayMinutes INTEGER,
    cancellations INTEGER,
    safetyMeasures TEXT,
    coordinationAgency TEXT,
    notes TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    alertLevel TEXT,
    responseTeamId INTEGER
);

INSERT INTO weather_extreme_event_reports (raceId,eventType,eventStart,eventEnd,maxWindSpeedKph,maxPrecipitationMm,temperatureC,humidityPercent,visibilityKm,impactDescription,delayMinutes,cancellations,safetyMeasures,coordinationAgency,alertLevel,responseTeamId) VALUES (301,'Heavy Rain','2023-04-01 10:15','2023-04-01 12:30',45,30.5,12.0,85,2,'Track flooding caused multiple red flags',45,0,'Deploy drainage pumps','National Weather Service','High',801);
INSERT INTO weather_extreme_event_reports (raceId,eventType,eventStart,eventEnd,maxWindSpeedKph,maxPrecipitationMm,temperatureC,humidityPercent,visibilityKm,impactDescription,delayMinutes,cancellations,safetyMeasures,coordinationAgency,alertLevel,responseTeamId) VALUES (302,'Wind Gusts','2023-05-10 14:00','2023-05-10 15:45',80,0,18.5,55,5,'Crosswinds affected car stability on straight',30,0,'Restrict to safety car laps','Meteorological Agency','Medium',802);
INSERT INTO weather_extreme_event_reports (raceId,eventType,eventStart,eventEnd,maxWindSpeedKph,maxPrecipitationMm,temperatureC,humidityPercent,visibilityKm,impactDescription,delayMinutes,cancellations,safetyMeasures,coordinationAgency,alertLevel,responseTeamId) VALUES (303,'Heatwave','2023-06-20 09:00','2023-06-20 16:00',20,0,38.0,30,15,'Extreme temperatures increased tyre degradation',0,0,'Increase pit stop frequency','Health & Safety Board','Low',803);

-- Table inventorying trackside holographic display units
CREATE TABLE trackside_holographic_display_inventory (
    displayId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    locationDescription TEXT,
    modelNumber TEXT,
    manufacturer TEXT,
    installationDate DATE,
    resolution TEXT,
    brightnessNits INTEGER,
    powerConsumptionW REAL,
    firmwareVersion TEXT,
    lastMaintenanceDate DATE,
    maintenanceVendor TEXT,
    operationalStatus TEXT,
    warrantyExpiry DATE,
    supportedMediaFormats TEXT,
    networkConnectivity TEXT,
    ipAddress TEXT,
    macAddress TEXT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    serialNumber TEXT,
    calibrationDate DATE
);

INSERT INTO trackside_holographic_display_inventory (circuitId,locationDescription,modelNumber,manufacturer,installationDate,resolution,brightnessNits,powerConsumptionW,firmwareVersion,lastMaintenanceDate,maintenanceVendor,operationalStatus,warrantyExpiry,supportedMediaFormats,networkConnectivity,ipAddress,macAddress,serialNumber,calibrationDate) VALUES (1,'Turn 1','HOLO-500','HoloTech','2022-09-15','4K','1500',250.5,'v3.2','2023-03-01','TechServ Ltd','Operational','2025-09-15','MP4,AVI','Ethernet','192.168.1.10','AA:BB:CC:DD:EE:01','SN-H500-001','2023-02-28');
INSERT INTO trackside_holographic_display_inventory (circuitId,locationDescription,modelNumber,manufacturer,installationDate,resolution,brightnessNits,powerConsumptionW,firmwareVersion,lastMaintenanceDate,maintenanceVendor,operationalStatus,warrantyExpiry,supportedMediaFormats,networkConnectivity,ipAddress,macAddress,serialNumber,calibrationDate) VALUES (2,'Pit Lane','HOLO-750','VisionDisplay','2023-01-20','8K','2000',350.0,'v1.8','2023-06-10','DisplayFix Co','Operational','2026-01-20','MKV,MP4','WiFi','192.168.2.20','AA:BB:CC:DD:EE:02','SN-H750-002','2023-05-30');
INSERT INTO trackside_holographic_display_inventory (circuitId,locationDescription,modelNumber,manufacturer,installationDate,resolution,brightnessNits,powerConsumptionW,firmwareVersion,lastMaintenanceDate,maintenanceVendor,operationalStatus,warrantyExpiry,supportedMediaFormats,networkConnectivity,ipAddress,macAddress,serialNumber,calibrationDate) VALUES (3,'Main Straight','HOLO-600','HoloInnovate','2022-11-05','4K','1800',300.0,'v2.5','2023-04-15','UltraTech Services','Operational','2025-11-05','MP4,FLV','Fiber','192.168.3.30','AA:BB:CC:DD:EE:03','SN-H600-003','2023-03-20');