-- Venue energy efficiency measures
CREATE TABLE venue_energy_efficiency_measures (
    measureId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    measureName TEXT,
    implementationDate INTEGER,
    expectedSavingsKWh REAL,
    actualSavingsKWh REAL,
    cost REAL,
    vendor TEXT,
    status TEXT,
    notes TEXT,
    verificationDate INTEGER,
    auditorId INTEGER,
    energySource TEXT,
    baselineConsumption REAL,
    postImplementationConsumption REAL,
    carbonReductionKg REAL,
    rebateAmount REAL,
    maintenanceRequired TEXT,
    lastMaintenanceDate INTEGER,
    nextReviewDate INTEGER
);
INSERT INTO venue_energy_efficiency_measures (venueId,measureName,implementationDate,expectedSavingsKWh,actualSavingsKWh,cost,vendor,status,notes,verificationDate,auditorId,energySource,baselineConsumption,postImplementationConsumption,carbonReductionKg,rebateAmount,maintenanceRequired,lastMaintenanceDate,nextReviewDate) VALUES (101,'LEDLightingUpgrade',20230315,50000,48000,20000,'GreenTechCo','Completed','Initial rollout successful',20230401,12,'Electricity',250000,202000,12000,5000,'No',20230401,20240401);
INSERT INTO venue_energy_efficiency_measures (venueId,measureName,implementationDate,expectedSavingsKWh,actualSavingsKWh,cost,vendor,status,notes,verificationDate,auditorId,energySource,baselineConsumption,postImplementationConsumption,carbonReductionKg,rebateAmount,maintenanceRequired,lastMaintenanceDate,nextReviewDate) VALUES (102,'SolarPanelInstallation',20220701,120000,115000,150000,'SunPower','InProgress','Phase 1 completed',20221015,23,'Solar',500000,380000,35000,10000,'Yes',20221015,20251001);
INSERT INTO venue_energy_efficiency_measures (venueId,measureName,implementationDate,expectedSavingsKWh,actualSavingsKWh,cost,vendor,status,notes,verificationDate,auditorId,energySource,baselineConsumption,postImplementationConsumption,carbonReductionKg,rebateAmount,maintenanceRequired,lastMaintenanceDate,nextReviewDate) VALUES (103,'HVACOptimization',20210520,30000,29500,8000,'CoolAir','Completed','System tuned for efficiency',20210601,7,'Electricity',150000,120500,8000,2000,'No',20210601,20230601);

-- Driver legal cases
CREATE TABLE driver_legal_cases (
    caseId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    caseNumber TEXT,
    court TEXT,
    filingDate INTEGER,
    verdictDate INTEGER,
    outcome TEXT,
    fineAmount REAL,
    suspensionMonths INTEGER,
    description TEXT,
    lawyerId INTEGER,
    caseStatus TEXT,
    appealFiled INTEGER,
    appealOutcome TEXT,
    jurisdiction TEXT,
    caseType TEXT,
    relatedIncidentId INTEGER,
    settlementAmount REAL,
    publicStatement TEXT,
    resolutionDate INTEGER
);
INSERT INTO driver_legal_cases (driverId,caseNumber,court,filingDate,verdictDate,outcome,fineAmount,suspensionMonths,description,lawyerId,caseStatus,appealFiled,appealOutcome,jurisdiction,caseType,relatedIncidentId,settlementAmount,publicStatement,resolutionDate) VALUES (12,'2023-DR-001','SupremeCourt',20230110,20230420,'Guilty',150000,6,'Speeding violation on circuit','45','Closed',0,'','CountryA','Criminal',34,0,'Statement issued',20230420);
INSERT INTO driver_legal_cases (driverId,caseNumber,court,filingDate,verdictDate,outcome,fineAmount,suspensionMonths,description,lawyerId,caseStatus,appealFiled,appealOutcome,jurisdiction,caseType,relatedIncidentId,settlementAmount,publicStatement,resolutionDate) VALUES (27,'2022-DR-078','RegionalCourt',20220705,20221015,'NotGuilty',0,0,'Alleged breach of contract','78','Closed',0,'','CountryB','Civil',0,0,'No comment',20221015);
INSERT INTO driver_legal_cases (driverId,caseNumber,court,filingDate,verdictDate,outcome,fineAmount,suspensionMonths,description,lawyerId,caseStatus,appealFiled,appealOutcome,jurisdiction,caseType,relatedIncidentId,settlementAmount,publicStatement,resolutionDate) VALUES (5,'2021-DR-054','DistrictCourt',20210130,20210412,'Guilty',50000,3,'Unauthorized vehicle modification','12','Closed',1,'Dismissed','CountryC','Criminal',58,25000,'Apology released',20210412);

