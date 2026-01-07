-- Spectator Parking Records
CREATE TABLE spectator_parking_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventYear INTEGER,
    raceId INTEGER,
    spectatorId INTEGER,
    vehiclePlate TEXT,
    vehicleType TEXT,
    vehicleColor TEXT,
    permitNumber TEXT,
    issueDate DATE,
    expiryDate DATE,
    zone TEXT,
    spotNumber INTEGER,
    feeAmount REAL,
    paymentMethod TEXT,
    issuedBy TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    insuranceProvider TEXT,
    insurancePolicy TEXT,
    handicapAccessible INTEGER,
    electricCharging INTEGER,
    reserved INTEGER,
    validationStatus TEXT,
    notes TEXT
);
INSERT INTO spectator_parking_records (eventYear,raceId,spectatorId,vehiclePlate,vehicleType,vehicleColor,permitNumber,issueDate,expiryDate,zone,spotNumber,feeAmount,paymentMethod,issuedBy,contactPhone,contactEmail,insuranceProvider,insurancePolicy,handicapAccessible,electricCharging,reserved,validationStatus,notes) VALUES (2024,101,2001,'ABC123','Sedan','Red','PERM001','2024-06-01','2024-06-30','North',12,25.0,'CreditCard','Admin','5551234','user1@example.com','InsureCo','POL123',0,1,0,'Valid','First record');
INSERT INTO spectator_parking_records (eventYear,raceId,spectatorId,vehiclePlate,vehicleType,vehicleColor,permitNumber,issueDate,expiryDate,zone,spotNumber,feeAmount,paymentMethod,issuedBy,contactPhone,contactEmail,insuranceProvider,insurancePolicy,handicapAccessible,electricCharging,reserved,validationStatus,notes) VALUES (2024,102,2002,'XYZ789','SUV','Blue','PERM002','2024-06-05','2024-07-05','South',45,30.0,'Cash','Admin','5555678','user2@example.com','SafeGuard','POL456',1,0,1,'Pending','Second record');
INSERT INTO spectator_parking_records (eventYear,raceId,spectatorId,vehiclePlate,vehicleType,vehicleColor,permitNumber,issueDate,expiryDate,zone,spotNumber,feeAmount,paymentMethod,issuedBy,contactPhone,contactEmail,insuranceProvider,insurancePolicy,handicapAccessible,electricCharging,reserved,validationStatus,notes) VALUES (2024,103,2003,'LMN456','Coupe','Black','PERM003','2024-06-10','2024-07-10','East',78,20.0,'DebitCard','Admin','5559012','user3@example.com','ProtectSure','POL789',0,0,0,'Invalid','Third record');

-- Venue Acoustic Profile
CREATE TABLE venue_acoustic_profile (
    profileId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    measurementDate DATE,
    decibelLevelAvg REAL,
    decibelLevelMax REAL,
    frequencyRangeLow REAL,
    frequencyRangeHigh REAL,
    windSpeed REAL,
    humidity REAL,
    temperature REAL,
    equipmentUsed TEXT,
    analystName TEXT,
    notes TEXT,
    complianceStatus TEXT,
    soundPressureLevel REAL,
    reverberationTime REAL,
    backgroundNoiseLevel REAL,
    externalNoiseLevel REAL,
    measurementMethod TEXT,
    latitude REAL,
    longitude REAL
);
INSERT INTO venue_acoustic_profile (circuitId,measurementDate,decibelLevelAvg,decibelLevelMax,frequencyRangeLow,frequencyRangeHigh,windSpeed,humidity,temperature,equipmentUsed,analystName,notes,complianceStatus,soundPressureLevel,reverberationTime,backgroundNoiseLevel,externalNoiseLevel,measurementMethod,latitude,longitude) VALUES (1,'2024-06-01',68.5,85.0,20.0,20000.0,5.2,60.0,22.5,'MicArray','JohnDoe','Initial measurement','Compliant',85.0,1.2,55.0,70.0,'Fixed','45.4215','-75.6972');
INSERT INTO venue_acoustic_profile (circuitId,measurementDate,decibelLevelAvg,decibelLevelMax,frequencyRangeLow,frequencyRangeHigh,windSpeed,humidity,temperature,equipmentUsed,analystName,notes,complianceStatus,soundPressureLevel,reverberationTime,backgroundNoiseLevel,externalNoiseLevel,measurementMethod,latitude,longitude) VALUES (2,'2024-06-02',70.0,88.5,25.0,18000.0,4.8,58.0,21.0,'SoundMeter','JaneSmith','Follow-up','Compliant',88.5,1.1,57.0,72.0,'Portable','46.1234','-76.2345');
INSERT INTO venue_acoustic_profile (circuitId,measurementDate,decibelLevelAvg,decibelLevelMax,frequencyRangeLow,frequencyRangeHigh,windSpeed,humidity,temperature,equipmentUsed,analystName,notes,complianceStatus,soundPressureLevel,reverberationTime,backgroundNoiseLevel,externalNoiseLevel,measurementMethod,latitude,longitude) VALUES (3,'2024-06-03',66.0,82.0,22.0,19000.0,5.0,62.0,23.0,'AcousticSensor','MikeLee','Pre-race check','NonCompliant',82.0,1.3,53.0,68.0,'Fixed','47.5678','-77.3456');

