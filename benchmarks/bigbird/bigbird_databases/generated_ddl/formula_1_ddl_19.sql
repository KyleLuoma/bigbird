-- Table describing lighting systems installed at each circuit
CREATE TABLE track_lighting_systems (
    lightingId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    systemName TEXT,
    manufacturer TEXT,
    installationDate DATE,
    lumens INTEGER,
    powerKw REAL,
    numFixtures INTEGER,
    controlProtocol TEXT,
    maintenanceIntervalDays INTEGER,
    lastMaintenanceDate DATE,
    warrantyYears INTEGER,
    isOperational INTEGER,
    voltage REAL,
    current REAL,
    beamAngle REAL,
    colorTempK INTEGER,
    remoteControlSupported INTEGER,
    notes TEXT,
    createdAt DATETIME
);

INSERT INTO track_lighting_systems (circuitId, systemName, manufacturer, installationDate, lumens, powerKw, numFixtures, controlProtocol, maintenanceIntervalDays, lastMaintenanceDate, warrantyYears, isOperational, voltage, current, beamAngle, colorTempK, remoteControlSupported, notes, createdAt) VALUES (1, 'MainLights', 'LuminaTech', '2022-03-15', 500000, 250.5, 120, 'DMX', 180, '2023-09-10', 5, 1, 400, 20, 30, 5600, 1, 'Fully automated', '2024-01-01 08:00:00');
INSERT INTO track_lighting_systems (circuitId, systemName, manufacturer, installationDate, lumens, powerKw, numFixtures, controlProtocol, maintenanceIntervalDays, lastMaintenanceDate, warrantyYears, isOperational, voltage, current, beamAngle, colorTempK, remoteControlSupported, notes, createdAt) VALUES (2, 'StadiumGlow', 'BrightWave', '2021-07-20', 750000, 320.0, 150, 'ArtNet', 365, '2023-06-05', 7, 1, 415, 22, 35, 6000, 0, 'Manual overrides in place', '2024-01-02 09:15:00');
INSERT INTO track_lighting_systems (circuitId, systemName, manufacturer, installationDate, lumens, powerKw, numFixtures, controlProtocol, maintenanceIntervalDays, lastMaintenanceDate, warrantyYears, isOperational, voltage, current, beamAngle, colorTempK, remoteControlSupported, notes, createdAt) VALUES (3, 'NightVision', 'Photonics', '2020-11-01', 300000, 180.3, 80, 'MIDI', 90, '2023-12-01', 4, 0, 380, 15, 25, 5300, 1, 'Awaiting retrofit', '2024-01-03 10:30:00');

-- Table storing machine‑learning models used for race analytics
CREATE TABLE race_analytics_models (
    modelId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    modelName TEXT,
    version TEXT,
    algorithmType TEXT,
    trainingDataStartDate DATE,
    trainingDataEndDate DATE,
    accuracy REAL,
    precision REAL,
    recall REAL,
    f1Score REAL,
    featureCount INTEGER,
    hyperparameters TEXT,
    createdBy TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    deploymentStatus TEXT,
    modelFilePath TEXT,
    modelDescription TEXT,
    notes TEXT
);