-- Circuit archival documents
CREATE TABLE circuit_archival_documents (
    docId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    docTitle TEXT,
    docType TEXT,
    author TEXT,
    creationDate INTEGER,
    archiveLocation TEXT,
    format TEXT,
    fileSizeKB INTEGER,
    confidentialityLevel TEXT,
    relatedEventId INTEGER,
    description TEXT,
    digitized INTEGER,
    digitizationDate INTEGER,
    preservationStatus TEXT,
    accessRestrictions TEXT,
    version INTEGER,
    revisionDate INTEGER,
    notes TEXT,
    externalReference TEXT
);
INSERT INTO circuit_archival_documents (circuitId,docTitle,docType,author,creationDate,archiveLocation,format,fileSizeKB,confidentialityLevel,relatedEventId,description,digitized,digitizationDate,preservationStatus,accessRestrictions,version,revisionDate,notes,externalReference) VALUES (1,'OriginalBlueprints','Engineering','JohnDoe',19900115,'ArchiveRoomA','PDF',2500,'High',0,'Initial design documents',1,20200101,'Preserved','Restricted',3,20210115,'Scanned with high resolution','REF-001');
INSERT INTO circuit_archival_documents (circuitId,docTitle,docType,author,creationDate,archiveLocation,format,fileSizeKB,confidentialityLevel,relatedEventId,description,digitized,digitizationDate,preservationStatus,accessRestrictions,version,revisionDate,notes,externalReference) VALUES (2,'MaintenanceLog1999','Log','MaintenanceTeam',19991231,'ArchiveRoomB','TXT',150,'Low',0,'Annual maintenance details',1,20000102,'Preserved','Open',1,20000102,'No issues reported','REF-045');
INSERT INTO circuit_archival_documents (circuitId,docTitle,docType,author,creationDate,archiveLocation,format,fileSizeKB,confidentialityLevel,relatedEventId,description,digitized,digitizationDate,preservationStatus,accessRestrictions,version,revisionDate,notes,externalReference) VALUES (3,'SafetyAudit2005','Audit','SafetyDept',20050620,'ArchiveRoomC','DOCX',300,'Medium',0,'Comprehensive safety audit',0,0,'Pending','Restricted',2,20060715,'Awaiting digitization','REF-089');

