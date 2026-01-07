-- Circuit emission records per race
CREATE TABLE circuit_emission_records (
    emissionId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    raceId INTEGER,
    emissionType TEXT,
    emissionAmount REAL,
    measurementUnit TEXT,
    recordedAt DATE,
    sensorId TEXT,
    temperature REAL,
    humidity REAL,
    windSpeed REAL,
    co2Concentration REAL,
    noxConcentration REAL,
    particlesPm25 REAL,
    particlesPm10 REAL,
    comments TEXT,
    verifiedBy TEXT,
    verificationDate DATE,
    dataSource TEXT,
    latitude REAL,
    longitude REAL,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId),
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO circuit_emission_records (circuitId,raceId,emissionType,emissionAmount,measurementUnit,recordedAt,sensorId,temperature,humidity,windSpeed,co2Concentration,noxConcentration,particlesPm25,particlesPm10,comments,verifiedBy,verificationDate,dataSource,latitude,longitude) VALUES (1,1,'CO2',125.5,'kg', '2024-03-15','SEN001',22.3,55.1,5.2,400.0,30.5,12.4,20.1,'Initial measurement','John Doe','2024-03-16','SensorNetwork',45.123,-122.456);
INSERT INTO circuit_emission_records (circuitId,raceId,emissionType,emissionAmount,measurementUnit,recordedAt,sensorId,temperature,humidity,windSpeed,co2Concentration,noxConcentration,particlesPm25,particlesPm10,comments,verifiedBy,verificationDate,dataSource,latitude,longitude) VALUES (2,5,'NOX',78.9,'kg','2024-04-02','SEN014',18.7,60.3,7.1,350.2,45.0,9.8,15.6,'Post‑race audit','Anna Smith','2024-04-03','OnsiteTeam',46.789,-123.789);
INSERT INTO circuit_emission_records (circuitId,raceId,emissionType,emissionAmount,measurementUnit,recordedAt,sensorId,temperature,humidity,windSpeed,co2Concentration,noxConcentration,particlesPm25,particlesPm10,comments,verifiedBy,verificationDate,dataSource,latitude,longitude) VALUES (3,9,'PM2.5',22.4,'µg/m3','2024-05-10','SEN022',24.1,48.0,3.9,420.5,28.3,22.5,30.0,'Extreme conditions','Mike Lee','2024-05-11','ExternalAudit',44.555,-121.333);

-- Driver physical assessments
CREATE TABLE driver_physical_assessments (
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    assessmentDate DATE,
    heightCm INTEGER,
    weightKg REAL,
    bodyFatPct REAL,
    restingHeartRate INTEGER,
    vo2max REAL,
    flexibilityScore INTEGER,
    agilityScore INTEGER,
    strengthScore INTEGER,
    injuryHistory TEXT,
    nutritionStatus TEXT,
    sleepHours REAL,
    hydrationLevel REAL,
    stressLevel INTEGER,
    medicalNotes TEXT,
    assessedBy TEXT,
    followUpDate DATE,
    assessmentLocation TEXT,
    bmi REAL,
    FOREIGN KEY (driverId) REFERENCES drivers(driverId)
);
INSERT INTO driver_physical_assessments (driverId,assessmentDate,heightCm,weightKg,bodyFatPct,restingHeartRate,vo2max,flexibilityScore,agilityScore,strengthScore,injuryHistory,nutritionStatus,sleepHours,hydrationLevel,stressLevel,medicalNotes,assessedBy,followUpDate,assessmentLocation,bmi) VALUES (10,'2024-02-20',182,78.5,12.5,58,55.2,8,9,7,'None','Balanced',7.5,2.1,3,'All clear','Dr Green','2024-03-01','TeamGym',23.7);
INSERT INTO driver_physical_assessments (driverId,assessmentDate,heightCm,weightKg,bodyFatPct,restingHeartRate,vo2max,flexibilityScore,agilityScore,strengthScore,injuryHistory,nutritionStatus,sleepHours,hydrationLevel,stressLevel,medicalNotes,assessedBy,followUpDate,assessmentLocation,bmi) VALUES (22,'2024-04-12',175,70.0,14.0,62,48.1,7,8,6,'Minor ankle sprain','High protein',7.0,1.9,4,'Requires rehab','Physio Team','2024-04-20','MedicalCenter',22.9);
INSERT INTO driver_physical_assessments (driverId,assessmentDate,heightCm,weightKg,bodyFatPct,restingHeartRate,vo2max,flexibilityScore,agilityScore,strengthScore,injuryHistory,nutritionStatus,sleepHours,hydrationLevel,stressLevel,medicalNotes,assessedBy,followUpDate,assessmentLocation,bmi) VALUES (35,'2024-05-05',180,82.3,13.2,60,52.5,9,9,8,'None','Carb loading',8.0,2.2,2,'Fit for race','Dr Patel','2024-05-15','TeamGym',25.4);

