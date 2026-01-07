-- Table storing detailed circuit inspection reports
CREATE TABLE circuit_inspections (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    inspectionDate DATE,
    inspectorName TEXT,
    structuralIntegrityScore REAL,
    surfaceConditionScore REAL,
    drainageEfficiency REAL,
    lightingCompliance INTEGER,
    safetyBarrierStatus TEXT,
    runoffAreaStatus TEXT,
    grassCoveragePct REAL,
    pavementAgeYears INTEGER,
    weatherImpactNotes TEXT,
    nextInspectionDue DATE,
    reportDocumentUrl TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    approvedBy TEXT,
    approvalDate DATE,
    inspectionType TEXT
);

INSERT INTO circuit_inspections (circuitId,inspectionDate,inspectorName,structuralIntegrityScore,surfaceConditionScore,drainageEfficiency,lightingCompliance,safetyBarrierStatus,runoffAreaStatus,grassCoveragePct,pavementAgeYears,weatherImpactNotes,nextInspectionDue,reportDocumentUrl,notes,createdAt,updatedAt,approvedBy,approvalDate,inspectionType) VALUES (1,'2025-03-10','Alice Smith',9.2,8.7,95.0,1,'Good','Clear',85.5,12,'None','2025-09-10','http://example.com/report1.pdf','Initial inspection','2025-03-10','2025-03-10','John Doe','2025-03-09','Annual');
INSERT INTO circuit_inspections (circuitId,inspectionDate,inspectorName,structuralIntegrityScore,surfaceConditionScore,drainageEfficiency,lightingCompliance,safetyBarrierStatus,runoffAreaStatus,grassCoveragePct,pavementAgeYears,weatherImpactNotes,nextInspectionDue,reportDocumentUrl,notes,createdAt,updatedAt,approvedBy,approvalDate,inspectionType) VALUES (2,'2025-04-22','Bob Lee',8.5,9.0,92.3,1,'Excellent','Minor debris',78.0,8,'Rain damage minor','2025-10-22','http://example.com/report2.pdf','Post‑rain inspection','2025-04-22','2025-04-22','Maria Garcia','2025-04-21','Post‑rain');
INSERT INTO circuit_inspections (circuitId,inspectionDate,inspectorName,structuralIntegrityScore,surfaceConditionScore,drainageEfficiency,lightingCompliance,safetyBarrierStatus,runoffAreaStatus,grassCoveragePct,pavementAgeYears,weatherImpactNotes,nextInspectionDue,reportDocumentUrl,notes,createdAt,updatedAt,approvedBy,approvalDate,inspectionType) VALUES (3,'2025-05-15','Carlos Ruiz',9.8,9.5,98.0,1,'Excellent','Clear',90.0,5,'No issues','2025-11-15','http://example.com/report3.pdf','Pre‑season check','2025-05-15','2025-05-15','Laura Chen','2025-05-14','Pre‑season');