-- Sponsor social outreach
CREATE TABLE sponsor_social_outreach (
    outreachId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    campaignName TEXT,
    platform TEXT,
    startDate INTEGER,
    endDate INTEGER,
    targetAudience TEXT,
    impressions INTEGER,
    engagements INTEGER,
    clickThroughRate REAL,
    cost REAL,
    primaryContact TEXT,
    status TEXT,
    region TEXT,
    hashtag TEXT,
    contentType TEXT,
    creativeAgency TEXT,
    budgetAllocated REAL,
    actualSpend REAL,
    outcome TEXT,
    followUpActions TEXT
);
INSERT INTO sponsor_social_outreach (sponsorId,campaignName,platform,startDate,endDate,targetAudience,impressions,engagements,clickThroughRate,cost,primaryContact,status,region,hashtag,contentType,creativeAgency,budgetAllocated,actualSpend,outcome,followUpActions) VALUES (10,'SpeedBoost2023','Instagram',20230301,20230430,'YoungFans',500000,25000,0.05,120000,'AliceSmith','Active','EMEA','#SpeedBoost','Video','CreativeHub',130000,118000,'Positive','Plan followup event');
INSERT INTO sponsor_social_outreach (sponsorId,campaignName,platform,startDate,endDate,targetAudience,impressions,engagements,clickThroughRate,cost,primaryContact,status,region,hashtag,contentType,creativeAgency,budgetAllocated,actualSpend,outcome,followUpActions) VALUES (12,'EcoRacing','Twitter',20230115,20230228,'EcoFans',300000,15000,0.04,80000,'BobLee','Completed','APAC','#EcoRacing','Image','EcoAgency',85000,79000,'Neutral','Release data sheet');
INSERT INTO sponsor_social_outreach (sponsorId,campaignName,platform,startDate,endDate,targetAudience,impressions,engagements,clickThroughRate,cost,primaryContact,status,region,hashtag,contentType,creativeAgency,budgetAllocated,actualSpend,outcome,followUpActions) VALUES (15,'TechDrive','LinkedIn',20230601,20230731,'TechPros',200000,8000,0.03,60000,'CarolZhang','Planned','NA','TechDrive','Article','BizMedia',65000,0,'Pending','Finalize content calendar');

-- Broadcast cue points
CREATE TABLE broadcast_cue_points (
    cueId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    segmentName TEXT,
    cueTime TEXT,
    description TEXT,
    producerId INTEGER,
    editorId INTEGER,
    graphicsNeeded TEXT,
    audioTrack TEXT,
    durationSeconds INTEGER,
    priority INTEGER,
    status TEXT,
    rolloutDate INTEGER,
    channel TEXT,
    language TEXT,
    adInsert INTEGER,
    complianceFlag INTEGER,
    notes TEXT,
    version INTEGER,
    approvedBy INTEGER
);
INSERT INTO broadcast_cue_points (broadcastId,segmentName,cueTime,description,producerId,editorId,graphicsNeeded,audioTrack,durationSeconds,priority,status,rolloutDate,channel,language,adInsert,complianceFlag,notes,version,approvedBy) VALUES (200,'PreRaceIntro','00:00:30','Opening montage',5,9,'Yes','ThemeMusic',30,1,'Scheduled',20230310,'F1Channel','EN',0,1,'','1',12);
INSERT INTO broadcast_cue_points (broadcastId,segmentName,cueTime,description,producerId,editorId,graphicsNeeded,audioTrack,durationSeconds,priority,status,rolloutDate,channel,language,adInsert,complianceFlag,notes,version,approvedBy) VALUES (201,'PitStopHighlight','00:45:00','Highlight pit stops',7,11,'Yes','LiveFeed',45,2,'Pending',20230401,'F1Channel','EN',1,1,'','1',15);
INSERT INTO broadcast_cue_points (broadcastId,segmentName,cueTime,description,producerId,editorId,graphicsNeeded,audioTrack,durationSeconds,priority,status,rolloutDate,channel,language,adInsert,complianceFlag,notes,version,approvedBy) VALUES (202,'PostRaceAnalysis','01:30:00','Driver interviews and stats',8,14,'No','InterviewAudio',120,3,'Draft',20230505,'F1Channel','EN',0,1,'','1',18);