-- Team Virtual Training Sessions
CREATE TABLE team_virtual_training_sessions (
    sessionId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    sessionDate DATE,
    durationMinutes INTEGER,
    platform TEXT,
    trainerName TEXT,
    trainingTopic TEXT,
    participantCount INTEGER,
    videoUrl TEXT,
    recordingAvailable INTEGER,
    feedbackScore REAL,
    sessionType TEXT,
    virtualRoomId TEXT,
    equipmentRequired TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    complianceFlag INTEGER,
    sessionVersion TEXT,
    sponsorId INTEGER
);
INSERT INTO team_virtual_training_sessions (teamId,sessionDate,durationMinutes,platform,trainerName,trainingTopic,participantCount,videoUrl,recordingAvailable,feedbackScore,sessionType,virtualRoomId,equipmentRequired,notes,createdAt,updatedAt,complianceFlag,sessionVersion,sponsorId) VALUES (10,'2024-06-05',90,'Zoom','AliceBrown','Aerodynamics','12','http://example.com/video1',1,4.5,'Live','VR001','VRHeadset','First session','2024-06-05 09:00:00','2024-06-05 10:30:00',1,'v1',200);
INSERT INTO team_virtual_training_sessions (teamId,sessionDate,durationMinutes,platform,trainerName,trainingTopic,participantCount,videoUrl,recordingAvailable,feedbackScore,sessionType,virtualRoomId,equipmentRequired,notes,createdAt,updatedAt,complianceFlag,sessionVersion,sponsorId) VALUES (11,'2024-06-06',120,'MicrosoftTeams','BobClark','DataAnalysis','15','http://example.com/video2',1,4.8,'Recorded','VR002','Laptop','Second session','2024-06-06 14:00:00','2024-06-06 16:00:00',1,'v1',201);
INSERT INTO team_virtual_training_sessions (teamId,sessionDate,durationMinutes,platform,trainerName,trainingTopic,participantCount,videoUrl,recordingAvailable,feedbackScore,sessionType,virtualRoomId,equipmentRequired,notes,createdAt,updatedAt,complianceFlag,sessionVersion,sponsorId) VALUES (12,'2024-06-07',75,'GoogleMeet','CarolDavis','Strategy','10','http://example.com/video3',0,4.2,'Live','VR003','Tablet','Third session','2024-06-07 11:00:00','2024-06-07 12:15:00',0,'v2',202);