-- Table for driver medical history records
CREATE TABLE driver_medical_history (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    examDate DATE,
    heightCm INTEGER,
    weightKg INTEGER,
    visionLeft REAL,
    visionRight REAL,
    hearingLevelLeft REAL,
    hearingLevelRight REAL,
    bloodPressureSystolic INTEGER,
    bloodPressureDiastolic INTEGER,
    cholesterolMgDl REAL,
    glucoseMgDl REAL,
    cardiacEcgCode TEXT,
    respiratoryRate INTEGER,
    bmi REAL,
    injuryHistory TEXT,
    medicationList TEXT,
    doctorName TEXT,
    followUpDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO driver_medical_history (driverId,examDate,heightCm,weightKg,visionLeft,visionRight,hearingLevelLeft,hearingLevelRight,bloodPressureSystolic,bloodPressureDiastolic,cholesterolMgDl,glucoseMgDl,cardiacEcgCode,respiratoryRate,bmi,injuryHistory,medicationList,doctorName,followUpDate,notes,createdAt,updatedAt) VALUES (1,'2025-01-20',180,78,1.0,1.0,0.9,0.9,120,80,180.5,90.2,'N','16',24.1,'None','None','Dr Smith','2025-07-20','Clear','2025-01-20','2025-01-20');
INSERT INTO driver_medical_history (driverId,examDate,heightCm,weightKg,visionLeft,visionRight,hearingLevelLeft,hearingLevelRight,bloodPressureSystolic,bloodPressureDiastolic,cholesterolMgDl,glucoseMgDl,cardiacEcgCode,respiratoryRate,bmi,injuryHistory,medicationList,doctorName,followUpDate,notes,createdAt,updatedAt) VALUES (2,'2025-02-15',175,73,0.8,0.8,0.8,0.8,118,78,170.0,85.0,'N','15',23.9,'Minor back strain','Ibuprofen','Dr Lee','2025-08-15','Recommended physiotherapy','2025-02-15','2025-02-15');
INSERT INTO driver_medical_history (driverId,examDate,heightCm,weightKg,visionLeft,visionRight,hearingLevelLeft,hearingLevelRight,bloodPressureSystolic,bloodPressureDiastolic,cholesterolMgDl,glucoseMgDl,cardiacEcgCode,respiratoryRate,bmi,injuryHistory,medicationList,doctorName,followUpDate,notes,createdAt,updatedAt) VALUES (3,'2025-03-10',182,80,1.0,0.9,0.9,0.9,122,82,190.2,95.5,'N','17',24.2,'Knee surgery 2022','None','Dr Patel','2025-09-10','Clear','2025-03-10','2025-03-10');

-- Table tracking constructor supply chain details
CREATE TABLE constructor_supply_chain (
    supplyChainId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    supplierId INTEGER,
    componentType TEXT,
    partNumber TEXT,
    contractStartDate DATE,
    contractEndDate DATE,
    unitCost REAL,
    quantity INTEGER,
    leadTimeDays INTEGER,
    qualityRating REAL,
    complianceStatus TEXT,
    riskLevel TEXT,
    lastAuditDate DATE,
    contactPerson TEXT,
    contactEmail TEXT,
    shippingMethod TEXT,
    warrantyMonths INTEGER,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO constructor_supply_chain (constructorId,supplierId,componentType,partNumber,contractStartDate,contractEndDate,unitCost,quantity,leadTimeDays,qualityRating,complianceStatus,riskLevel,lastAuditDate,contactPerson,contactEmail,shippingMethod,warrantyMonths,notes,createdAt,updatedAt) VALUES (1,101,'Engine','ENG-5001','2024-01-01','2029-12-31',25000.0,2,30,9.5,'Compliant','Low','2025-01-15','Mike Johnson','mike.johnson@example.com','Air','24','Primary engine supplier','2025-01-01','2025-01-01');
INSERT INTO constructor_supply_chain (constructorId,supplierId,componentType,partNumber,contractStartDate,contractEndDate,unitCost,quantity,leadTimeDays,qualityRating,complianceStatus,riskLevel,lastAuditDate,contactPerson,contactEmail,shippingMethod,warrantyMonths,notes,createdAt,updatedAt) VALUES (2,202,'Tyres','TYR-300','2023-06-01','2028-05-31',1500.0,12,14,9.0,'Compliant','Medium','2024-12-20','Sara Lee','sara.lee@example.com','Sea','12','Supplies slick tyres','2023-06-01','2023-06-01');
INSERT INTO constructor_supply_chain (constructorId,supplierId,componentType,partNumber,contractStartDate,contractEndDate,unitCost,quantity,leadTimeDays,qualityRating,complianceStatus,riskLevel,lastAuditDate,contactPerson,contactEmail,shippingMethod,warrantyMonths,notes,createdAt,updatedAt) VALUES (3,303,'Aerodynamics','AERO-900','2025-03-01','2030-02-28',8000.0,5,45,8.8,'Pending','High','2025-02-28','Raj Patel','raj.patel@example.com','Land','36','Wind‑tunnel tested components','2025-03-01','2025-03-01');

-- Table storing media assets related to each race
CREATE TABLE race_media_assets (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    mediaType TEXT,
    fileName TEXT,
    fileUrl TEXT,
    uploadDate DATE,
    uploaderId INTEGER,
    durationSeconds INTEGER,
    resolution TEXT,
    codec TEXT,
    fileSizeMb REAL,
    description TEXT,
    isPublic INTEGER,
    rightsHolder TEXT,
    usageLicense TEXT,
    tags TEXT,
    createdAt DATE,
    updatedAt DATE,
    viewCount INTEGER,
    downloadCount INTEGER,
    language TEXT
);

INSERT INTO race_media_assets (raceId,mediaType,fileName,fileUrl,uploadDate,uploaderId,durationSeconds,resolution,codec,fileSizeMb,description,isPublic,rightsholder,usageLicense,tags,createdAt,updatedAt,viewCount,downloadCount,language) VALUES (1,'Video','race1_highlights.mp4','http://media.example.com/race1_highlights.mp4','2025-04-01',10,300,'1920x1080','H.264',150.5,'Highlights of Race 1',1,'FormulaOne','Standard','highlights,race1', '2025-04-01','2025-04-01',1200,300,'EN');
INSERT INTO race_media_assets (raceId,mediaType,fileName,fileUrl,uploadDate,uploaderId,durationSeconds,resolution,codec,fileSizeMb,description,isPublic,rightsholder,usageLicense,tags,createdAt,updatedAt,viewCount,downloadCount,language) VALUES (2,'Image','podium2.jpg','http://media.example.com/podium2.jpg','2025-05-15',12,0,'3840x2160','JPEG',5.2,'Podium photo for Race 2',1,'FormulaOne','Standard','podium, race2', '2025-05-15','2025-05-15',800,120,'EN');
INSERT INTO race_media_assets (raceId,mediaType,fileName,fileUrl,uploadDate,uploaderId,durationSeconds,resolution,codec,fileSizeMb,description,isPublic,rightsholder,usageLicense,tags,createdAt,updatedAt,viewCount,downloadCount,language) VALUES (3,'Audio','interview_driver3.mp3','http://media.example.com/interview_driver3.mp3','2025-06-20',15,420,'','MP3',12.3,'Post‑race interview with Driver 3',0,'FormulaOne','Restricted','interview,driver3', '2025-06-20','2025-06-20',250,60,'EN');

-- Table tracking fan loyalty program transactions
CREATE TABLE fan_loyalty_transactions (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    loyaltyProgramId INTEGER,
    transactionDate DATE,
    pointsEarned INTEGER,
    pointsRedeemed INTEGER,
    transactionType TEXT,
    description TEXT,
    storeLocation TEXT,
    campaignId INTEGER,
    status TEXT,
    createdAt DATE,
    updatedAt DATE,
    receiptUrl TEXT,
    operatorId INTEGER,
    notes TEXT,
    rewardTier TEXT,
    expiryDate DATE,
    isRefunded INTEGER,
    referralCode TEXT,
    channel TEXT
);

INSERT INTO fan_loyalty_transactions (fanId,loyaltyProgramId,transactionDate,pointsEarned,pointsRedeemed,transactionType,description,storeLocation,campaignId,status,createdAt,updatedAt,receiptUrl,operatorId,notes,rewardTier,expiryDate,isRefunded,referralCode,channel) VALUES (1001,1,'2025-03-05',150,0,'Earn','Attended Grand Prix','Grandstand A',301,'Completed','2025-03-05','2025-03-05','http://example.com/receipt1001.pdf',200,'', 'Silver','2025-09-05',0,'REF123','In‑person');
INSERT INTO fan_loyalty_transactions (fanId,loyaltyProgramId,transactionDate,pointsEarned,pointsRedeemed,transactionType,description,storeLocation,campaignId,status,createdAt,updatedAt,receiptUrl,operatorId,notes,rewardTier,expiryDate,isRefunded,referralCode,channel) VALUES (1002,2,'2025-04-12',0,200,'Redeem','Merchandise voucher','Online Store',302,'Completed','2025-04-12','2025-04-12','http://example.com/receipt1002.pdf',205,'', 'Gold','2025-10-12',0,'REF456','Online');
INSERT INTO fan_loyalty_transactions (fanId,loyaltyProgramId,transactionDate,pointsEarned,pointsRedeemed,transactionType,description,storeLocation,campaignId,status,createdAt,updatedAt,receiptUrl,operatorId,notes,rewardTier,expiryDate,isRefunded,referralCode,channel) VALUES (1003,1,'2025-05-20',80,0,'Earn','Participated in fan zone game','Fan Zone',303,'Pending','2025-05-20','2025-05-20','http://example.com/receipt1003.pdf',210,'Awaiting verification','Bronze','2025-11-20',0,'REF789','In‑person');

-- Table for venue logistics staff assignments
CREATE TABLE venue_logistics_staff (
    staffId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    employeeNumber INTEGER,
    firstName TEXT,
    lastName TEXT,
    role TEXT,
    shiftStart TIME,
    shiftEnd TIME,
    contactNumber TEXT,
    email TEXT,
    certification TEXT,
    trainingDate DATE,
    supervisorId INTEGER,
    accessLevel INTEGER,
    badgeId TEXT,
    hireDate DATE,
    terminationDate DATE,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO venue_logistics_staff (venueId,employeeNumber,firstName,lastName,role,shiftStart,shiftEnd,contactNumber,email,certification,trainingDate,supervisorId,accessLevel,badgeId,hireDate,terminationDate,status,notes,createdAt,updatedAt) VALUES (1,5001,'Emma','Thomas','Cargo Coordinator','08:00','16:00','5551234567','emma.thomas@example.com','Logistics Cert','2024-11-10',8001,3,'BADG5001','2022-05-01',NULL,'Active','', '2022-05-01','2022-05-01');
INSERT INTO venue_logistics_staff (venueId,employeeNumber,firstName,lastName,role,shiftStart,shiftEnd,contactNumber,email,certification,trainingDate,supervisorId,accessLevel,badgeId,hireDate,terminationDate,status,notes,createdAt,updatedAt) VALUES (2,5002,'Liam','Nguyen','Security Officer','22:00','06:00','5559876543','liam.nguyen@example.com','Security Level 2','2023-03-15',8002,4,'BADG5002','2020-09-15',NULL,'Active','Night shift', '2020-09-15','2020-09-15');
INSERT INTO venue_logistics_staff (venueId,employeeNumber,firstName,lastName,role,shiftStart,shiftEnd,contactNumber,email,certification,trainingDate,supervisorId,accessLevel,badgeId,hireDate,terminationDate,status,notes,createdAt,updatedAt) VALUES (3,5003,'Olivia','Martinez','Catering Manager','10:00','18:00','5553210987','olivia.martinez@example.com','Food Safety','2022-06-20',8003,2,'BADG5003','2021-01-10',NULL,'Active','Oversees vendor contracts','2021-01-10','2021-01-10');

-- Table storing telemetry sensor calibration records
CREATE TABLE telemetry_sensor_calibrations (
    calibrationId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    sensorId INTEGER,
    sensorType TEXT,
    calibrationDate DATE,
    calibratedBy TEXT,
    offset REAL,
    scaleFactor REAL,
    temperatureC REAL,
    humidityPct REAL,
    voltageV REAL,
    pressurePa REAL,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    calibrationDurationSec INTEGER,
    calibrationMethod TEXT,
    referenceValue REAL,
    errorMargin REAL,
    isApproved INTEGER
);

INSERT INTO telemetry_sensor_calibrations (raceId,sensorId,sensorType,calibrationDate,calibratedBy,offset,scaleFactor,temperatureC,humidityPct,voltageV,pressurePa,status,notes,createdAt,updatedAt,calibrationDurationSec,calibrationMethod,referenceValue,errorMargin,isApproved) VALUES (1,101,'Accelerometer','2025-03-01','John Doe',0.001,1.0005,22.5,45.0,3.3,101325,'Success','Initial calibration','2025-03-01','2025-03-01',180,'Automatic',9.81,0.02,1);
INSERT INTO telemetry_sensor_calibrations (raceId,sensorId,sensorType,calibrationDate,calibratedBy,offset,scaleFactor,temperatureC,humidityPct,voltageV,pressurePa,status,notes,createdAt,updatedAt,calibrationDurationSec,calibrationMethod,referenceValue,errorMargin,isApproved) VALUES (2,102,'Gyroscope','2025-04-10','Maria Lopez',0.0005,0.9998,21.0,50.0,3.3,101300,'Success','Mid‑season check','2025-04-10','2025-04-10',240,'Manual',0.0,0.01,1);
INSERT INTO telemetry_sensor_calibrations (raceId,sensorId,sensorType,calibrationDate,calibratedBy,offset,scaleFactor,temperatureC,humidityPct,voltageV,pressurePa,status,notes,createdAt,updatedAt,calibrationDurationSec,calibrationMethod,referenceValue,errorMargin,isApproved) VALUES (3,103,'Pressure','2025-05-20','Ahmed Khan',0.0,1.0,20.5,55.0,3.3,101500,'Success','Post‑race verification','2025-05-20','2025-05-20',150,'Automatic',101325,0.05,1);

-- Table for environmental monitoring stations around circuits
CREATE TABLE environmental_monitoring_stations (
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    stationName TEXT,
    latitude REAL,
    longitude REAL,
    elevationMeters INTEGER,
    installationDate DATE,
    sensorPackage TEXT,
    pm10Level REAL,
    pm2_5Level REAL,
    no2Level REAL,
    so2Level REAL,
    coLevel REAL,
    o3Level REAL,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    windDirectionDeg INTEGER,
    dataTransmissionFreqSec INTEGER,
    maintenanceDueDate DATE,
    lastServiceDate DATE,
    status TEXT,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO environmental_monitoring_stations (circuitId,stationName,latitude,longitude,elevationMeters,installationDate,sensorPackage,pm10Level,pm2_5Level,no2Level,so2Level,coLevel,o3Level,temperatureC,humidityPct,windSpeedKph,windDirectionDeg,dataTransmissionFreqSec,maintenanceDueDate,lastServiceDate,status,notes,createdAt,updatedAt) VALUES (1,'Station A','45.123','-73.456',250,'2024-02-01','Standard','12.5','8.3','0.025','0.005','0.3','0.04','22.1','55','12','180',300,'2025-02-01','2025-01-10','Active','', '2024-02-01','2024-02-01');
INSERT INTO environmental_monitoring_stations (circuitId,stationName,latitude,longitude,elevationMeters,installationDate,sensorPackage,pm10Level,pm2_5Level,no2Level,so2Level,coLevel,o3Level,temperatureC,humidityPct,windSpeedKph,windDirectionDeg,dataTransmissionFreqSec,maintenanceDueDate,lastServiceDate,status,notes,createdAt,updatedAt) VALUES (2,'Station B','46.789','-74.321',300,'2024-06-15','Advanced','10.2','6.7','0.020','0.004','0.25','0.03','21.5','60','10','90',600,'2025-06-15','2025-06-01','Active','', '2024-06-15','2024-06-15');
INSERT INTO environmental_monitoring_stations (circuitId,stationName,latitude,longitude,elevationMeters,installationDate,sensorPackage,pm10Level,pm2_5Level,no2Level,so2Level,coLevel,o3Level,temperatureC,humidityPct,windSpeedKph,windDirectionDeg,dataTransmissionFreqSec,maintenanceDueDate,lastServiceDate,status,notes,createdAt,updatedAt) VALUES (3,'Station C','47.001','-75.200',200,'2025-01-10','Standard','13.0','9.0','0.030','0.006','0.35','0.05','23.0','50','8','270',300,'2026-01-10','2025-12-20','Pending','Pending certification','2025-01-10','2025-01-10');

-- Table for sponsor activation schedule details
CREATE TABLE sponsorship_activation_schedule (
    activationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    raceId INTEGER,
    activationType TEXT,
    startDate DATE,
    endDate DATE,
    location TEXT,
    expectedAudience INTEGER,
    budget REAL,
    actualSpend REAL,
    staffInCharge TEXT,
    equipmentList TEXT,
    complianceNotes TEXT,
    createdAt DATE,
    updatedAt DATE,
    status TEXT,
    feedbackScore REAL,
    socialMediaImpressions INTEGER,
    onSiteInteractions INTEGER,
    leadGenerated INTEGER,
    contractReference TEXT
);

INSERT INTO sponsorship_activation_schedule (sponsorId,raceId,activationType,startDate,endDate,location,expectedAudience,budget,actualSpend,staffInCharge,equipmentList,complianceNotes,createdAt,updatedAt,status,feedbackScore,socialMediaImpressions,onSiteInteractions,leadGenerated,contractReference) VALUES (101,1,'Hospitality Suite','2025-04-01','2025-04-01','Paddock Club',5000,20000,19500,'John Miller','LED Screens; Branded Furniture','All branding approved','2025-03-15','2025-03-15','Completed',4.8,150000,300,45,'CONTRACT-101-A');
INSERT INTO sponsorship_activation_schedule (sponsorId,raceId,activationType,startDate,endDate,location,expectedAudience,budget,actualSpend,staffInCharge,equipmentList,complianceNotes,createdAt,updatedAt,status,feedbackScore,socialMediaImpressions,onSiteInteractions,leadGenerated,contractReference) VALUES (202,2,'Fan Zone Activation','2025-05-10','2025-05-12','Main Grandstand',12000,30000,29800,'Emily Davis','Interactive Booths; VR Stations','Safety cleared','2025-04-20','2025-04-20','Completed',4.5,250000,500,120,'CONTRACT-202-B');
INSERT INTO sponsorship_activation_schedule (sponsorId,raceId,activationType,startDate,endDate,location,expectedAudience,budget,actualSpend,staffInCharge,equipmentList,complianceNotes,createdAt,updatedAt,status,feedbackScore,socialMediaImpressions,onSiteInteractions,leadGenerated,contractReference) VALUES (303,3,'Digital Campaign','2025-06-01','2025-06-30','Online',20000,15000,14800,'Alan Smith','Banner Ads; Sponsored Streams','Compliant with platform policies','2025-05-25','2025-05-25','Ongoing',4.7,500000,0,0,'CONTRACT-303-C');

-- Table recording Grand Prix award ceremony details
CREATE TABLE grand_prix_award_ceremonies (
    ceremonyId INTEGER PRIMARY KEY AUTOINCREMENT,
    year INTEGER,
    ceremonyDate DATE,
    venue TEXT,
    hostPerson TEXT,
    awardCategory TEXT,
    winnerName TEXT,
    winnerTeam TEXT,
    prizeMoney REAL,
    trophyDesign TEXT,
    broadcastChannel TEXT,
    durationMinutes INTEGER,
    audienceRating REAL,
    sponsorId INTEGER,
    ceremonyTheme TEXT,
    rehearsalDate DATE,
    notes TEXT,
    createdAt DATE,
    updatedAt DATE,
    isLive INTEGER,
    streamingUrl TEXT
);

INSERT INTO grand_prix_award_ceremonies (year,ceremonyDate,venue,hostPerson,awardCategory,winnerName,winnerTeam,prizeMoney,trophyDesign,broadcastChannel,durationMinutes,audienceRating,sponsorId,ceremonyTheme,rehearsalDate,notes,createdAt,updatedAt,isLive,streamingUrl) VALUES (2025,'2025-07-20','Main Hall','Sophia Brown','Driver of the Year','Liam Smith','Team Alpha',500000,'Crystal Globe','Channel 5',90,8.9,101,'Future Mobility','2025-07-10','Celebrated with fireworks','2025-07-01','2025-07-01',1,'http://stream.example.com/ceremony2025');
INSERT INTO grand_prix_award_ceremonies (year,ceremonyDate,venue,hostPerson,awardCategory,winnerName,winnerTeam,prizeMoney,trophyDesign,broadcastChannel,durationMinutes,audienceRating,sponsorId,ceremonyTheme,rehearsalDate,notes,createdAt,updatedAt,isLive,streamingUrl) VALUES (2024,'2024-07-18','Grand Arena','Michael Lee','Team Championship','Emma Johnson','Team Beta',750000,'Golden Laurel','Channel 7',120,9.2,202,'Sustainability','2024-07-08','Green carpet event','2024-07-01','2024-07-01',1,'http://stream.example.com/ceremony2024');
INSERT INTO grand_prix_award_ceremonies (year,ceremonyDate,venue,hostPerson,awardCategory,winnerName,winnerTeam,prizeMoney,trophyDesign,broadcastChannel,durationMinutes,audienceRating,sponsorId,ceremonyTheme,rehearsalDate,notes,createdAt,updatedAt,isLive,streamingUrl) VALUES (2023,'2023-07-15','Olympic Hall','Laura Chen','Rookie of the Year','Carlos Ruiz','Team Gamma',250000,'Silver Star','Channel 9',75,8.5,303,'Racing Heritage','2023-07-05','Introduced new VR segment','2023-07-01','2023-07-01',0,NULL);