-- Team hypersonic testing
CREATE TABLE team_hypersonic_testing (
    testId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    testDate INTEGER,
    vehicleId INTEGER,
    testLocation TEXT,
    speedMph REAL,
    durationSeconds INTEGER,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedMph REAL,
    sensorPackage TEXT,
    dataFilePath TEXT,
    analystId INTEGER,
    resultSummary TEXT,
    safetyLevel TEXT,
    approvalsRequired INTEGER,
    notes TEXT,
    complianceStatus TEXT,
    equipmentUsed TEXT,
    postTestInspection INTEGER
);
INSERT INTO team_hypersonic_testing (teamId,testDate,vehicleId,testLocation,speedMph,durationSeconds,temperatureC,humidityPercent,windSpeedMph,sensorPackage,dataFilePath,analystId,resultSummary,safetyLevel,approvalsRequired,notes,complianceStatus,equipmentUsed,postTestInspection) VALUES (3,20230412,45,'WindTunnelA',820.5,12,22.5,45,5,'HighFreqSensors','/data/test1.bin',27,'Achieved target speed','High',2,'All systems nominal','Compliant','WindTunnelV1',1);
INSERT INTO team_hypersonic_testing (teamId,testDate,vehicleId,testLocation,speedMph,durationSeconds,temperatureC,humidityPercent,windSpeedMph,sensorPackage,dataFilePath,analystId,resultSummary,safetyLevel,approvalsRequired,notes,complianceStatus,equipmentUsed,postTestInspection) VALUES (4,20230520,47,'ClosedTrackB',770.0,15,20.0,50,3,'StandardSensors','/data/test2.bin',31,'Slightly below target','Medium',1,'Minor vibration observed','Compliant','TrackSensorSet',1);
INSERT INTO team_hypersonic_testing (teamId,testDate,vehicleId,testLocation,speedMph,durationSeconds,temperatureC,humidityPercent,windSpeedMph,sensorPackage,dataFilePath,analystId,resultSummary,safetyLevel,approvalsRequired,notes,complianceStatus,equipmentUsed,postTestInspection) VALUES (5,20230605,49,'AltitudeLab','880.0',10,15.0,30,2,'AdvancedTelemetry','/data/test3.bin',34,'Exceeded target speed','High',3,'Excellent performance','Compliant','AltitudeLabKit',1);

-- Fan virtual reality sessions
CREATE TABLE fan_virtual_reality_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    vrHeadsetModel TEXT,
    sessionDate INTEGER,
    durationMinutes INTEGER,
    gameTitle TEXT,
    experienceLevel TEXT,
    feedbackScore INTEGER,
    comments TEXT,
    hardwareIssues TEXT,
    softwareVersion TEXT,
    location TEXT,
    sessionHost TEXT,
    sponsorId INTEGER,
    rewardEarned TEXT,
    sessionStatus TEXT,
    vrRoomNumber INTEGER,
    maintenanceLog TEXT,
    nextSessionScheduled INTEGER,
    referralSource TEXT
);
INSERT INTO fan_virtual_reality_sessions (fanId,vrHeadsetModel,sessionDate,durationMinutes,gameTitle,experienceLevel,feedbackScore,comments,hardwareIssues,softwareVersion,location,sessionHost,sponsorId,rewardEarned,sessionStatus,vrRoomNumber,maintenanceLog,nextSessionScheduled,referralSource) VALUES (1001,'OculusQuest2',20230410,45,'F1Simulator','Intermediate',9,'Great immersion','','v2.1','ArenaA','HostMike',20,'VRBadge','Completed',5,'No issues','20230425','SocialMedia');
INSERT INTO fan_virtual_reality_sessions (fanId,vrHeadsetModel,sessionDate,durationMinutes,gameTitle,experienceLevel,feedbackScore,comments,hardwareIssues,softwareVersion,location,sessionHost,sponsorId,rewardEarned,sessionStatus,vrRoomNumber,maintenanceLog,nextSessionScheduled,referralSource) VALUES (1002,'HTCVivePro',20230412,60,'F1Simulator','Advanced',8,'Challenging but fun','Controller drift','v2.0','ArenaB','HostSara',22,'DiscountCoupon','Completed',6,'Recalibrated controllers','20230427','Email');
INSERT INTO fan_virtual_reality_sessions (fanId,vrHeadsetModel,sessionDate,durationMinutes,gameTitle,experienceLevel,feedbackScore,comments,hardwareIssues,softwareVersion,location,sessionHost,sponsorId,rewardEarned,sessionStatus,vrRoomNumber,maintenanceLog,nextSessionScheduled,referralSource) VALUES (1003,'ValveIndex',20230415,30,'F1Simulator','Beginner',10,'Excellent first experience','','v2.2','ArenaC','HostLee',25,'FreeTicket','Completed',7,'All good','20230430','Referral');