INSERT INTO race_analytics_models (raceId, modelName, version, algorithmType, trainingDataStartDate, trainingDataEndDate, accuracy, precision, recall, f1Score, featureCount, hyperparameters, createdBy, createdAt, updatedAt, deploymentStatus, modelFilePath, modelDescription, notes) VALUES (101, 'LapTimePredictor', 'v1.0', 'GradientBoosting', '2022-01-01', '2022-12-31', 0.92, 0.90, 0.88, 0.89, 45, '{"depth":5,"trees":200}', 'alice', '2024-01-01 07:45:00', '2024-01-10 12:00:00', 'Deployed', '/models/laptime_v1.pkl', 'Predicts lap times based on telemetry', 'Initial release');
INSERT INTO race_analytics_models (raceId, modelName, version, algorithmType, trainingDataStartDate, trainingDataEndDate, accuracy, precision, recall, f1Score, featureCount, hyperparameters, createdBy, createdAt, updatedAt, deploymentStatus, modelFilePath, modelDescription, notes) VALUES (102, 'PitStopOptimizer', 'v2.1', 'NeuralNetwork', '2021-06-01', '2023-05-31', 0.87, 0.85, 0.84, 0.84, 60, '{"layers":3,"units":128}', 'bob', '2024-01-02 08:15:00', '2024-01-12 14:30:00', 'Testing', '/models/pitstop_v2.h5', 'Optimizes pit‑stop timing', 'Beta testing');
INSERT INTO race_analytics_models (raceId, modelName, version, algorithmType, trainingDataStartDate, trainingDataEndDate, accuracy, precision, recall, f1Score, featureCount, hyperparameters, createdBy, createdAt, updatedAt, deploymentStatus, modelFilePath, modelDescription, notes) VALUES (103, 'WeatherImpact', 'v0.9', 'RandomForest', '2020-01-01', '2022-12-31', 0.81, 0.79, 0.78, 0.78, 30, '{"trees":150}', 'carol', '2024-01-03 09:00:00', '2024-01-15 16:45:00', 'Retired', '/models/weather_v0.9.joblib', 'Estimates weather impact on race outcomes', 'Superseded by v1.2');

-- Table linking drivers with their sponsorship contracts
CREATE TABLE driver_sponsorships (
    sponsorshipId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    sponsorId INTEGER,
    contractStartDate DATE,
    contractEndDate DATE,
    amountUSD REAL,
    brandingRights TEXT,
    exclusivity INTEGER,
    activationEvents INTEGER,
    performanceBonus REAL,
    terminationClause TEXT,
    renewalOption INTEGER,
    sponsorContactName TEXT,
    sponsorContactEmail TEXT,
    sponsorContactPhone TEXT,
    agreementDocumentPath TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    isActive INTEGER,
    sponsorBenefits TEXT
);

INSERT INTO driver_sponsorships (driverId, sponsorId, contractStartDate, contractEndDate, amountUSD, brandingRights, exclusivity, activationEvents, performanceBonus, terminationClause, renewalOption, sponsorContactName, sponsorContactEmail, sponsorContactPhone, agreementDocumentPath, notes, createdAt, updatedAt, isActive, sponsorBenefits) VALUES (10, 200, '2023-01-01', '2025-12-31', 2500000, 'FullCarLivery', 1, 12, 500000, 'NineMonthNotice', 1, 'John Doe', 'john.doe@example.com', '5551234567', '/contracts/driver10_sponsor200.pdf', 'Includes helmet branding', '2024-01-01 06:00:00', '2024-01-05 10:00:00', 1, 'HospitalityPasses');
INSERT INTO driver_sponsorships (driverId, sponsorId, contractStartDate, contractEndDate, amountUSD, brandingRights, exclusivity, activationEvents, performanceBonus, terminationClause, renewalOption, sponsorContactName, sponsorContactEmail, sponsorContactPhone, agreementDocumentPath, notes, createdAt, updatedAt, isActive, sponsorBenefits) VALUES (12, 210, '2022-07-15', '2024-07-14', 1800000, 'SidePodiumAds', 0, 8, 300000, 'SixMonthNotice', 0, 'Jane Smith', 'jane.smith@example.com', '5559876543', '/contracts/driver12_sponsor210.pdf', 'Limited to European races', '2024-01-02 07:30:00', '2024-01-06 11:15:00', 1, 'VIPLoungeAccess');
INSERT INTO driver_sponsorships (driverId, sponsorId, contractStartDate, contractEndDate, amountUSD, brandingRights, exclusivity, activationEvents, performanceBonus, terminationClause, renewalOption, sponsorContactName, sponsorContactEmail, sponsorContactPhone, agreementDocumentPath, notes, createdAt, updatedAt, isActive, sponsorBenefits) VALUES (15, 220, '2021-03-01', '2023-02-28', 1200000, 'HelmetStickers', 0, 5, 150000, 'ThreeMonthNotice', 1, 'Mike Lee', 'mike.lee@example.com', '5552223333', '/contracts/driver15_sponsor220.pdf', 'Renewed after 2022 season', '2024-01-03 08:45:00', '2024-01-07 12:30:00', 0, 'MerchDiscounts');