-- Global Media Rights
CREATE TABLE global_media_rights (
    rightId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaCompany TEXT,
    region TEXT,
    language TEXT,
    startDate DATE,
    endDate DATE,
    exclusiveFlag INTEGER,
    rightsDescription TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    contractValue REAL,
    paymentTerms TEXT,
    renewalOption TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    rightsType TEXT,
    coverageScope TEXT,
    broadcastPlatform TEXT,
    digitalPlatform TEXT,
    legalReference TEXT
);
INSERT INTO global_media_rights (mediaCompany,region,language,startDate,endDate,exclusiveFlag,rightsDescription,contactPerson,contactEmail,contractValue,paymentTerms,renewalOption,notes,createdAt,updatedAt,rightsType,coverageScope,broadcastPlatform,digitalPlatform,legalReference) VALUES ('GlobalMediaCo','Europe','English','2024-01-01','2026-12-31',1,'Full broadcast rights','JohnSmith','john.smith@globalmedia.com',5000000,'Net30','Automatic','Initial contract','2024-01-01 08:00:00','2024-06-01 09:00:00','Broadcast','Territorial','TV','Streaming','LMR-2024-001');
INSERT INTO global_media_rights (mediaCompany,region,language,startDate,endDate,exclusiveFlag,rightsDescription,contactPerson,contactEmail,contractValue,paymentTerms,renewalOption,notes,createdAt,updatedAt,rightsType,coverageScope,broadcastPlatform,digitalPlatform,legalReference) VALUES ('WorldBroadcast','Asia','Mandarin','2023-05-15','2025-05-14',0,'Partial digital rights','LiWei','li.wei@worldbroadcast.cn',3000000,'Net45','Optional','Renewable clause','2023-05-15 10:00:00','2024-06-01 11:00:00','Digital','Regional','Satellite','Web','LMR-2023-042');
INSERT INTO global_media_rights (mediaCompany,region,language,startDate,endDate,exclusiveFlag,rightsDescription,contactPerson,contactEmail,contractValue,paymentTerms,renewalOption,notes,createdAt,updatedAt,rightsType,coverageScope,broadcastPlatform,digitalPlatform,legalReference) VALUES ('ContinentalSports','NorthAmerica','Spanish','2024-03-01','2027-02-28',1,'Exclusive live streaming','MariaGonzalez','maria.g@continental.com',4500000,'Net60','Automatic','Added clause for highlight reels','2024-03-01 07:30:00','2024-06-01 08:30:00','Streaming','National','Online','Mobile','LMR-2024-078');

-- Circuit Heritage Artifacts Log
CREATE TABLE circuit_heritage_artifacts_log (
    logId INTEGER PRIMARY KEY AUTOINCREMENT,
    artifactId INTEGER,
    circuitId INTEGER,
    acquisitionDate DATE,
    originCountry TEXT,
    description TEXT,
    condition TEXT,
    currentLocation TEXT,
    estimatedValue REAL,
    conservatorName TEXT,
    lastConservationDate DATE,
    material TEXT,
    dimensions TEXT,
    weight REAL,
    catalogNumber TEXT,
    insurancePolicy TEXT,
    insuranceProvider TEXT,
    donorName TEXT,
    donorContact TEXT,
    displayStatus TEXT,
    notes TEXT
);
INSERT INTO circuit_heritage_artifacts_log (artifactId,circuitId,acquisitionDate,originCountry,description,condition,currentLocation,estimatedValue,conservatorName,lastConservationDate,material,dimensions,weight,catalogNumber,insurancePolicy,insuranceProvider,donorName,donorContact,displayStatus,notes) VALUES (1001,1,'2022-04-10','Italy','Vintage steering wheel','Good','Museum Hall A',25000,'LauraBianchi','2023-01-15','CarbonFiber','30x5x5cm',2.5,'CAT-001','POL-1001','HeritageIns','AutoClubItaly','+39123456789','OnDisplay','Acquired from private collector');
INSERT INTO circuit_heritage_artifacts_log (artifactId,circuitId,acquisitionDate,originCountry,description,condition,currentLocation,estimatedValue,conservatorName,lastConservationDate,material,dimensions,weight,catalogNumber,insurancePolicy,insuranceProvider,donorName,donorContact,displayStatus,notes) VALUES (1002,2,'2021-09-22','Germany','Historic race helmet','Restored','Exhibit Room B',18000,'MarkusSchulz','2022-07-30','Fiberglass','28x28x20cm',1.8,'CAT-002','POL-1002','SecureCover','MotorHistorySoc','+493012345678','InStorage','Requires climate control');
INSERT INTO circuit_heritage_artifacts_log (artifactId,circuitId,acquisitionDate,originCountry,description,condition,currentLocation,estimatedValue,conservatorName,lastConservationDate,material,dimensions,weight,catalogNumber,insurancePolicy,insuranceProvider,donorName,donorContact,displayStatus,notes) VALUES (1003,3,'2020-12-05','France','Original race flag','Fair','Hallway C',5000,'SophieLeclerc','2021-11-20','Polyester','200x50cm',0.6,'CAT-003','POL-1003','ArtSafe','GrandPrixFans','+33123456789','OnLoan','Loan from local club');