-- Sponsor activation calendar
CREATE TABLE sponsor_activation_calendar (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    eventId INTEGER,
    eventName TEXT,
    activationStart DATETIME,
    activationEnd DATETIME,
    location TEXT,
    targetAudience TEXT,
    expectedReach INTEGER,
    actualReach INTEGER,
    activationType TEXT,
    budget REAL,
    spent REAL,
    coordinator TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    approvalStatus TEXT,
    contractReference TEXT,
    measurementMethod TEXT
);
INSERT INTO sponsor_activation_calendar (sponsorId,eventId,eventName,activationStart,activationEnd,location,targetAudience,expectedReach,actualReach,activationType,budget,spent,coordinator,status,notes,createdAt,updatedAt,approvalStatus,contractReference,measurementMethod) VALUES (3,101,'Grand Prix Opening','2024-06-01 08:00','2024-06-01 10:00','Circuit Plaza','Fans','50000','48700','Banner','20000','19500','Laura Hill','Confirmed','Printed banners displayed','2024-04-15 09:30','2024-04-20 11:00','Approved','CON12345','Footfall');
INSERT INTO sponsor_activation_calendar (sponsorId,eventId,eventName,activationStart,activationEnd,location,targetAudience,expectedReach,actualReach,activationType,budget,spent,coordinator,status,notes,createdAt,updatedAt,approvalStatus,contractReference,measurementMethod) VALUES (7,102,'Pit Lane Demo','2024-07-15 13:30','2024-07-15 14:30','Pit Lane','Paddock','12000','11950','Demo','10000','9500','Mark Tan','Pending','Equipment delivery scheduled','2024-05-10 10:15','2024-05-12 14:20','Pending','CON67890','InteractionCount');
INSERT INTO sponsor_activation_calendar (sponsorId,eventId,eventName,activationStart,activationEnd,location,targetAudience,expectedReach,actualReach,activationType,budget,spent,coordinator,status,notes,createdAt,updatedAt,approvalStatus,contractReference,measurementMethod) VALUES (12,103,'Virtual Fan Zone','2024-08-20 09:00','2024-08-20 18:00','Online','Global Fans','200000','198500','Virtual','50000','48000','Sophie Lee','Confirmed','High engagement on socials','2024-06-01 08:45','2024-06-05 16:30','Approved','CON54321','DigitalAnalytics');

