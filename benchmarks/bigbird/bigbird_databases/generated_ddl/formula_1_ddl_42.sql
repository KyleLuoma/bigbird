-- Track weather stations associated with circuits
CREATE TABLE track_weather_stations (
    stationId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    stationName TEXT,
    latitude REAL,
    longitude REAL,
    elevation INTEGER,
    installationDate DATE,
    sensorCount INTEGER,
    primarySensorType TEXT,
    dataTransmissionMethod TEXT,
    maintenanceIntervalDays INTEGER,
    lastMaintenanceDate DATE,
    operationalStatus TEXT,
    firmwareVersion TEXT,
    batteryCapacity REAL,
    solarPanelAvailable INTEGER,
    windSpeedSensor INTEGER,
    temperatureSensor INTEGER,
    humiditySensor INTEGER,
    pressureSensor INTEGER,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO track_weather_stations (circuitId, stationName, latitude, longitude, elevation, installationDate, sensorCount, primarySensorType, dataTransmissionMethod, maintenanceIntervalDays, lastMaintenanceDate, operationalStatus, firmwareVersion, batteryCapacity, solarPanelAvailable, windSpeedSensor, temperatureSensor, humiditySensor, pressureSensor, createdAt, updatedAt) VALUES (1, 'StationA', 34.5, -119.7, 250, '2022-03-15', 5, 'Temperature', 'Wireless', 180, '2023-02-01', 'Active', 'v1.2', 12.5, 1, 1, 1, 1, 1, '2023-01-01', '2023-01-01');
INSERT INTO track_weather_stations (circuitId, stationName, latitude, longitude, elevation, installationDate, sensorCount, primarySensorType, dataTransmissionMethod, maintenanceIntervalDays, lastMaintenanceDate, operationalStatus, firmwareVersion, batteryCapacity, solarPanelAvailable, windSpeedSensor, temperatureSensor, humiditySensor, pressureSensor, createdAt, updatedAt) VALUES (2, 'StationB', 36.0, -115.2, 310, '2021-07-10', 6, 'Pressure', 'Fiber', 365, '2023-03-10', 'Maintenance', 'v2.0', 15.0, 0, 1, 1, 1, 1, '2023-01-02', '2023-01-02');
INSERT INTO track_weather_stations (circuitId, stationName, latitude, longitude, elevation, installationDate, sensorCount, primarySensorType, dataTransmissionMethod, maintenanceIntervalDays, lastMaintenanceDate, operationalStatus, firmwareVersion, batteryCapacity, solarPanelAvailable, windSpeedSensor, temperatureSensor, humiditySensor, pressureSensor, createdAt, updatedAt) VALUES (3, 'StationC', 33.9, -118.4, 200, '2020-11-05', 4, 'Wind', 'Satellite', 90, '2023-01-20', 'Active', 'v1.8', 10.0, 1, 1, 0, 0, 0, '2023-01-03', '2023-01-03');

-- Venue parking permits
CREATE TABLE venue_parking_permits (
    permitId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    permitNumber TEXT,
    holderName TEXT,
    vehicleLicensePlate TEXT,
    vehicleType TEXT,
    issueDate DATE,
    expiryDate DATE,
    parkingZone TEXT,
    spotNumber INTEGER,
    issuedBy TEXT,
    paymentStatus TEXT,
    paymentMethod TEXT,
    amountPaid REAL,
    specialPermissions TEXT,
    isReserved INTEGER,
    maxStayHours INTEGER,
    notes TEXT,
    validationCode TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO venue_parking_permits (venueId, permitNumber, holderName, vehicleLicensePlate, vehicleType, issueDate, expiryDate, parkingZone, spotNumber, issuedBy, paymentStatus, paymentMethod, amountPaid, specialPermissions, isReserved, maxStayHours, notes, validationCode, createdAt, updatedAt) VALUES (1, 'PERM001', 'JohnDoe', 'ABC123', 'Sedan', '2023-01-10', '2023-12-31', 'ZoneA', 45, 'AdminOffice', 'Paid', 'CreditCard', 150.00, 'None', 1, 8, 'First permit', 'VAL123', '2023-01-10', '2023-01-10');
INSERT INTO venue_parking_permits (venueId, permitNumber, holderName, vehicleLicensePlate, vehicleType, issueDate, expiryDate, parkingZone, spotNumber, issuedBy, paymentStatus, paymentMethod, amountPaid, specialPermissions, isReserved, maxStayHours, notes, validationCode, createdAt, updatedAt) VALUES (2, 'PERM002', 'JaneSmith', 'XYZ789', 'SUV', '2023-02-01', '2023-08-01', 'ZoneB', 12, 'AdminOffice', 'Pending', 'Invoice', 200.00, 'Handicap', 0, 4, 'VIP guest', 'VAL456', '2023-02-01', '2023-02-01');
INSERT INTO venue_parking_permits (venueId, permitNumber, holderName, vehicleLicensePlate, vehicleType, issueDate, expiryDate, parkingZone, spotNumber, issuedBy, paymentStatus, paymentMethod, amountPaid, specialPermissions, isReserved, maxStayHours, notes, validationCode, createdAt, updatedAt) VALUES (3, 'PERM003', 'MikeBrown', 'LMN456', 'Motorcycle', '2023-03-05', '2023-09-05', 'ZoneC', 7, 'AdminOffice', 'Paid', 'Cash', 50.00, 'None', 0, 2, 'Season ticket holder', 'VAL789', '2023-03-05', '2023-03-05');

-- Engine test results for constructors
CREATE TABLE engine_test_results (
    testId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    engineSerial TEXT,
    testDate DATE,
    testLocation TEXT,
    horsepower REAL,
    torque REAL,
    rpmLimit INTEGER,
    fuelConsumption REAL,
    emissionsLevel REAL,
    coolingEfficiency REAL,
    durabilityHours INTEGER,
    noiseLevel REAL,
    vibrationLevel REAL,
    passed INTEGER,
    testerName TEXT,
    notes TEXT,
    testProtocolVersion TEXT,
    validationStatus TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO engine_test_results (constructorId, engineSerial, testDate, testLocation, horsepower, torque, rpmLimit, fuelConsumption, emissionsLevel, coolingEfficiency, durabilityHours, noiseLevel, vibrationLevel, passed, testerName, notes, testProtocolVersion, validationStatus, createdAt, updatedAt) VALUES (1, 'ENG001', '2023-01-15', 'TestFacilityA', 950.5, 800.0, 15000, 3.2, 0.45, 92.5, 500, 68.0, 0.02, 1, 'AliceLee', 'All metrics within spec', 'v1.0', 'Validated', '2023-01-15', '2023-01-15');
INSERT INTO engine_test_results (constructorId, engineSerial, testDate, testLocation, horsepower, torque, rpmLimit, fuelConsumption, emissionsLevel, cooling_efficiency, durabilityHours, noiseLevel, vibrationLevel, passed, testerName, notes, testProtocolVersion, validationStatus, createdAt, updatedAt) VALUES (2, 'ENG002', '2023-02-20', 'TestFacilityB', 880.0, 750.0, 14800, 3.5, 0.48, 90.0, 480, 70.5, 0.025, 1, 'BobKim', 'Slightly higher emissions', 'v1.1', 'Validated', '2023-02-20', '2023-02-20');
INSERT INTO engine_test_results (constructorId, engineSerial, testDate, testLocation, horsepower, torque, rpmLimit, fuelConsumption, emissionsLevel, coolingEfficiency, durabilityHours, noiseLevel, vibrationLevel, passed, testerName, notes, testProtocolVersion, validationStatus, createdAt, updatedAt) VALUES (3, 'ENG003', '2023-03-10', 'TestFacilityC', 1020.0, 820.0, 15200, 3.0, 0.42, 94.0, 520, 66.0, 0.018, 1, 'CarolNg', 'Excellent performance', 'v1.2', 'Validated', '2023-03-10', '2023-03-10');

-- Broadcast advertising inventory
CREATE TABLE broadcast_advertising_inventory (
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    broadcastId INTEGER,
    adSlotId TEXT,
    slotStartTime TEXT,
    slotEndTime TEXT,
    adDurationSeconds INTEGER,
    advertiserName TEXT,
    productCategory TEXT,
    price REAL,
    contractId INTEGER,
    creativeFilePath TEXT,
    impressionsTarget INTEGER,
    audienceDemographic TEXT,
    region TEXT,
    language TEXT,
    isPremium INTEGER,
    notes TEXT,
    status TEXT,
    createdAt DATE,
    updatedAt DATE
);

INSERT INTO broadcast_advertising_inventory (broadcastId, adSlotId, slotStartTime, slotEndTime, adDurationSeconds, advertiserName, productCategory, price, contractId, creativeFilePath, impressionsTarget, audienceDemographic, region, language, isPremium, notes, status, createdAt, updatedAt) VALUES (1, 'SLOT001', '00:15:00', '00:15:30', 30, 'BrandA', 'Automotive', 25000.00, 101, '/creatives/brandA_ad.mp4', 1000000, 'Adults25-45', 'Europe', 'EN', 1, 'Prime time slot', 'Booked', '2023-01-01', '2023-01-01');
INSERT INTO broadcast_advertising_inventory (broadcastId, adSlotId, slotStartTime, slotEndTime, adDurationSeconds, advertiserName, productCategory, price, contractId, creativeFilePath, impressionsTarget, audienceDemographic, region, language, isPremium, notes, status, createdAt, updatedAt) VALUES (2, 'SLOT002', '01:00:00', '01:00:20', 20, 'BrandB', 'Beverage', 15000.00, 102, '/creatives/brandB_ad.mp4', 800000, 'YoungAdults18-30', 'NorthAmerica', 'EN', 0, 'Midday slot', 'Pending', '2023-01-02', '2023-01-02');
INSERT INTO broadcast_advertising_inventory (broadcastId, adSlotId, slotStartTime, slotEndTime, adDurationSeconds, advertiserName, productCategory, price, contractId, creativeFilePath, impressionsTarget, audienceDemographic, region, language, isPremium, notes, status, createdAt, updatedAt) VALUES (3, 'SLOT003', '02:30:00', '02:30:45', 45, 'BrandC', 'Tech', 40000.00, 103, '/creatives/brandC_ad.mp4', 1500000, 'Adults30-55', 'Asia', 'EN', 1, 'Evening slot', 'Booked', '2023-01-03', '2023-01-03');

-- Media partner contracts
CREATE TABLE media_partner_contracts (
    contractId INTEGER PRIMARY KEY AUTOINCREMENT,
    partnerName TEXT,
    startDate DATE,
    endDate DATE,
    contractValue REAL,
    mediaRights TEXT,
    exclusivityFlag INTEGER,
    contactPerson TEXT,
    contactEmail TEXT,
    paymentTerms TEXT,
    deliverables TEXT,
    renewalOption TEXT,
    noticePeriodDays INTEGER,
    terminationClause TEXT,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    contractStatus TEXT,
    mediaPlatform TEXT,
    contractReference TEXT
);

INSERT INTO media_partner_contracts (partnerName, startDate, endDate, contractValue, mediaRights, exclusivityFlag, contactPerson, contactEmail, paymentTerms, deliverables, renewalOption, noticePeriodDays, terminationClause, createdAt, updatedAt, notes, contractStatus, mediaPlatform, contractReference) VALUES ('MediaCoA', '2023-01-01', '2025-12-31', 500000.00, 'LiveBroadcast', 1, 'EmmaWhite', 'emma@mediacoa.com', 'Net30', 'WeeklyHighlights', 'AutoRenew', 90, 'BreachClause', '2023-01-01', '2023-01-01', 'Strategic partner', 'Active', 'Streaming', 'MC2023A');
INSERT INTO media_partner_contracts (partnerName, startDate, endDate, contractValue, mediaRights, exclusivityFlag, contactPerson, contactEmail, paymentTerms, deliverables, renewalOption, noticePeriodDays, terminationClause, createdAt, updatedAt, notes, contractStatus, mediaPlatform, contractReference) VALUES ('MediaCoB', '2022-06-15', '2024-06-14', 300000.00, 'HighlightReels', 0, 'LiamGray', 'liam@mediocob.com', 'Net45', 'MonthlyRecap', 'ManualRenew', 60, 'ForceMajeure', '2022-06-15', '2022-06-15', 'Secondary partner', 'Active', 'Cable', 'MC2022B');
INSERT INTO media_partner_contracts (partnerName, startDate, endDate, contractValue, mediaRights, exclusivityFlag, contactPerson, contactEmail, paymentTerms, deliverables, renewalOption, noticePeriodDays, terminationClause, createdAt, updatedAt, notes, contractStatus, mediaPlatform, contractReference) VALUES ('MediaCoC', '2021-01-01', '2023-12-31', 200000.00, 'SocialMedia', 0, 'OliviaBlack', 'olivia@mediococ.com', 'Net60', 'DailyClips', 'NoRenewal', 30, 'TerminationForCause', '2021-01-01', '2021-01-01', 'Social media partner', 'Expired', 'Social', 'MC2021C');

-- Circuit access control systems
CREATE TABLE circuit_access_control_systems (
    systemId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    systemType TEXT,
    manufacturer TEXT,
    installationDate DATE,
    firmwareVersion TEXT,
    accessMethod TEXT,
    encryptionEnabled INTEGER,
    maxUsers INTEGER,
    auditLogEnabled INTEGER,
    lastAuditDate DATE,
    maintenanceScheduleDays INTEGER,
    lastMaintenanceDate DATE,
    status TEXT,
    ipAddress TEXT,
    macAddress TEXT,
    portNumber INTEGER,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    complianceLevel TEXT
);

INSERT INTO circuit_access_control_systems (circuitId, systemType, manufacturer, installationDate, firmwareVersion, accessMethod, encryptionEnabled, maxUsers, auditLogEnabled, lastAuditDate, maintenanceScheduleDays, lastMaintenanceDate, status, ipAddress, macAddress, portNumber, createdAt, updatedAt, notes, complianceLevel) VALUES (1, 'RFID', 'SecureTech', '2022-05-20', 'v3.1', 'CardSwipe', 1, 5000, 1, '2023-01-15', 180, '2023-01-10', 'Operational', '192.168.10.5', 'AA:BB:CC:DD:EE:FF', 8080, '2023-01-01', '2023-01-01', 'Main gate system', 'Level2');
INSERT INTO circuit_access_control_systems (circuitId, systemType, manufacturer, installationDate, firmwareVersion, accessMethod, encryptionEnabled, maxUsers, auditLogEnabled, lastAuditDate, maintenanceScheduleDays, lastMaintenanceDate, status, ipAddress, macAddress, portNumber, createdAt, updatedAt, notes, complianceLevel) VALUES (2, 'Biometric', 'BioSecure', '2021-09-10', 'v2.5', 'Fingerprint', 1, 3000, 1, '2023-02-20', 365, '2023-02-15', 'Operational', '192.168.20.10', '11:22:33:44:55:66', 9090, '2023-01-02', '2023-01-02', 'Pit lane entry', 'Level3');
INSERT INTO circuit_access_control_systems (circuitId, systemType, manufacturer, installationDate, firmwareVersion, accessMethod, encryptionEnabled, maxUsers, auditLogEnabled, lastAuditDate, maintenanceScheduleDays, lastMaintenanceDate, status, ipAddress, macAddress, portNumber, createdAt, updatedAt, notes, complianceLevel) VALUES (3, 'Keypad', 'AccessPro', '2020-03-01', 'v1.8', 'PIN', 0, 2000, 0, '2023-03-05', 90, '2023-03-01', 'Operational', '192.168.30.15', '77:88:99:AA:BB:CC', 7070, '2023-01-03', '2023-01-03', 'Garage area', 'Level1');

-- Fan experience mission data
CREATE TABLE fan_experience_mission_data (
    missionId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    missionName TEXT,
    startDate DATE,
    endDate DATE,
    objective TEXT,
    rewardPoints INTEGER,
    status TEXT,
    completionRate REAL,
    feedbackScore REAL,
    deviceUsed TEXT,
    location TEXT,
    durationMinutes INTEGER,
    stepsCompleted INTEGER,
    bonusEarned REAL,
    sponsorName TEXT,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    version TEXT,
    isActive INTEGER
);

INSERT INTO fan_experience_mission_data (fanId, missionName, startDate, endDate, objective, rewardPoints, status, completionRate, feedbackScore, deviceUsed, location, durationMinutes, stepsCompleted, bonusEarned, sponsorName, createdAt, updatedAt, notes, version, isActive) VALUES (1001, 'PolePositionQuest', '2023-04-01', '2023-04-07', 'Visit pit lane', 500, 'Completed', 100.0, 4.8, 'MobileApp', 'CircuitA', 120, 5, 50.0, 'BrandA', '2023-04-01', '2023-04-07', 'Great engagement', 'v1.0', 1);
INSERT INTO fan_experience_mission_data (fanId, missionName, startDate, endDate, objective, rewardPoints, status, completionRate, feedbackScore, deviceUsed, location, durationMinutes, stepsCompleted, bonusEarned, sponsorName, createdAt, updatedAt, notes, version, isActive) VALUES (1002, 'SpeedTrapChallenge', '2023-05-10', '2023-05-15', 'Record lap time', 300, 'InProgress', 60.0, 0.0, 'Wearable', 'CircuitB', 90, 3, 30.0, 'BrandB', '2023-05-10', '2023-05-15', 'Ongoing', 'v1.1', 1);
INSERT INTO fan_experience_mission_data (fanId, missionName, startDate, endDate, objective, rewardPoints, status, completionRate, feedbackScore, deviceUsed, location, durationMinutes, stepsCompleted, bonusEarned, sponsorName, createdAt, updatedAt, notes, version, isActive) VALUES (1003, 'TeamTrivia', '2023-06-01', '2023-06-05', 'Answer quiz', 200, 'Failed', 0.0, 2.5, 'WebPortal', 'Online', 45, 1, 0.0, 'BrandC', '2023-06-01', '2023-06-05', 'Low participation', 'v1.0', 0);

-- Team aerodynamic simulations
CREATE TABLE team_aerodynamic_simulations (
    simulationId INTEGER PRIMARY KEY AUTOINCREMENT,
    teamId INTEGER,
    simulationDate DATE,
    softwareVersion TEXT,
    cpuHours REAL,
    meshElements INTEGER,
    dragCoefficient REAL,
    downforce REAL,
    liftCoefficient REAL,
    targetMetric TEXT,
    resultFilePath TEXT,
    validationStatus TEXT,
    engineerName TEXT,
    comments TEXT,
    createdAt DATE,
    updatedAt DATE,
    simulationType TEXT,
    scenarioName TEXT,
    windSpeed REAL,
    temperature REAL,
    pressure REAL
);

INSERT INTO team_aerodynamic_simulations (teamId, simulationDate, softwareVersion, cpuHours, meshElements, dragCoefficient, downforce, liftCoefficient, targetMetric, resultFilePath, validationStatus, engineerName, comments, createdAt, updatedAt, simulationType, scenarioName, windSpeed, temperature, pressure) VALUES (10, '2023-01-20', 'AeroSimX v4.2', 150.5, 2000000, 0.32, 3500.0, 0.15, 'MinDrag', '/results/sim10_20230120.dat', 'Validated', 'JohnDoe', 'Baseline run', '2023-01-20', '2023-01-20', 'CFD', 'Baseline', 15.0, 22.0, 1013.25);
INSERT INTO team_aerodynamic_simulations (teamId, simulationDate, softwareVersion, cpuHours, meshElements, dragCoefficient, downforce, liftCoefficient, targetMetric, resultFilePath, validationStatus, engineerName, comments, createdAt, updatedAt, simulationType, scenarioName, windSpeed, temperature, pressure) VALUES (11, '2023-02-15', 'AeroSimX v4.2', 180.0, 2500000, 0.30, 3600.0, 0.14, 'MaxDownforce', '/results/sim11_20230215.dat', 'Pending', 'JaneSmith', 'Increased rear wing', '2023-02-15', '2023-02-15', 'CFD', 'RearWingUpgrade', 12.0, 20.0, 1010.00);
INSERT INTO team_aerodynamic_simulations (teamId, simulationDate, softwareVersion, cpuHours, meshElements, dragCoefficient, downforce, liftCoefficient, targetMetric, resultFilePath, validationStatus, engineerName, comments, createdAt, updatedAt, simulationType, scenarioName, windSpeed, temperature, pressure) VALUES (12, '2023-03-10', 'AeroSimX v4.2', 200.0, 3000000, 0.28, 3700.0, 0.13, 'OptimizedFlow', '/results/sim12_20230310.dat', 'Validated', 'MikeBrown', 'Optimized diffuser', '2023-03-10', '2023-03-10', 'CFD', 'DiffuserTune', 10.0, 18.0, 1008.50);

-- Race augmented reality experiences
CREATE TABLE race_augmented_reality_experiences (
    experienceId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    arDeviceId TEXT,
    activationDate DATE,
    deactivationDate DATE,
    contentVersion TEXT,
    sponsorName TEXT,
    interactionCount INTEGER,
    averageEngagementTime REAL,
    feedbackScore REAL,
    isPremium INTEGER,
    region TEXT,
    language TEXT,
    requiredAppVersion TEXT,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    status TEXT,
    deviceModel TEXT,
    batteryLevelStart INTEGER,
    batteryLevelEnd INTEGER
);

INSERT INTO race_augmented_reality_experiences (raceId, arDeviceId, activationDate, deactivationDate, contentVersion, sponsorName, interactionCount, averageEngagementTime, feedbackScore, isPremium, region, language, requiredAppVersion, createdAt, updatedAt, notes, status, deviceModel, batteryLevelStart, batteryLevelEnd) VALUES (100, 'AR001', '2023-04-01', '2023-04-01', 'v1.0', 'BrandX', 1500, 45.5, 4.7, 1, 'Europe', 'EN', '1.2.0', '2023-04-01', '2023-04-01', 'Launch day AR', 'Active', 'ARGlassesPro', 95, 80);
INSERT INTO race_augmented_reality_experiences (raceId, arDeviceId, activationDate, deactivationDate, contentVersion, sponsorName, interactionCount, averageEngagementTime, feedbackScore, isPremium, region, language, requiredAppVersion, createdAt, updatedAt, notes, status, deviceModel, batteryLevelStart, batteryLevelEnd) VALUES (101, 'AR002', '2023-05-15', '2023-05-15', 'v1.1', 'BrandY', 2000, 50.0, 4.9, 1, 'NorthAmerica', 'EN', '1.3.0', '2023-05-15', '2023-05-15', 'Mid-season update', 'Active', 'ARHeadsetX', 90, 70);
INSERT INTO race_augmented_reality_experiences (raceId, arDeviceId, activationDate, deactivationDate, contentVersion, sponsorName, interactionCount, averageEngagementTime, feedbackScore, isPremium, region, language, requiredAppVersion, createdAt, updatedAt, notes, status, deviceModel, batteryLevelStart, batteryLevelEnd) VALUES (102, 'AR003', '2023-06-20', '2023-06-20', 'v1.2', 'BrandZ', 1200, 40.2, 4.5, 0, 'Asia', 'EN', '1.4.0', '2023-06-20', '2023-06-20', 'Final race AR', 'Completed', 'ARVisor', 85, 60);

-- Circuit expansion projects
CREATE TABLE circuit_expansion_projects (
    projectId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    projectName TEXT,
    startDate DATE,
    projectedEndDate DATE,
    actualEndDate DATE,
    budget REAL,
    spent REAL,
    contractorName TEXT,
    contractorContact TEXT,
    status TEXT,
    permitsApproved INTEGER,
    environmentalImpactScore REAL,
    keyMilestones TEXT,
    riskAssessment TEXT,
    createdAt DATE,
    updatedAt DATE,
    notes TEXT,
    projectManager TEXT,
    phase TEXT,
    stakeholderCount INTEGER
);

INSERT INTO circuit_expansion_projects (circuitId, projectName, startDate, projectedEndDate, actualEndDate, budget, spent, contractorName, contractorContact, status, permitsApproved, environmentalImpactScore, keyMilestones, riskAssessment, createdAt, updatedAt, notes, projectManager, phase, stakeholderCount) VALUES (1, 'GrandstandNorth', '2022-01-15', '2023-06-30', '2023-06-25', 2500000.00, 2450000.00, 'BuildCo', 'contact@buildco.com', 'Completed', 1, 3.2, 'Foundations,Seating,Roof', 'Low', '2022-01-15', '2023-06-25', 'Successful expansion', 'AliceLee', 'Construction', 12);
INSERT INTO circuit_expansion_projects (circuitId, projectName, startDate, projectedEndDate, actualEndDate, budget, spent, contractorName, contractorContact, status, permitsApproved, environmentalImpactScore, keyMilestones, riskAssessment, createdAt, updatedAt, notes, projectManager, phase, stakeholderCount) VALUES (2, 'PitLaneExtension', '2022-05-01', '2024-12-31', NULL, 1800000.00, 950000.00, 'ExtendWorks', 'info@extendworks.com', 'InProgress', 1, 4.5, 'Design,Excavation,Utilities', 'Medium', '2022-05-01', '2023-01-10', 'Awaiting final permits', 'BobKim', 'Design', 8);
INSERT INTO circuit_expansion_projects (circuitId, projectName, startDate, projectedEndDate, actualEndDate, budget, spent, contractorName, contractorContact, status, permitsApproved, environmentalImpactScore, keyMilestones, riskAssessment, createdAt, updatedAt, notes, projectManager, phase, stakeholderCount) VALUES (3, 'HospitalityZoneUpgrade', '2023-02-20', '2024-08-15', NULL, 1200000.00, 300000.00, 'LuxuryBuild', 'sales@luxurybuild.com', 'Planning', 0, 2.8, 'Concept,Approval,Procurement', 'High', '2023-02-20', '2023-02-20', 'Initial concept stage', 'CarolNg', 'Planning', 5);