-- Driver Economic Profiles
CREATE TABLE driver_economic_profiles (
    profileId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    fiscalYear INTEGER,
    totalEarnings REAL,
    sponsorshipEarnings REAL,
    prizeMoney REAL,
    endorsements REAL,
    investments REAL,
    taxesPaid REAL,
    netIncome REAL,
    currency TEXT,
    primaryBank TEXT,
    accountNumber TEXT,
    financialAdvisor TEXT,
    debtOutstanding REAL,
    assetsValue REAL,
    loansTaken REAL,
    insurancePremiums REAL,
    charityDonations REAL,
    notes TEXT,
    lastUpdated DATE
);
INSERT INTO driver_economic_profiles (driverId,fiscalYear,totalEarnings,sponsorshipEarnings,prizeMoney,endorsements,investments,taxesPaid,netIncome,currency,primaryBank,accountNumber,financialAdvisor,debtOutstanding,assetsValue,loansTaken,insurancePremiums,charityDonations,notes,lastUpdated) VALUES (101,2023,1200000,300000,400000,150000,200000,250000,950000,'USD','BankOfAmerica','123456789','EmmaTaylor',50000,3000000,100000,20000,50000,'Annual review','2024-01-15');
INSERT INTO driver_economic_profiles (driverId,fiscalYear,totalEarnings,sponsorshipEarnings,prizeMoney,endorsements,investments,taxesPaid,netIncome,currency,primaryBank,accountNumber,financialAdvisor,debtOutstanding,assetsValue,loansTaken,insurancePremiums,charityDonations,notes,lastUpdated) VALUES (102,2023,950000,250000,350000,120000,180000,210000,830000,'USD','Chase','987654321','LiamNguyen',40000,2500000,80000,15000,30000,'Mid‑season update','2024-01-20');
INSERT INTO driver_economic_profiles (driverId,fiscalYear,totalEarnings,sponsorshipEarnings,prizeMoney,endorsements,investments,taxesPaid,netIncome,currency,primaryBank,accountNumber,financialAdvisor,debtOutstanding,assetsValue,loansTaken,insurancePremiums,charityDonations,notes,lastUpdated) VALUES (103,2023,800000,200000,300000,100000,150000,180000,770000,'EUR','BNPParibas','1122334455','SofiaMuller',30000,2000000,60000,12000,25000,'Quarterly report','2024-01-25');

-- Sponsor Cause Participation
CREATE TABLE sponsor_cause_participation (
    participationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    causeId INTEGER,
    startDate DATE,
    endDate DATE,
    contributionAmount REAL,
    contributionType TEXT,
    volunteerHours INTEGER,
    campaignName TEXT,
    region TEXT,
    contactPerson TEXT,
    contactEmail TEXT,
    status TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    recognitionLevel TEXT,
    mediaCoverage TEXT,
    taxDeductibleFlag INTEGER,
    matchingFundsFlag INTEGER,
    partnershipTier TEXT
);
INSERT INTO sponsor_cause_participation (sponsorId,causeId,startDate,endDate,contributionAmount,contributionType,volunteerHours,campaignName,region,contactPerson,contactEmail,status,notes,createdAt,updatedAt,recognitionLevel,mediaCoverage,taxDeductibleFlag,matchingFundsFlag,partnershipTier) VALUES (201,301,'2024-03-01','2024-12-31',500000,'Cash',200,'GreenRacing','Europe','AnnaKlein','anna.klein@sponsor.com','Active','Annual green initiative','2024-03-01 09:00:00','2024-06-01 10:00:00','Gold','High','1','0','Platinum');
INSERT INTO sponsor_cause_participation (sponsorId,causeId,startDate,endDate,contributionAmount,contributionType,volunteerHours,campaignName,region,contactPerson,contactEmail,status,notes,createdAt,updatedAt,recognitionLevel,mediaCoverage,taxDeductibleFlag,matchingFundsFlag,partnershipTier) VALUES (202,302,'2024-04-15','2025-04-14',250000,'InKind',120,'SafetyFirst','NorthAmerica','BobMartin','bob.martin@sponsor.com','Planned','Road safety campaign','2024-04-15 08:30:00','2024-06-01 09:30:00','Silver','Medium','1','1','Silver');
INSERT INTO sponsor_cause_participation (sponsorId,causeId,startDate,endDate,contributionAmount,contributionType,volunteerHours,campaignName,region,contactPerson,contactEmail,status,notes,createdAt,updatedAt,recognitionLevel,mediaCoverage,taxDeductibleFlag,matchingFundsFlag,partnershipTier) VALUES (203,303,'2024-05-10','2024-11-30',100000,'Cash',80,'YouthMotorsport','Asia','ChenWei','chen.wei@sponsor.com','Active','Support for youth programs','2024-05-10 10:15:00','2024-06-01 11:15:00','Bronze','Low','0','0','Bronze');