-- Table for weather alerts issued for races
CREATE TABLE weather_alerts (
    alertId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    alertType TEXT,
    severityLevel TEXT,
    issuedAt DATETIME,
    validUntil DATETIME,
    description TEXT,
    issuedBy TEXT,
    location TEXT,
    temperatureC REAL,
    humidityPct REAL,
    windSpeedKph REAL,
    precipitationMm REAL,
    advisoryUrl TEXT,
    active INTEGER,
    resolvedAt DATETIME,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    alertCode TEXT,
    region TEXT
);

INSERT INTO weather_alerts (raceId, alertType, severityLevel, issuedAt, validUntil, description, issuedBy, location, temperatureC, humidityPct, windSpeedKph, precipitationMm, advisoryUrl, active, resolvedAt, notes, createdAt, updatedAt, alertCode, region) VALUES (101, 'Thunderstorm', 'High', '2024-03-15 09:30:00', '2024-03-15 12:00:00', 'Severe thunderstorm expected', 'NationalWeatherService', 'CircuitA', 22.5, 85, 45, 12.3, 'http://weather.example.com/alert/101', 1, NULL, 'Monitor radar', '2024-01-01 06:00:00', '2024-01-01 06:00:00', 'TSH01', 'North');
INSERT INTO weather_alerts (raceId, alertType, severityLevel, issuedAt, validUntil, description, issuedBy, location, temperatureC, humidityPct, windSpeedKph, precipitationMm, advisoryUrl, active, resolvedAt, notes, createdAt, updatedAt, alertCode, region) VALUES (102, 'HighWind', 'Medium', '2024-04-20 14:00:00', '2024-04-20 18:00:00', 'Sustained winds up to 60 kph', 'LocalMeteorology', 'CircuitB', 18.0, 70, 60, 0, 'http://weather.example.com/alert/102', 1, NULL, 'Check canopy safety', '2024-01-02 07:00:00', '2024-01-02 07:00:00', 'HW02', 'East');
INSERT INTO weather_alerts (raceId, alertType, severityLevel, issuedAt, validUntil, description, issuedBy, location, temperatureC, humidityPct, windSpeedKph, precipitationMm, advisoryUrl, active, resolvedAt, notes, createdAt, updatedAt, alertCode, region) VALUES (103, 'Fog', 'Low', '2024-05-05 07:15:00', '2024-05-05 09:30:00', 'Low visibility due to fog', 'WeatherAgency', 'CircuitC', 10.2, 95, 5, 0, 'http://weather.example.com/alert/103', 0, '2024-05-05 09:45:00', 'Visibility cleared', '2024-01-03 08:00:00', '2024-01-03 10:00:00', 'FG03', 'South');

-- Table for permits granting access to circuit facilities
CREATE TABLE circuit_access_permits (
    permitId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    permitType TEXT,
    holderName TEXT,
    holderOrganization TEXT,
    issueDate DATE,
    expiryDate DATE,
    permittedAreas TEXT,
    restrictions TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    permitDocumentPath TEXT,
    isRevoked INTEGER,
    revocationDate DATE,
    revocationReason TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    permitNumber TEXT,
    status TEXT
);