-- Race broadcast credentials
CREATE TABLE race_broadcast_credentials (
    credentialId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    broadcasterId INTEGER,
    credentialType TEXT,
    issueDate DATE,
    expiryDate DATE,
    accessLevel TEXT,
    ipAddress TEXT,
    username TEXT,
    passwordHash TEXT,
    rsaKey TEXT,
    notes TEXT,
    issuedBy TEXT,
    status TEXT,
    revocationDate DATE,
    revocationReason TEXT,
    lastUsed DATETIME,
    usageCount INTEGER,
    complianceFlag INTEGER,
    auditTrail TEXT,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO race_broadcast_credentials (raceId,broadcasterId,credentialType,issueDate,expiryDate,accessLevel,ipAddress,username,passwordHash,rsaKey,notes,issuedBy,status,revocationDate,revocationReason,lastUsed,usageCount,complianceFlag,auditTrail) VALUES (4,201,'Streaming','2024-03-01','2025-03-01','Full','192.168.10.5','userA','hashA','rsaKeyA','Initial issue','Admin','Active',NULL,NULL,'2024-03-15 12:00',15,1,'LogA');
INSERT INTO race_broadcast_credentials (raceId,broadcasterId,credentialType,issueDate,expiryDate,accessLevel,ipAddress,username,passwordHash,rsaKey,notes,issuedBy,status,revocationDate,revocationReason,lastUsed,usageCount,complianceFlag,auditTrail) VALUES (7,202,'FTP','2024-04-10','2024-10-10','Limited','192.168.20.8','userB','hashB','rsaKeyB','FTP access for media','Admin','Active',NULL,NULL,'2024-04-12 09:30',8,1,'LogB');
INSERT INTO race_broadcast_credentials (raceId,broadcasterId,credentialType,issueDate,expiryDate,accessLevel,ipAddress,username,passwordHash,rsaKey,notes,issuedBy,status,revocationDate,revocationReason,lastUsed,usageCount,complianceFlag,auditTrail) VALUES (12,203,'Satellite','2024-05-20','2024-11-20','Full','192.168.30.12','userC','hashC','rsaKeyC','Satellite uplink credentials','Admin','Revoked','2024-08-01','Policy change','2024-07-30 16:45',20,0,'LogC');

-- Hospitality quality audits
CREATE TABLE hospitality_quality_audits (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    auditDate DATE,
    auditorName TEXT,
    cleanlinessScore INTEGER,
    serviceScore INTEGER,
    foodQualityScore INTEGER,
    amenitiesScore INTEGER,
    overallScore INTEGER,
    violations TEXT,
    correctiveActions TEXT,
    followUpDate DATE,
    notes TEXT,
    ratingScale TEXT,
    auditType TEXT,
    department TEXT,
    timeSpentHours REAL,
    sampledAreas INTEGER,
    compliancePercentage REAL,
    signature TEXT
);
INSERT INTO hospitality_quality_audits (venueId,auditDate,auditorName,cleanlinessScore,serviceScore,foodQualityScore,amenitiesScore,overallScore,violations,correctiveActions,followUpDate,notes,ratingScale,auditType,department,timeSpentHours,sampledAreas,compliancePercentage,signature) VALUES (1,'2024-03-05','Emily Clark',9,8,9,7,8,'None','N/A','2024-03-20','Excellent overall','10-point','Routine','VIP Lounge',2.5,5,96.5,'EClark');
INSERT INTO hospitality_quality_audits (venueId,auditDate,auditorName,cleanlinessScore,serviceScore,foodQualityScore,amenitiesScore,overallScore,violations,correctiveActions,followUpDate,notes,ratingScale,auditType,department,timeSpentHours,sampledAreas,compliancePercentage,signature) VALUES (2,'2024-04-12','James Patel',7,6,7,6,6,'Minor food temperature issue','Reheat items','2024-04-25','Improvement needed','10-point','Spot','Catering',1.8,3,88.0,'JPatel');
INSERT INTO hospitality_quality_audits (venueId,auditDate,auditorName,cleanlinessScore,serviceScore,foodQualityScore,amenitiesScore,overallScore,violations,correctiveActions,followUpDate,notes,ratingScale,auditType,department,timeSpentHours,sampledAreas,compliancePercentage,signature) VALUES (3,'2024-05-18','Sofia Gomez',8,9,8,8,8,'None','N/A','2024-06-01','Consistently high standards','10-point','Annual','Hospitality',3.0,6,94.2,'SGomez');

-- Vendor insurance claims
CREATE TABLE vendor_insurance_claims (
    claimId INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId INTEGER,
    policyNumber TEXT,
    claimNumber TEXT,
    incidentDate DATE,
    claimDate DATE,
    claimAmount REAL,
    approvedAmount REAL,
    status TEXT,
    adjusterName TEXT,
    adjusterContact TEXT,
    description TEXT,
    supportingDocs TEXT,
    settlementDate DATE,
    settlementMethod TEXT,
    deductible REAL,
    claimType TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    auditFlag INTEGER
);
INSERT INTO vendor_insurance_claims (vendorId,policyNumber,claimNumber,incidentDate,claimDate,claimAmount,approvedAmount,status,adjusterName,adjusterContact,description,supportingDocs,settlementDate,settlementMethod,deductible,claimType,notes,createdAt,updatedAt,auditFlag) VALUES (45,'POL12345','CLM001','2024-02-15','2024-02-20',15000.00,14000.00,'Approved','Laura Kim','5551234567','Damage to equipment during transport','photos.pdf','2024-03-01','BankTransfer',500.00,'Property','Handled promptly','2024-02-21 10:00','2024-03-02 15:30',0);
INSERT INTO vendor_insurance_claims (vendorId,policyNumber,claimNumber,incidentDate,claimDate,claimAmount,approvedAmount,status,adjusterName,adjusterContact,description,supportingDocs,settlementDate,settlementMethod,deductible,claimType,notes,createdAt,updatedAt,auditFlag) VALUES (52,'POL67890','CLM002','2024-04-05','2024-04-07',8000.00,8000.00,'Pending','Mark Reed','5559876543','Liability claim for on‑site injury','report.docx',NULL,NULL,0.00,'Liability','Awaiting investigation','2024-04-08 09:15','2024-04-08 09:15',0);
INSERT INTO vendor_insurance_claims (vendorId,policyNumber,claimNumber,incidentDate,claimDate,claimAmount,approvedAmount,status,adjusterName,adjusterContact,description,supportingDocs,settlementDate,settlementMethod,deductible,claimType,notes,createdAt,updatedAt,auditFlag) VALUES (63,'POL24680','CLM003','2024-05-22','2024-05-23',5000.00,4800.00,'Approved','Nina Zhou','5556543210','Theft of tools from storage','evidence.zip','2024-06-01','Check','200.00','Theft','Closed after payment','2024-05-24 11:45','2024-06-02 14:20',1);

-- Environmental noise mitigation projects
CREATE TABLE environmental_noise_mitigation_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    projectName TEXT,
    startDate DATE,
    endDate DATE,
    mitigationTechnique TEXT,
    decibelReductionTarget REAL,
    actualReduction REAL,
    budget REAL,
    spent REAL,
    contractor TEXT,
    status TEXT,
    milestones TEXT,
    monitoringFrequency TEXT,
    complianceStatus TEXT,
    notes TEXT,
    createdBy TEXT,
    createdAt DATETIME,
    updatedBy TEXT,
    updatedAt DATETIME,
    regulatoryApproval TEXT,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO environmental_noise_mitigation_projects (circuitId,projectName,startDate,endDate,mitigationTechnique,decibelReductionTarget,actualReduction,budget,spent,contractor,status,milestones,monitoringFrequency,complianceStatus,notes,createdBy,createdAt,updatedBy,updatedAt,regulatoryApproval) VALUES (1,'North Barrier Upgrade','2024-01-15','2024-04-30','Acoustic barriers',8.5,9.1,120000.00,115000.00,'SoundTech Ltd','Completed','Design|Installation','Monthly','Compliant','Exceeds target','John Admin','2024-01-10 08:00','John Admin','2024-05-02 16:45','Approved');
INSERT INTO environmental_noise_mitigation_projects (circuitId,projectName,startDate,endDate,mitigationTechnique,decibelReductionTarget,actualReduction,budget,spent,contractor,status,milestones,monitoringFrequency,complianceStatus,notes,createdBy,createdAt,updatedBy,updatedAt,regulatoryApproval) VALUES (3,'West Edge Vegetation','2024-03-01','2024-08-15','Tree planting',5.0,4.7,75000.00,50000.00,'GreenGrowth Inc','In Progress','SitePrep|Planting','Quarterly','Pending','Awaiting final report','Emily Ops','2024-02-28 09:30','Emily Ops','2024-07-20 14:10','Pending');
INSERT INTO environmental_noise_mitigation_projects (circuitId,projectName,startDate,endDate,mitigationTechnique,decibelReductionTarget,actualReduction,budget,spent,contractor,status,milestones,monitoringFrequency,complianceStatus,notes,createdBy,createdAt,updatedBy,updatedAt,regulatoryApproval) VALUES (5,'South Grandstand Insulation','2024-05-10','2024-09-30','Acoustic foam','6.0',5.8,98000.00,97000.00,'AcoustiCo','In Progress','Procurement|Installation','Bi‑weekly','Compliant','On schedule','Mike Project','2024-05-01 07:45','Mike Project','2024-09-05 12:20','Approved');

-- Telemetry anomaly summary
CREATE TABLE telemetry_anomaly_summary (
    summaryId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    sensorId TEXT,
    anomalyCount INTEGER,
    firstDetected DATETIME,
    lastDetected DATETIME,
    severityLevel TEXT,
    avgDurationSeconds REAL,
    maxDurationSeconds REAL,
    affectedLaps TEXT,
    rootCause TEXT,
    correctiveAction TEXT,
    analyst TEXT,
    notes TEXT,
    reviewed INTEGER,
    reviewDate DATE,
    exportFlag INTEGER,
    dataVersion TEXT,
    archiveLocation TEXT,
    generatedAt DATETIME,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO telemetry_anomaly_summary (raceId,sensorId,anomalyCount,firstDetected,lastDetected,severityLevel,avgDurationSeconds,maxDurationSeconds,affectedLaps,rootCause,correctiveAction,analyst,notes,reviewed,reviewDate,exportFlag,dataVersion,archiveLocation,generatedAt) VALUES (2,'TMP001',3,'2024-03-12 10:15','2024-03-12 10:45','Medium',12.5,28.0,'12-13','Sensor drift','Recalibration','Alex Reed','Minor spikes observed',1,'2024-03-13',0,'v1.0','/archive/2024/03/', '2024-03-13 08:00');
INSERT INTO telemetry_anomaly_summary (raceId,sensorId,anomalyCount,firstDetected,lastDetected,severityLevel,avgDurationSeconds,maxDurationSeconds,affectedLaps,rootCause,correctiveAction,analyst,notes,reviewed,reviewDate,exportFlag,dataVersion,archiveLocation,generatedAt) VALUES (6,'SPD005',5,'2024-04-20 14:05','2024-04-20 15:20','High',22.1,45.3,'22-24','Signal loss','Replace cable','Maria Liu','Repeated drops',0,NULL,0,'v1.1','/archive/2024/04/', '2024-04-21 09:30');
INSERT INTO telemetry_anomaly_summary (raceId,sensorId,anomalyCount,firstDetected,lastDetected,severityLevel,avgDurationSeconds,maxDurationSeconds,affectedLaps,rootCause,correctiveAction,analyst,notes,reviewed,reviewDate,exportFlag,dataVersion,archiveLocation,generatedAt) VALUES (9,'GEO012',2,'2024-05-08 11:00','2024-05-08 11:30','Low',15.0,15.0,'8','Calibration offset','Software patch','John Kim','One off event',1,'2024-05-09',1,'v1.2','/archive/2024/05/', '2024-05-09 07:45');

-- Fan experience touchpoints
CREATE TABLE fan_experience_touchpoints (
    touchpointId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    fanId INTEGER,
    touchpointType TEXT,
    timestamp DATETIME,
    location TEXT,
    deviceId TEXT,
    interactionDetail TEXT,
    durationSeconds INTEGER,
    outcome TEXT,
    satisfactionScore INTEGER,
    feedback TEXT,
    channel TEXT,
    campaignId INTEGER,
    sponsorId INTEGER,
    appVersion TEXT,
    osVersion TEXT,
    networkType TEXT,
    geoLatitude REAL,
    geoLongitude REAL,
    FOREIGN KEY (raceId) REFERENCES races(raceId)
);
INSERT INTO fan_experience_touchpoints (raceId,fanId,touchpointType,timestamp,location,deviceId,interactionDetail,durationSeconds,outcome,satisfactionScore,feedback,channel,campaignId,sponsorId,appVersion,osVersion,networkType,geoLatitude,geoLongitude) VALUES (3,1001,'QR Scan','2024-03-18 15:20','Grandstand A','DEV001','Scanned QR for merch discount',30,'Success',9,'Great offer','MobileApp',201,5,'1.4.2','iOS14','WiFi',45.123,-122.456);
INSERT INTO fan_experience_touchpoints (raceId,fanId,touchpointType,timestamp,location,deviceId,interactionDetail,durationSeconds,outcome,satisfactionScore,feedback,channel,campaignId,sponsorId,appVersion,osVersion,networkType,geoLatitude,geoLongitude) VALUES (5,1023,'AR Experience','2024-04-22 13:45','Pit Lane','DEV045','Viewed AR car model',45,'Success',8,'Immersive','MobileApp',202,7,'2.0.0','Android11','4G',46.789,-123.789);
INSERT INTO fan_experience_touchpoints (raceId,fanId,touchpointType,timestamp,location,deviceId,interactionDetail,durationSeconds,outcome,satisfactionScore,feedback,channel,campaignId,sponsorId,appVersion,osVersion,networkType,geoLatitude,geoLongitude) VALUES (8,1105,'Survey','2024-05-30 18:10','Hospitality Suite','DEV099','Post‑race satisfaction survey',120,'Completed',10,'Excellent service','Email',203,9,'3.1.1','iOS15','LTE',44.555,-121.333);

-- Track surface maintenance schedule
CREATE TABLE track_surface_maintenance_schedule (
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    maintenanceDate DATE,
    maintenanceType TEXT,
    crewLead TEXT,
    crewSize INTEGER,
    equipmentUsed TEXT,
    materialType TEXT,
    materialQuantity REAL,
    temperatureC REAL,
    humidityPercent REAL,
    surfaceConditionBefore TEXT,
    surfaceConditionAfter TEXT,
    notes TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    status TEXT,
    estimatedDurationHours REAL,
    actualDurationHours REAL,
    costEstimate REAL,
    actualCost REAL,
    FOREIGN KEY (circuitId) REFERENCES circuits(circuitId)
);
INSERT INTO track_surface_maintenance_schedule (circuitId,maintenanceDate,maintenanceType,crewLead,crewSize,equipmentUsed,materialType,materialQuantity,temperatureC,humidityPercent,surfaceConditionBefore,surfaceConditionAfter,notes,approvedBy,approvalDate,status,estimatedDurationHours,actualDurationHours,costEstimate,actualCost) VALUES (2,'2024-02-10','Resurfacing','Carlos Mendes',12,'Paver, Roller','Asphalt',1500.0,5.0,70,'Cracked','Smooth','Full resurfacing of Turn 3','Linda Grant','2024-01-25','Completed',48.0,50.5,250000.00,255000.00);
INSERT INTO track_surface_maintenance_schedule (circuitId,maintenanceDate,maintenanceType,crewLead,crewSize,equipmentUsed,materialType,materialQuantity,temperatureC,humidityPercent,surfaceConditionBefore,surfaceConditionAfter,notes,approvedBy,approvalDate,status,estimatedDurationHours,actualDurationHours,costEstimate,actualCost) VALUES (4,'2024-04-18','Grooving','Ana Silva',8,'Groover Machine','Concrete',300.0,12.0,55,'Worn grooves','New grooves','Improves tire grip','Mark Daniels','2024-04-01','In Progress',16.0,10.0,50000.00,35000.00);
INSERT INTO track_surface_maintenance_schedule (circuitId,maintenanceDate,maintenanceType,crewLead,crewSize,equipmentUsed,materialType,materialQuantity,temperatureC,humidityPercent,surfaceConditionBefore,surfaceConditionAfter,notes,approvedBy,approvalDate,status,estimatedDurationHours,actualDurationHours,costEstimate,actualCost) VALUES (6,'2024-06-05','Cleaning','Sophie Nguyen',5,'Pressure Washer','Water',0.0,20.0,40,'Dusty','Clean','Routine surface cleaning before season','Tom Baker','2024-05-20','Scheduled',4.0,NULL,8000.00,NULL);