-- Race weather microclimate
CREATE TABLE race_weather_microclimate (
    microId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    sensorId INTEGER,
    timestamp TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    pressureHpa REAL,
    windSpeedKph REAL,
    windDirectionDeg INTEGER,
    precipitationMm REAL,
    solarRadiationWm2 REAL,
    groundTempC REAL,
    airQualityIndex INTEGER,
    notes TEXT,
    dataQuality TEXT,
    calibrationDate INTEGER,
    sensorStatus TEXT,
    latitude REAL,
    longitude REAL,
    elevationM INTEGER
);
INSERT INTO race_weather_microclimate (raceId,sensorId,timestamp,temperatureC,humidityPercent,pressureHpa,windSpeedKph,windDirectionDeg,precipitationMm,solarRadiationWm2,groundTempC,airQualityIndex,notes,dataQuality,calibrationDate,sensorStatus,latitude,longitude,elevationM) VALUES (101,501,'2023-04-10T10:15:00',18.5,55,1013,12,180,0.0,420,17.8,42,'Clear morning',High,20230101,Active,45.123,-93.456,300);
INSERT INTO race_weather_microclimate (raceId,sensorId,timestamp,temperatureC,humidityPercent,pressureHpa,windSpeedKph,windDirectionDeg,precipitationMm,solarRadiationWm2,groundTempC,airQualityIndex,notes,dataQuality,calibrationDate,sensorStatus,latitude,longitude,elevationM) VALUES (102,502,'2023-04-10T11:00:00',20.0,48,1012,15,190,0.0,500,19.5,38,'Sunny',High,20230101,Active,46.789,-92.123,310);
INSERT INTO race_weather_microclimate (raceId,sensorId,timestamp,temperatureC,humidityPercent,pressureHpa,windSpeedKph,windDirectionDeg,precipitationMm,solarRadiationWm2,groundTempC,airQualityIndex,notes,dataQuality,calibrationDate,sensorStatus,latitude,longitude,elevationM) VALUES (103,503,'2023-04-10T11:45:00',19.2,50,1011,10,170,0.2,450,18.0,40,'Light drizzle',Medium,20230101,Active,47.001,-91.777,315);