INSERT INTO circuit_access_permits (circuitId, permitType, holderName, holderOrganization, issueDate, expiryDate, permittedAreas, restrictions, approvedBy, approvalDate, permitDocumentPath, isRevoked, revocationDate, revocationReason, notes, createdAt, updatedAt, permitNumber, status) VALUES (1, 'Media', 'Laura Brown', 'GlobalSportsMedia', '2023-02-01', '2024-02-01', 'Paddock, MediaCenter', 'No drones', 'ChiefSecurity', '2023-01-20', '/permits/media_1.pdf', 0, NULL, NULL, 'Annual media pass', '2024-01-01 05:00:00', '2024-01-01 05:00:00', 'MP-001', 'Active');
INSERT INTO circuit_access_permits (circuitId, permitType, holderName, holderOrganization, issueDate, expiryDate, permittedAreas, restrictions, approvedBy, approvalDate, permitDocumentPath, isRevoked, revocationDate, revocationReason, notes, createdAt, updatedAt, permitNumber, status) VALUES (2, 'Vendor', 'Sam Patel', 'PitStopSupplyCo', '2023-05-10', '2024-05-10', 'PitLane, Garage', 'Max weight 2t', 'OpsDirector', '2023-05-01', '/permits/vendor_2.pdf', 0, NULL, NULL, 'Supply of spare parts', '2024-01-02 06:15:00', '2024-01-02 06:15:00', 'VP-202', 'Active');
INSERT INTO circuit_access_permits (circuitId, permitType, holderName, holderOrganization, issueDate, expiryDate, permittedAreas, restrictions, approvedBy, approvalDate, permitDocumentPath, isRevoked, revocationDate, revocationReason, notes, createdAt, updatedAt, permitNumber, status) VALUES (3, 'Official', 'Mark Evans', 'FIA', '2022-09-01', '2025-09-01', 'All areas', 'None', 'FIAChair', '2022-08-20', '/permits/official_3.pdf', 0, NULL, NULL, 'Grand Prix official', '2024-01-03 07:30:00', '2024-01-03 07:30:00', 'OF-303', 'Active');

-- Table capturing pit‑stop strategy decisions per driver
CREATE TABLE pit_stop_strategy (
    strategyId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    driverId INTEGER,
    tireCompound TEXT,
    fuelLoadLiters REAL,
    pitStopLap INTEGER,
    pitWindowStart INTEGER,
    pitWindowEnd INTEGER,
    expectedTimeSec REAL,
    expectedPositionGain INTEGER,
    pitCrewChief TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    strategyVersion TEXT,
    simulationScore REAL,
    riskLevel TEXT,
    weatherCondition TEXT,
    trackTempC REAL,
    tireWearPct REAL,
    brakeWearPct REAL
);

INSERT INTO pit_stop_strategy (raceId, driverId, tireCompound, fuelLoadLiters, pitStopLap, pitWindowStart, pitWindowEnd, expectedTimeSec, expectedPositionGain, pitCrewChief, notes, createdAt, updatedAt, strategyVersion, simulationScore, riskLevel, weatherCondition, trackTempC, tireWearPct, brakeWearPct) VALUES (101, 10, 'Soft', 45.5, 23, 20, 30, 2.8, 3, 'Carlos Ruiz', 'Aggressive undercut', '2024-01-01 09:00:00', '2024-01-01 09:10:00', 'v1.2', 96.5, 'High', 'Dry', 28.0, 15.2, 8.1);
INSERT INTO pit_stop_strategy (raceId, driverId, tireCompound, fuelLoadLiters, pitStopLap, pitWindowStart, pitWindowEnd, expectedTimeSec, expectedPositionGain, pitCrewChief, notes, createdAt, updatedAt, strategyVersion, simulationScore, riskLevel, weatherCondition, trackTempC, tireWearPct, brakeWearPct) VALUES (102, 12, 'Medium', 38.0, 18, 15, 25, 3.1, 2, 'Lena Kim', 'Conservative', '2024-01-02 10:15:00', '2024-01-02 10:25:00', 'v2.0', 89.3, 'Medium', 'Cloudy', 24.5, 12.0, 6.5);
INSERT INTO pit_stop_strategy (raceId, driverId, tireCompound, fuelLoadLiters, pitStopLap, pitWindowStart, pitWindowEnd, expectedTimeSec, expectedPositionGain, pitCrewChief, notes, createdAt, updatedAt, strategyVersion, simulationScore, riskLevel, weatherCondition, trackTempC, tireWearPct, brakeWearPct) VALUES (103, 15, 'Hard', 30.2, 27, 22, 35, 3.5, 1, 'Tom O\'Neil', 'Late stop for tire preservation', '2024-01-03 11:30:00', '2024-01-03 11:40:00', 'v1.0', 78.0, 'Low', 'Rain', 19.0, 8.5, 4.2);