-- Race Technology Testing Schedule
CREATE TABLE race_technology_testing_schedule (
    testId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    testDate DATE,
    technologyName TEXT,
    version TEXT,
    vendor TEXT,
    testType TEXT,
    objective TEXT,
    successCriteria TEXT,
    resultStatus TEXT,
    leadEngineer TEXT,
    durationHours REAL,
    notes TEXT,
    equipmentUsed TEXT,
    safetyApproval INTEGER,
    complianceStatus TEXT,
    testLocation TEXT,
    dataRecorded INTEGER,
    reportUrl TEXT,
    nextTestDate DATE,
    riskLevel TEXT
);
INSERT INTO race_technology_testing_schedule (raceId,testDate,technologyName,version,vendor,testType,objective,successCriteria,resultStatus,leadEngineer,durationHours,notes,equipmentUsed,safetyApproval,complianceStatus,testLocation,dataRecorded,reportUrl,nextTestDate,riskLevel) VALUES (110,'2024-06-10','HybridPowerUnit','v2.3','EcoMotors','Performance','Validate power output','>600kW','Pass','DavidHunt',5.0,'All parameters within limits','DynoBench',1,'Compliant','TestFacilityA',1,'http://example.com/report1','2024-06-20','Medium');
INSERT INTO race_technology_testing_schedule (raceId,testDate,technologyName,version,vendor,testType,objective,successCriteria,resultStatus,leadEngineer,durationHours,notes,equipmentUsed,safetyApproval,complianceStatus,testLocation,dataRecorded,reportUrl,nextTestDate,riskLevel) VALUES (111,'2024-06-12','AerodynamicWing','v1.5','AeroDynamicsInc','WindTunnel','Assess downforce','>1500N','Pass','SaraLiu',3.5,'No structural issues','WindTunnelA',1,'Compliant','WindTunnelA',1,'http://example.com/report2','2024-06-22','Low');
INSERT INTO race_technology_testing_schedule (raceId,testDate,technologyName,version,vendor,testType,objective,successCriteria,resultStatus,leadEngineer,durationHours,notes,equipmentUsed,safetyApproval,complianceStatus,testLocation,dataRecorded,reportUrl,nextTestDate,riskLevel) VALUES (112,'2024-06-14','TelemetrySystem','v4.0','DataFlow','Integration','Check data latency','<5ms','Fail','MichaelChen',2.0,'Intermittent packet loss','TelemetryRack',1,'NonCompliant','ServerRoomB',0,'http://example.com/report3','2024-06-24','High');