-- Logistics equipment maintenance
CREATE TABLE logistics_equipment_maintenance (
    maintenanceId INTEGER PRIMARY KEY AUTOINCREMENT,
    equipmentId INTEGER,
    equipmentType TEXT,
    lastServiceDate INTEGER,
    nextServiceDue INTEGER,
    serviceProvider TEXT,
    serviceCost REAL,
    technicianId INTEGER,
    serviceNotes TEXT,
    partsReplaced TEXT,
    downtimeHours INTEGER,
    warrantyStatus TEXT,
    location TEXT,
    inspectionScore INTEGER,
    complianceFlag INTEGER,
    lastCalibrationDate INTEGER,
    calibrationDueDate INTEGER,
    usageHours INTEGER,
    maintenanceStatus TEXT,
    nextInspectionDate INTEGER
);
INSERT INTO logistics_equipment_maintenance (equipmentId,equipmentType,lastServiceDate,nextServiceDue,serviceProvider,serviceCost,technicianId,serviceNotes,partsReplaced,downtimeHours,warrantyStatus,location,inspectionScore,complianceFlag,lastCalibrationDate,calibrationDueDate,usageHours,maintenanceStatus,nextInspectionDate) VALUES (3001,'TyreChanger','20230215','20230815','ToolCo','1200',45,'Routine check','HydraulicPump',2,'Valid','GarageA',95,1,'20230101','20230701',500,'Completed','20230701');
INSERT INTO logistics_equipment_maintenance (equipmentId,equipmentType,lastServiceDate,nextServiceDue,serviceProvider,serviceCost,technicianId,serviceNotes,partsReplaced,downtimeHours,warrantyStatus,location,inspectionScore,complianceFlag,lastCalibrationDate,calibrationDueDate,usageHours,maintenanceStatus,nextInspectionDate) VALUES (3002,'FuelTruck','20230110','20240110','FuelServices','2500',52,'Engine tune-up','Filters',4,'Valid','DepotB',88,1,'20221201','20231201',1200,'Completed','20231201');
INSERT INTO logistics_equipment_maintenance (equipmentId,equipmentType,lastServiceDate,nextServiceDue,serviceProvider,serviceCost,technicianId,serviceNotes,partsReplaced,downtimeHours,warrantyStatus,location,inspectionScore,complianceFlag,lastCalibrationDate,calibrationDueDate,usageHours,maintenanceStatus,nextInspectionDate) VALUES (3003,'TelemetryUnit','20230305','20240305','ElecSolutions','800',57,'Software update','Battery',1,'Valid','ControlRoom',92,1,'20230201','20240201',300,'Pending','20240201');

-- Constructor patent portfolio
CREATE TABLE constructor_patent_portfolio (
    patentId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    patentNumber TEXT,
    title TEXT,
    filingDate INTEGER,
    grantDate INTEGER,
    status TEXT,
    technologyArea TEXT,
    jurisdiction TEXT,
    inventors TEXT,
    expirationDate INTEGER,
    licensingRevenue REAL,
    royaltyRate REAL,
    licensee TEXT,
    patentAttorney TEXT,
    relatedModelId INTEGER,
    citationCount INTEGER,
    maintenanceFee REAL,
    notes TEXT,
    publicDomainDate INTEGER
);
INSERT INTO constructor_patent_portfolio (constructorId,patentNumber,title,filingDate,grantDate,status,technologyArea,jurisdiction,inventors,expirationDate,licensingRevenue,royaltyRate,licensee,patentAttorney,relatedModelId,citationCount,maintenanceFee,notes,publicDomainDate) VALUES (5,'US1234567','ActiveAerodynamics','20200115','20210420','Granted','Aerodynamics','US','JohnDoe;JaneSmith','20300415',500000,0.05,'TeamAlpha','LegalPartners',101,12,15000,'Key for rear wing','20300415');
INSERT INTO constructor_patent_portfolio (constructorId,patentNumber,title,filingDate,grantDate,status,technologyArea,jurisdiction,inventors,expirationDate,licensingRevenue,royaltyRate,licensee,patentAttorney,relatedModelId,citationCount,maintenanceFee,notes,publicDomainDate) VALUES (7,'EP7654321','HybridPowerUnit','20190201','20200630','Granted','Powertrain','EU','AliceBrown;BobWhite','20300201',750000,0.04,'TeamBeta','EuroLegal',202,20,20000,'Improves fuel efficiency','20300201');
INSERT INTO constructor_patent_portfolio (constructorId,patentNumber,title,filingDate,grantDate,status,technologyArea,jurisdiction,inventors,expirationDate,licensingRevenue,royaltyRate,licensee,patentAttorney,relatedModelId,citationCount,maintenanceFee,notes,publicDomainDate) VALUES (9,'JP9988776','CarbonFiberChassis','20180510','20191005','Granted','Materials','JP','KenYamamoto',20280510,300000,0.06,'TeamGamma','JapanLegal',303,8,12000,'Lightweight structure','20280510');