-- Table for aerodynamics simulation runs performed by constructors
CREATE TABLE aerodynamics_simulations (
    simulationId INTEGER PRIMARY KEY AUTOINCREMENT,
    constructorId INTEGER,
    modelName TEXT,
    version TEXT,
    simulationDate DATE,
    meshSize INTEGER,
    solverType TEXT,
    reynoldsNumber REAL,
    dragCoefficient REAL,
    downforceNewton REAL,
    liftCoefficient REAL,
    cpuHours REAL,
    gpuHours REAL,
    resultFilePath TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    simulationStatus TEXT,
    parametersHash TEXT,
    runtimeSeconds REAL,
    validatedBy TEXT
);

INSERT INTO aerodynamics_simulations (constructorId, modelName, version, simulationDate, meshSize, solverType, reynoldsNumber, dragCoefficient, downforceNewton, liftCoefficient, cpuHours, gpuHours, resultFilePath, notes, createdAt, updatedAt, simulationStatus, parametersHash, runtimeSeconds, validatedBy) VALUES (1, 'WingAero', 'v3.4', '2024-02-10', 850000, 'CFD', 1.2e7, 0.32, 1500.5, -0.02, 120.0, 45.0, '/simulations/wing_v3.4.res', 'Improved vortex shedding', '2024-01-01 12:00:00', '2024-01-02 15:30:00', 'Completed', 'a1b2c3d4', 5400.0, 'Emma Lee');
INSERT INTO aerodynamics_simulations (constructorId, modelName, version, simulationDate, meshSize, solverType, reynoldsNumber, dragCoefficient, downforceNewton, liftCoefficient, cpuHours, gpuHours, resultFilePath, notes, createdAt, updatedAt, simulationStatus, parametersHash, runtimeSeconds, validatedBy) VALUES (2, 'FloorDesign', 'v2.1', '2024-03-05', 730000, 'FVM', 1.0e7, 0.28, 1800.0, -0.01, 95.5, 38.2, '/simulations/floor_v2.1.res', 'Reduced underbody drag', '2024-01-03 13:15:00', '2024-01-04 16:45:00', 'Completed', 'f5g6h7i8', 4600.0, 'David Kim');
INSERT INTO aerodynamics_simulations (constructorId, modelName, version, simulationDate, meshSize, solverType, reynoldsNumber, dragCoefficient, downforceNewton, liftCoefficient, cpuHours, gpuHours, resultFilePath, notes, createdAt, updatedAt, simulationStatus, parametersHash, runtimeSeconds, validatedBy) VALUES (3, 'RearWing', 'v1.0', '2024-04-12', 600000, 'LES', 9.5e6, 0.35, 1400.3, -0.03, 80.0, 30.0, '/simulations/rearwing_v1.0.res', 'Baseline configuration', '2024-01-05 14:30:00', '2024-01-06 17:00:00', 'Completed', 'j9k0l1m2', 3800.0, 'Sophie Wang');

-- Table linking vehicles to parking assignments at the circuit venue
CREATE TABLE logistics_parking_assignments (
    assignmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    vehicleId INTEGER,
    ownerCompany TEXT,
    parkingZone TEXT,
    spotNumber TEXT,
    assignmentDate DATE,
    releaseDate DATE,
    permitNumber TEXT,
    isReserved INTEGER,
    reservedFor TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    vehicleType TEXT,
    licensePlate TEXT,
    driverName TEXT,
    driverContact TEXT,
    lengthMeters REAL,
    widthMeters REAL,
    heightMeters REAL
);