-- Hospitality Guest Preferences
CREATE TABLE hospitality_guest_preferences (
    prefId INTEGER PRIMARY KEY AUTOINCREMENT,
    guestId INTEGER,
    eventId INTEGER,
    cuisinePreference TEXT,
    dietaryRestrictions TEXT,
    seatPreference TEXT,
    beveragePreference TEXT,
    entertainmentPreference TEXT,
    accessibilityNeeds TEXT,
    languagePreference TEXT,
    loyaltyLevel TEXT,
    specialRequests TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    arrivalDate DATE,
    departureDate DATE,
    packageType TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    assignedConcierge TEXT
);
INSERT INTO hospitality_guest_preferences (guestId,eventId,cuisinePreference,dietaryRestrictions,seatPreference,beveragePreference,entertainmentPreference,accessibilityNeeds,languagePreference,loyaltyLevel,specialRequests,contactPhone,contactEmail,arrivalDate,departureDate,packageType,notes,createdAt,updatedAt,assignedConcierge) VALUES (5001,901,'Italian','GlutenFree','Window','RedWine','LiveMusic','Wheelchair','English','Gold','Extra pillows','5550001','guest1@example.com','2024-06-20','2024-06-23','Premium','VIP guest','2024-05-01 09:00:00','2024-05-01 09:00:00','EmmaB');
INSERT INTO hospitality_guest_preferences (guestId,eventId,cuisinePreference,dietaryRestrictions,seatPreference,beveragePreference,entertainmentPreference,accessibilityNeeds,languagePreference,loyaltyLevel,specialRequests,contactPhone,contactEmail,arrivalDate,departureDate,packageType,notes,createdAt,updatedAt,assignedConcierge) VALUES (5002,902,'Japanese','Vegan','Aisle','Sake','DJ','None','Japanese','Silver','Late checkout','5550002','guest2@example.com','2024-06-21','2024-06-24','Standard','Frequent visitor','2024-05-02 10:00:00','2024-05-02 10:00:00','LiamC');
INSERT INTO hospitality_guest_preferences (guestId,eventId,cuisinePreference,dietaryRestrictions,seatPreference,beveragePreference,entertainmentPreference,accessibilityNeeds,languagePreference,loyaltyLevel,specialRequests,contactPhone,contactEmail,arrivalDate,departureDate,packageType,notes,createdAt,updatedAt,assignedConcierge) VALUES (5003,903,'Mexican','None','Center','Beer','ComedyShow','HearingAid','Spanish','Bronze','Early breakfast','5550003','guest3@example.com','2024-06-22','2024-06-25','Basic','First time guest','2024-05-03 11:00:00','2024-05-03 11:00:00','SofiaD');

-- Environmental Compliance Inspections
CREATE TABLE environmental_compliance_inspections (
    inspectionId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    inspectionDate DATE,
    inspectorName TEXT,
    inspectorId INTEGER,
    complianceScore REAL,
    violationsFound TEXT,
    correctiveActions TEXT,
    followUpDate DATE,
    status TEXT,
    notes TEXT,
    reportUrl TEXT,
    weatherConditions TEXT,
    temperature REAL,
    humidity REAL,
    windSpeed REAL,
    equipmentUsed TEXT,
    regulatoryBody TEXT,
    inspectionType TEXT,
    nextInspectionDue DATE,
    penaltyAmount REAL
);
INSERT INTO environmental_compliance_inspections (circuitId,inspectionDate,inspectorName,inspectorId,complianceScore,violationsFound,correctiveActions,followUpDate,status,notes,reportUrl,weatherConditions,temperature,humidity,windSpeed,equipmentUsed,regulatoryBody,inspectionType,nextInspectionDue,penaltyAmount) VALUES (1,'2024-05-15','OliviaBrown',401,92.5,'None','N/A','2024-06-15','Closed','All standards met','http://example.com/inspect1','Clear',22.0,55.0,5.0,'AirSampler','EnvAgency','Annual','2025-05-15',0);
INSERT INTO environmental_compliance_inspections (circuitId,inspectionDate,inspectorName,inspectorId,complianceScore,violationsFound,correctiveActions,followUpDate,status,notes,reportUrl,weatherConditions,temperature,humidity,windSpeed,equipmentUsed,regulatoryBody,inspectionType,nextInspectionDue,penaltyAmount) VALUES (2,'2024-05-20','EthanWhite',402,78.0,'Noise exceedance','Install sound barriers','2024-07-01','Open','Noise mitigation required','http://example.com/inspect2','Windy',18.5,60.0,12.0','NoiseMeter','EnvAgency','Quarterly','2024-08-20',15000);
INSERT INTO environmental_compliance_inspections (circuitId,inspectionDate,inspectorName,inspectorId,complianceScore,violationsFound,correctiveActions,followUpDate,status,notes,reportUrl,weatherConditions,temperature,humidity,windSpeed,equipmentUsed,regulatoryBody,inspectionType,nextInspectionDue,penaltyAmount) VALUES (3,'2024-05-25','GraceLee',403,85.0,'Water runoff issues','Upgrade drainage','2024-09-10','Open','Pending drainage upgrade','http://example.com/inspect3','Rainy',16.0,70.0,8.0','WaterFlowMeter','EnvAgency','Special','2024-11-25',8000);