INSERT INTO logistics_parking_assignments (circuitId, vehicleId, ownerCompany, parkingZone, spotNumber, assignmentDate, releaseDate, permitNumber, isReserved, reservedFor, notes, createdAt, updatedAt, vehicleType, licensePlate, driverName, driverContact, lengthMeters, widthMeters, heightMeters) VALUES (1, 5001, 'TeamAlpha', 'A', 'A12', '2024-03-01', '2024-03-15', 'PRM-001', 1, 'TeamAlpha Crew', 'Transport of spare parts', '2024-01-01 08:00:00', '2024-01-02 09:00:00', 'Truck', 'ABC1234', 'John Miller', '5551112222', 6.0, 2.5, 3.0);
INSERT INTO logistics_parking_assignments (circuitId, vehicleId, ownerCompany, parkingZone, spotNumber, assignmentDate, releaseDate, permitNumber, isReserved, reservedFor, notes, createdAt, updatedAt, vehicleType, licensePlate, driverName, driverContact, lengthMeters, widthMeters, heightMeters) VALUES (2, 5002, 'LogiTrans', 'B', 'B07', '2024-04-05', '2024-04-20', 'PRM-002', 0, NULL, 'General cargo van', '2024-01-03 10:15:00', '2024-01-04 11:20:00', 'Van', 'XYZ5678', 'Linda Green', '5553334444', 4.5, 1.9, 2.2);
INSERT INTO logistics_parking_assignments (circuitId, vehicleId, ownerCompany, parkingZone, spotNumber, assignmentDate, releaseDate, permitNumber, isReserved, reservedFor, notes, createdAt, updatedAt, vehicleType, licensePlate, driverName, driverContact, lengthMeters, widthMeters, heightMeters) VALUES (3, 5003, 'RapidDelivery', 'C', 'C21', '2024-05-10', '2024-05-25', 'PRM-003', 1, 'VIP Guest Transport', 'Luxury sedan for VIPs', '2024-01-05 13:30:00', '2024-01-06 14:35:00', 'Sedan', 'LMN9012', 'Mark Davis', '5555556666', 4.7, 1.8, 1.4);

-- Table storing fan experience survey responses
CREATE TABLE fan_experience_surveys (
    surveyId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    fanId INTEGER,
    surveyDate DATE,
    overallRating INTEGER,
    hospitalityRating INTEGER,
    seatingRating INTEGER,
    foodRating INTEGER,
    entertainmentRating INTEGER,
    safetyRating INTEGER,
    likelihoodToReturn INTEGER,
    comments TEXT,
    respondedVia TEXT,
    ipAddress TEXT,
    deviceType TEXT,
    browser TEXT,
    os TEXT,
    surveyVersion TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    isComplete INTEGER,
    fanLoyaltyTier TEXT
);

INSERT INTO fan_experience_surveys (raceId, fanId, surveyDate, overallRating, hospitalityRating, seatingRating, foodRating, entertainmentRating, safetyRating, likelihoodToReturn, comments, respondedVia, ipAddress, deviceType, browser, os, surveyVersion, createdAt, updatedAt, isComplete, fanLoyaltyTier) VALUES (101, 9001, '2024-03-20', 9, 8, 9, 7, 8, 9, 10, 'Great atmosphere and great food', 'Web', '192.168.1.10', 'Mobile', 'Chrome', 'Android', 'v1', '2024-01-01 07:00:00', '2024-01-01 07:05:00', 1, 'Gold');
INSERT INTO fan_experience_surveys (raceId, fanId, surveyDate, overallRating, hospitalityRating, seatingRating, foodRating, entertainmentRating, safetyRating, likelihoodToReturn, comments, respondedVia, ipAddress, deviceType, browser, os, surveyVersion, createdAt, updatedAt, isComplete, fanLoyaltyTier) VALUES (102, 9002, '2024-04-15', 7, 6, 7, 5, 6, 8, 8, 'Food lines were long', 'Mobile', '10.0.0.5', 'Tablet', 'Safari', 'iOS', 'v1', '2024-01-02 08:10:00', '2024-01-02 08:12:00', 1, 'Silver');
INSERT INTO fan_experience_surveys (raceId, fanId, surveyDate, overallRating, hospitalityRating, seatingRating, foodRating, entertainmentRating, safetyRating, likelihoodToReturn, comments, respondedVia, ipAddress, deviceType, browser, os, surveyVersion, createdAt, updatedAt, isComplete, fanLoyaltyTier) VALUES (103, 9003, '2024-05-05', 5, 5, 4, 4, 5, 7, 6, 'Stadium was too crowded', 'Web', '172.16.0.8', 'Desktop', 'Firefox', 'Windows', 'v1', '2024-01-03 09:20:00', '2024-01-03 09:25:00', 1, 'Bronze');

-- Table tracking live‑feed metadata for broadcast streams
CREATE TABLE media_live_feed_metadata (
    feedId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    cameraId TEXT,
    streamUrl TEXT,
    resolution TEXT,
    frameRate REAL,
    codec TEXT,
    bitrateKbps INTEGER,
    startTime DATETIME,
    endTime DATETIME,
    isActive INTEGER,
    sourceOperator TEXT,
    notes TEXT,
    createdAt DATETIME,
    updatedAt DATETIME,
    feedType TEXT,
    latencyMs INTEGER,
    orientation TEXT,
    format TEXT,
    archivePath TEXT,
    qualityScore REAL
);

INSERT INTO media_live_feed_metadata (raceId, cameraId, streamUrl, resolution, frameRate, codec, bitrateKbps, startTime, endTime, isActive, sourceOperator, notes, createdAt, updatedAt, feedType, latencyMs, orientation, format, archivePath, qualityScore) VALUES (101, 'CAM01', 'http://stream.example.com/101/cam01', '1920x1080', 60.0, 'H264', 4500, '2024-03-20 13:00:00', '2024-03-20 15:30:00', 1, 'Mike Turner', 'Main straight view', '2024-01-01 10:00:00', '2024-01-01 10:05:00', 'Live', 250, 'Landscape', 'MP4', '/archives/101_cam01.mp4', 93.5);
INSERT INTO media_live_feed_metadata (raceId, cameraId, streamUrl, resolution, frameRate, codec, bitrateKbps, startTime, endTime, isActive, sourceOperator, notes, createdAt, updatedAt, feedType, latencyMs, orientation, format, archivePath, qualityScore) VALUES (102, 'CAM02', 'http://stream.example.com/102/cam02', '1280x720', 30.0, 'VP9', 3000, '2024-04-15 14:00:00', '2024-04-15 16:45:00', 1, 'Anna Lopez', 'Pit lane overview', '2024-01-02 11:15:00', '2024-01-02 11:20:00', 'Live', 300, 'Landscape', 'WebM', '/archives/102_cam02.webm', 88.0);
INSERT INTO media_live_feed_metadata (raceId, cameraId, streamUrl, resolution, frameRate, codec, bitrateKbps, startTime, endTime, isActive, sourceOperator, notes, createdAt, updatedAt, feedType, latencyMs, orientation, format, archivePath, qualityScore) VALUES (103, 'CAM03', 'http://stream.example.com/103/cam03', '3840x2160', 50.0, 'HEVC', 8000, '2024-05-05 12:30:00', '2024-05-05 15:00:00', 0, 'David Chen', 'Aerial drone feed', '2024-01-03 12:30:00', '2024-01-03 12:35:00', 'Recorded', 150, 'Portrait', 'MKV', '/archives/103_cam03.mkv', 91.2);