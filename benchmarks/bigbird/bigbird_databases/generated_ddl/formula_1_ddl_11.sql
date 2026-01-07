-- Venue security patrols information
CREATE TABLE venue_security_patrols
(
    patrolId INTEGER PRIMARY KEY AUTOINCREMENT,
    patrolDate DATE NOT NULL,
    shift TEXT NOT NULL,
    patrolLeader TEXT NOT NULL,
    numGuards INTEGER NOT NULL,
    routeDescription TEXT,
    startTime TEXT,
    endTime TEXT,
    incidentsReported INTEGER,
    notes TEXT,
    vehicleId INTEGER,
    equipmentChecklist TEXT,
    communicationChannel TEXT,
    weatherCondition TEXT,
    temperature REAL,
    humidity REAL,
    region TEXT,
    patrolDuration INTEGER,
    supervisorContact TEXT,
    patrolStatus TEXT
);

INSERT INTO venue_security_patrols (patrolDate, shift, patrolLeader, numGuards, routeDescription, startTime, endTime, incidentsReported, notes, vehicleId, equipmentChecklist, communicationChannel, weatherCondition, temperature, humidity, region, patrolDuration, supervisorContact, patrolStatus)
VALUES ('2025-03-01', 'Morning', 'Alice Smith', 4, 'Main Gate to Grandstand', '07:00', '09:30', 0, 'All clear', 12, 'Radio,Flashlight', 'Radio', 'Clear', 22.5, 45.0, 'North', 150, 'Bob Jones', 'Completed');

INSERT INTO venue_security_patrols (patrolDate, shift, patrolLeader, numGuards, routeDescription, startTime, endTime, incidentsReported, notes, vehicleId, equipmentChecklist, communicationChannel, weatherCondition, temperature, humidity, region, patrolDuration, supervisorContact, patrolStatus)
VALUES ('2025-03-01', 'Evening', 'Carlos Diaz', 5, 'Paddock to Parking Lot', '18:30', '21:00', 1, 'Minor fan disturbance', 15, 'Radio,WalkieTalkie', 'Radio', 'Cloudy', 18.0, 60.0, 'East', 150, 'Dana Lee', 'Completed');

INSERT INTO venue_security_patrols (patrolDate, shift, patrolLeader, numGuards, routeDescription, startTime, endTime, incidentsReported, notes, vehicleId, equipmentChecklist, communicationChannel, weatherCondition, temperature, humidity, region, patrolDuration, supervisorContact, patrolStatus)
VALUES ('2025-03-02', 'Night', 'Ethan Wang', 3, 'Circuit perimeter', '22:00', '00:30', 0, 'No issues', 18, 'Radio,BodyCam', 'Radio', 'Clear', 15.0, 55.0, 'South', 150, 'Fiona Patel', 'Completed');

-- Telemetry calibration logs
CREATE TABLE telemetry_calibration_logs
(
    calibrationId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    deviceId INTEGER,
    calibrationDate DATE,
    technician TEXT,
    calibrationType TEXT,
    offsetX REAL,
    offsetY REAL,
    offsetZ REAL,
    scaleFactor REAL,
    temperatureC REAL,
    humidityPercent REAL,
    pressurePa REAL,
    notes TEXT,
    verificationStatus TEXT,
    nextDueDate DATE,
    deviceSerial TEXT,
    firmwareVersion TEXT,
    calibrationDuration INTEGER,
    calibrationResult TEXT,
    referenceStandard TEXT
);

INSERT INTO telemetry_calibration_logs (raceId, deviceId, calibrationDate, technician, calibrationType, offsetX, offsetY, offsetZ, scaleFactor, temperatureC, humidityPercent, pressurePa, notes, verificationStatus, nextDueDate, deviceSerial, firmwareVersion, calibrationDuration, calibrationResult, referenceStandard)
VALUES (101, 2001, '2025-02-20', 'Laura Miller', 'Accelerometer', 0.001, -0.002, 0.0005, 1.0001, 22.0, 40.0, 101325, 'Initial calibration', 'Passed', '2025-08-20', 'ACC-2001-XYZ', 'v3.2', 45, 'Success', 'ISO 17025');

INSERT INTO telemetry_calibration_logs (raceId, deviceId, calibrationDate, technician, calibrationType, offsetX, offsetY, offsetZ, scaleFactor, temperatureC, humidityPercent, pressurePa, notes, verificationStatus, nextDueDate, deviceSerial, firmwareVersion, calibrationDuration, calibrationResult, referenceStandard)
VALUES (102, 2002, '2025-03-05', 'Mark Chen', 'Gyroscope', -0.0003, 0.0004, -0.0001, 0.9999, 21.5, 42.0, 101300, 'Routine check', 'Passed', '2025-09-05', 'GYR-2002-ABC', 'v2.9', 30, 'Success', 'ISO 17025');

INSERT INTO telemetry_calibration_logs (raceId, deviceId, calibrationDate, technician, calibrationType, offsetX, offsetY, offsetZ, scaleFactor, temperatureC, humidityPercent, pressurePa, notes, verificationStatus, nextDueDate, deviceSerial, firmwareVersion, calibrationDuration, calibrationResult, referenceStandard)
VALUES (103, 2003, '2025-03-12', 'Nina Patel', 'SpeedSensor', 0.0000, 0.0000, 0.0000, 1.0000, 23.0, 38.0, 101280, 'Calibration after firmware update', 'Passed', '2025-09-12', 'SPD-2003-LMN', 'v4.0', 60, 'Success', 'ISO 17025');

-- Circuit dust level measurements
CREATE TABLE circuit_dust_levels
(
    dustId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    measurementDate DATE,
    location TEXT,
    dustConcentrationMicrogramPerCubicMeter REAL,
    particleSizeAvgMicron REAL,
    windSpeed REAL,
    humidity REAL,
    temperature REAL,
    samplerType TEXT,
    samplerHeightMeters REAL,
    notes TEXT,
    measurementMethod TEXT,
    dataSource TEXT,
    validated INTEGER,
    validationDate DATE,
    validatorName TEXT,
    baselineComparison REAL,
    alertLevel TEXT,
    region TEXT
);

INSERT INTO circuit_dust_levels (circuitId, measurementDate, location, dustConcentrationMicrogramPerCubicMeter, particleSizeAvgMicron, windSpeed, humidity, temperature, samplerType, samplerHeightMeters, notes, measurementMethod, dataSource, validated, validationDate, validatorName, baselineComparison, alertLevel, region)
VALUES (10, '2025-03-01', 'Turn 1', 12.5, 0.8, 5.2, 45.0, 20.0, 'Beta', 2.5, 'Normal conditions', 'Active sampling', 'EnvDept', 1, '2025-03-02', 'George Kim', 10.0, 'Low', 'North');

INSERT INTO circuit_dust_levels (circuitId, measurementDate, location, dustConcentrationMicrogramPerCubicMeter, particleSizeAvgMicron, windSpeed, humidity, temperature, samplerType, samplerHeightMeters, notes, measurementMethod, dataSource, validated, validationDate, validatorName, baselineComparison, alertLevel, region)
VALUES (11, '2025-03-02', 'Straight 3', 28.0, 1.2, 7.0, 50.0, 22.5, 'Alpha', 3.0, 'Higher dust due to dry spell', 'Passive sampling', 'EnvDept', 1, '2025-03-03', 'Helen Zhao', 15.0, 'Medium', 'East');

INSERT INTO circuit_dust_levels (circuitId, measurementDate, location, dustConcentrationMicrogramPerCubicMeter, particleSizeAvgMicron, windSpeed, humidity, temperature, samplerType, samplerHeightMeters, notes, measurementMethod, dataSource, validated, validationDate, validatorName, baselineComparison, alertLevel, region)
VALUES (12, '2025-03-03', 'Pit lane', 45.3, 1.5, 6.5, 55.0, 24.0, 'Gamma', 1.8, 'Dust peak before race', 'Active sampling', 'EnvDept', 1, '2025-03-04', 'Ian Lopez', 30.0, 'High', 'South');

-- Broadcast stream quality metrics
CREATE TABLE broadcast_stream_quality
(
    streamId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    platform TEXT,
    startTime TEXT,
    endTime TEXT,
    averageBitrateMbps REAL,
    peakBitrateMbps REAL,
    averageLatencyMs INTEGER,
    packetLossPercent REAL,
    bufferingEvents INTEGER,
    resolution TEXT,
    frameRate INTEGER,
    codec TEXT,
    audioChannels INTEGER,
    audioBitrateKbps INTEGER,
    viewerCountAverage INTEGER,
    viewerCountPeak INTEGER,
    geoDistribution TEXT,
    streamStatus TEXT,
    qualityRating INTEGER
);

INSERT INTO broadcast_stream_quality (raceId, platform, startTime, endTime, averageBitrateMbps, peakBitrateMbps, averageLatencyMs, packetLossPercent, bufferingEvents, resolution, frameRate, codec, audioChannels, audioBitrateKbps, viewerCountAverage, viewerCountPeak, geoDistribution, streamStatus, qualityRating)
VALUES (101, 'StreamNow', '14:00', '16:00', 4.8, 6.5, 120, 0.2, 3, '1920x1080', 60, 'H.264', 2, 128, 25000, 42000, 'EU,NA,APAC', 'Active', 9);

INSERT INTO broadcast_stream_quality (raceId, platform, startTime, endTime, averageBitrateMbps, peakBitrateMbps, averageLatencyMs, packetLossPercent, bufferingEvents, resolution, frameRate, codec, audioChannels, audioBitrateKbps, viewerCountAverage, viewerCountPeak, geoDistribution, streamStatus, qualityRating)
VALUES (102, 'LiveCast', '12:30', '15:00', 5.2, 7.0, 110, 0.1, 1, '1280x720', 30, 'VP9', 2, 96, 18000, 30000, 'EU,NA', 'Active', 8);

INSERT INTO broadcast_stream_quality (raceId, platform, startTime, endTime, averageBitrateMbps, peakBitrateMbps, averageLatencyMs, packetLossPercent, bufferingEvents, resolution, frameRate, codec, audioChannels, audioBitrateKbps, viewerCountAverage, viewerCountPeak, geoDistribution, streamStatus, qualityRating)
VALUES (103, 'RaceStream', '15:45', '18:15', 4.5, 6.0, 130, 0.3, 5, '1920x1080', 60, 'H.265', 2, 160, 22000, 38000, 'EU,NA,SA', 'Active', 7);

-- Sponsor contract renewals
CREATE TABLE sponsor_contract_renewals
(
    renewalId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER,
    contractId INTEGER,
    renewalDate DATE,
    newEndDate DATE,
    renewalTermMonths INTEGER,
    financialAdjustment REAL,
    escalationClause TEXT,
    performanceMetrics TEXT,
    renewalStatus TEXT,
    notes TEXT,
    approvedBy TEXT,
    approvalDate DATE,
    renewalType TEXT,
    discountPercent REAL,
    addedBenefits TEXT,
    terminationClause TEXT,
    renewalVersion INTEGER,
    complianceCheck INTEGER,
    complianceNotes TEXT
);

INSERT INTO sponsor_contract_renewals (sponsorId, contractId, renewalDate, newEndDate, renewalTermMonths, financialAdjustment, escalationClause, performanceMetrics, renewalStatus, notes, approvedBy, approvalDate, renewalType, discountPercent, addedBenefits, terminationClause, renewalVersion, complianceCheck, complianceNotes)
VALUES (301, 5001, '2025-01-15', '2027-01-14', 24, 150000.00, '10% per annum', 'Brand exposure >= 80%', 'Pending', 'Awaiting legal sign-off', 'Laura Reed', '2025-01-10', 'Automatic', 5.0, 'Hospitality lounge access', '30 day notice', 2, 1, 'All metrics met');

INSERT INTO sponsor_contract_renewals (sponsorId, contractId, renewalDate, newEndDate, renewalTermMonths, financialAdjustment, escalationClause, performanceMetrics, renewalStatus, notes, approvedBy, approvalDate, renewalType, discountPercent, addedBenefits, terminationClause, renewalVersion, complianceCheck, complianceNotes)
VALUES (302, 5002, '2025-02-01', '2026-01-31', 12, 90000.00, '5% per annum', 'Social media mentions >= 1000', 'Approved', 'Renewal approved', 'Mark Silva', '2025-01-28', 'Negotiated', 3.0, 'VIP pit access', '60 day notice', 1, 1, 'Metrics verified');

INSERT INTO sponsor_contract_renewals (sponsorId, contractId, renewalDate, newEndDate, renewalTermMonths, financialAdjustment, escalationClause, performanceMetrics, renewalStatus, notes, approvedBy, approvalDate, renewalType, discountPercent, addedBenefits, terminationClause, renewalVersion, complianceCheck, complianceNotes)
VALUES (303, 5003, '2025-03-10', '2028-03-09', 36, 250000.00, '12% per annum', 'Onsite branding >= 5 locations', 'Rejected', 'Budget constraints', 'Sofia Ng', '2025-03-05', 'Optional', 0.0, 'None', '90 day notice', 0, 0, 'Not compliant with budget');

-- Fan survey responses
CREATE TABLE fan_survey_responses
(
    responseId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER,
    raceId INTEGER,
    surveyDate DATE,
    overallSatisfaction INTEGER,
    trackFacilityScore INTEGER,
    entertainmentScore INTEGER,
    foodQualityScore INTEGER,
    staffFriendlinessScore INTEGER,
    likelihoodToReturn INTEGER,
    netPromoterScore INTEGER,
    comments TEXT,
    preferredSeating TEXT,
    ticketPriceRating INTEGER,
    merchandiseInterestScore INTEGER,
    travelConvenienceScore INTEGER,
    accommodationScore INTEGER,
    weatherImpactScore INTEGER,
    transportAccessibilityScore INTEGER,
    surveyChannel TEXT,
    completed INTEGER
);

INSERT INTO fan_survey_responses (fanId, raceId, surveyDate, overallSatisfaction, trackFacilityScore, entertainmentScore, foodQualityScore, staffFriendlinessScore, likelihoodToReturn, netPromoterScore, comments, preferredSeating, ticketPriceRating, merchandiseInterestScore, travelConvenienceScore, accommodationScore, weatherImpactScore, transportAccessibilityScore, surveyChannel, completed)
VALUES (1001, 101, '2025-03-01', 9, 8, 9, 7, 9, 10, 70, 'Great atmosphere and racing', 'Grandstand', 8, 8, 9, 7, 6, 8, 'Email', 1);

INSERT INTO fan_survey_responses (fanId, raceId, surveyDate, overallSatisfaction, trackFacilityScore, entertainmentScore, foodQualityScore, staffFriendlinessScore, likelihoodToReturn, netPromoterScore, comments, preferredSeating, ticketPriceRating, merchandiseInterestScore, travelConvenienceScore, accommodationScore, weatherImpactScore, transportAccessibilityScore, surveyChannel, completed)
VALUES (1002, 102, '2025-03-03', 7, 6, 7, 5, 6, 7, 50, 'Food options could be better', 'General Admission', 6, 5, 6, 5, 5, 7, 'SMS', 1);

INSERT INTO fan_survey_responses (fanId, raceId, surveyDate, overallSatisfaction, trackFacilityScore, entertainmentScore, foodQualityScore, staffFriendlinessScore, likelihoodToReturn, netPromoterScore, comments, preferredSeating, ticketPriceRating, merchandiseInterestScore, travelConvenienceScore, accommodationScore, weatherImpactScore, transportAccessibilityScore, surveyChannel, completed)
VALUES (1003, 103, '2025-03-05', 8, 7, 8, 8, 8, 9, 65, 'Excellent staff and easy transport', 'VIP Lounge', 9, 9, 8, 9, 8, 9, 'App', 1);

-- Media interview schedule
CREATE TABLE media_interview_schedule
(
    scheduleId INTEGER PRIMARY KEY AUTOINCREMENT,
    mediaOutlet TEXT,
    interviewDate DATE,
    interviewTime TEXT,
    location TEXT,
    interviewer TEXT,
    interviewee TEXT,
    topic TEXT,
    durationMinutes INTEGER,
    status TEXT,
    contactPhone TEXT,
    contactEmail TEXT,
    equipmentNeeded TEXT,
    notes TEXT,
    broadcastFlag INTEGER,
    audienceSizeEstimate INTEGER,
    language TEXT,
    recordingAvailable INTEGER,
    recordingLink TEXT,
    followUpRequired INTEGER,
    followUpDate DATE
);

INSERT INTO media_interview_schedule (mediaOutlet, interviewDate, interviewTime, location, interviewer, interviewee, topic, durationMinutes, status, contactPhone, contactEmail, equipmentNeeded, notes, broadcastFlag, audienceSizeEstimate, language, recordingAvailable, recordingLink, followUpRequired, followUpDate)
VALUES ('Motorsport Today', '2025-03-02', '10:00', 'Press Room A', 'James Lee', 'Carlos Diaz', 'Race Strategy', 30, 'Scheduled', '5551234', 'james.lee@mt.com', 'Camera,Mic', 'First interview of the weekend', 1, 5000, 'English', 0, '', 1, '2025-03-04');

INSERT INTO media_interview_schedule (mediaOutlet, interviewDate, interviewTime, location, interviewer, interviewee, topic, durationMinutes, status, contactPhone, contactEmail, equipmentNeeded, notes, broadcastFlag, audienceSizeEstimate, language, recordingAvailable, recordingLink, followUpRequired, followUpDate)
VALUES ('Fast Lane Weekly', '2025-03-03', '14:30', 'VIP Tent', 'Sofia Ng', 'Alice Smith', 'Team Updates', 45, 'Confirmed', '5555678', 's.ng@flw.com', 'Camera', 'Include background footage', 0, 0, 'English', 1, 'http://media.example.com/rec123', 0, NULL);

INSERT INTO media_interview_schedule (mediaOutlet, interviewDate, interviewTime, location, interviewer, interviewee, topic, durationMinutes, status, contactPhone, contactEmail, equipmentNeeded, notes, broadcastFlag, audienceSizeEstimate, language, recordingAvailable, recordingLink, followUpRequired, followUpDate)
VALUES ('Racing Pulse', '2025-03-04', '09:15', 'Garage 5', 'Mark Chen', 'Ethan Wang', 'Driver Fitness', 25, 'Pending', '5559012', 'mark.c@rp.com', 'Microphone', 'Need consent form', 1, 3000, 'English', 0, '', 1, '2025-03-06');

-- Race gear inventory
CREATE TABLE race_gear_inventory
(
    inventoryId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    gearType TEXT,
    gearId TEXT,
    description TEXT,
    manufacturer TEXT,
    size TEXT,
    quantity INTEGER,
    condition TEXT,
    lastInspectionDate DATE,
    nextInspectionDue DATE,
    assignedToTeam TEXT,
    assignedToDriver TEXT,
    storageLocation TEXT,
    weightKg REAL,
    costUSD REAL,
    supplier TEXT,
    warrantyExpiry DATE,
    acquisitionMethod TEXT,
    notes TEXT
);

INSERT INTO race_gear_inventory (raceId, gearType, gearId, description, manufacturer, size, quantity, condition, lastInspectionDate, nextInspectionDue, assignedToTeam, assignedToDriver, storageLocation, weightKg, costUSD, supplier, warrantyExpiry, acquisitionMethod, notes)
VALUES (101, 'Helmet', 'HL-001', 'Carbon fiber racing helmet', 'SafeRide', 'M', 2, 'New', '2025-02-20', '2026-02-20', 'Team Alpha', 'Carlos Diaz', 'Warehouse A', 1.3, 1200.00, 'GearHub', '2028-02-20', 'Purchase', 'Used in practice sessions');

INSERT INTO race_gear_inventory (raceId, gearType, gearId, description, manufacturer, size, quantity, condition, lastInspectionDate, nextInspectionDue, assignedToTeam, assignedToDriver, storageLocation, weightKg, costUSD, supplier, warrantyExpiry, acquisitionMethod, notes)
VALUES (102, 'Fireproof Suit', 'FS-045', 'Nomex full suit', 'HeatShield', 'L', 1, 'Good', '2025-03-01', '2026-03-01', 'Team Beta', 'Ethan Wang', 'Warehouse B', 3.5, 3500.00, 'SafetyGearCo', '2027-03-01', 'Lease', 'Leased for 2 seasons');

INSERT INTO race_gear_inventory (raceId, gearType, gearId, description, manufacturer, size, quantity, condition, lastInspectionDate, nextInspectionDue, assignedToTeam, assignedToDriver, storageLocation, weightKg, costUSD, supplier, warrantyExpiry, acquisitionMethod, notes)
VALUES (103, 'Steering Wheel', 'SW-210', 'Carbon steering wheel with paddle shifters', 'DriveTech', 'Standard', 1, 'Excellent', '2025-02-28', '2027-02-28', 'Team Gamma', 'Alice Smith', 'Garage 3', 2.2, 8000.00, 'AutoParts Ltd', '2030-02-28', 'Purchase', 'Custom brand for driver');

-- Logistics shipping containers
CREATE TABLE logistics_shipping_containers
(
    containerId INTEGER PRIMARY KEY AUTOINCREMENT,
    shipmentId INTEGER,
    containerNumber TEXT,
    sizeStandard TEXT,
    weightKg REAL,
    contentsDescription TEXT,
    originPort TEXT,
    destinationPort TEXT,
    departureDate DATE,
    arrivalDate DATE,
    carrierName TEXT,
    trackingNumber TEXT,
    sealNumber TEXT,
    customsCleared INTEGER,
    clearanceDate DATE,
    inspectionStatus TEXT,
    temperatureControlled INTEGER,
    humidityControlled INTEGER,
    responsibleParty TEXT,
    notes TEXT
);

INSERT INTO logistics_shipping_containers (shipmentId, containerNumber, sizeStandard, weightKg, contentsDescription, originPort, destinationPort, departureDate, arrivalDate, carrierName, trackingNumber, sealNumber, customsCleared, clearanceDate, inspectionStatus, temperatureControlled, humidityControlled, responsibleParty, notes)
VALUES (2001, 'CONT-001', '40FT', 15000.0, 'Tyre inventory and spare parts', 'Rotterdam', 'Singapore', '2025-02-10', '2025-02-25', 'SeaTrans', 'TRK123456', 'SL9876', 1, '2025-02-26', 'Passed', 0, 0, 'Logistics Dept', 'No issues');

INSERT INTO logistics_shipping_containers (shipmentId, containerNumber, sizeStandard, weightKg, contentsDescription, originPort, destinationPort, departureDate, arrivalDate, carrierName, trackingNumber, sealNumber, customsCleared, clearanceDate, inspectionStatus, temperatureControlled, humidityControlled, responsibleParty, notes)
VALUES (2002, 'CONT-002', '20FT', 8000.0, 'Engine components', 'Hamburg', 'Los Angeles', '2025-02-15', '2025-03-02', 'Oceanic', 'TRK654321', 'SL1234', 1, '2025-03-03', 'Passed', 1, 1, 'Engineering Supplies', 'Temperature kept at 15C');

INSERT INTO logistics_shipping_containers (shipmentId, containerNumber, sizeStandard, weightKg, contentsDescription, originPort, destinationPort, departureDate, arrivalDate, carrierName, trackingNumber, sealNumber, customsCleared, clearanceDate, inspectionStatus, temperatureControlled, humidityControlled, responsibleParty, notes)
VALUES (2003, 'CONT-003', '45FT', 20000.0, 'Hospitality furniture and décor', 'Antwerp', 'Dubai', '2025-02-20', '2025-03-05', 'GlobalFreight', 'TRK789012', 'SL5678', 0, NULL, 'Pending', 0, 0, 'Hospitality Team', 'Awaiting customs clearance');

-- Environmental noise readings
CREATE TABLE environmental_noise_readings
(
    noiseId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    measurementDate DATE,
    location TEXT,
    decibelLevel REAL,
    frequencyHz REAL,
    durationSeconds INTEGER,
    measurementDevice TEXT,
    operator TEXT,
    calibrated INTEGER,
    calibrationDate DATE,
    weatherCondition TEXT,
    temperature REAL,
    humidity REAL,
    windSpeed REAL,
    comments TEXT,
    complianceStatus TEXT,
    complianceCheckDate DATE,
    complianceOfficer TEXT,
    notes TEXT
);

INSERT INTO environmental_noise_readings (circuitId, measurementDate, location, decibelLevel, frequencyHz, durationSeconds, measurementDevice, operator, calibrated, calibrationDate, weatherCondition, temperature, humidity, windSpeed, comments, complianceStatus, complianceCheckDate, complianceOfficer, notes)
VALUES (10, '2025-03-01', 'Grandstand West', 78.5, 1000.0, 3600, 'NoiseMeter-X', 'Helen Zhao', 1, '2025-02-28', 'Clear', 22.0, 45.0, 5.0, 'Within limits', 'Compliant', '2025-03-02', 'Ian Lopez', '');

INSERT INTO environmental_noise_readings (circuitId, measurementDate, location, decibelLevel, frequencyHz, durationSeconds, measurementDevice, operator, calibrated, calibrationDate, weatherCondition, temperature, humidity, windSpeed, comments, complianceStatus, complianceCheckDate, complianceOfficer, notes)
VALUES (11, '2025-03-02', 'Pit Lane', 85.2, 1200.0, 5400, 'NoiseMeter-Y', 'Mark Chen', 1, '2025-02-27', 'Overcast', 20.0, 55.0, 6.5, 'Slightly above threshold', 'Non‑Compliant', '2025-03-03', 'Laura Miller', 'Require mitigation');

INSERT INTO environmental_noise_readings (circuitId, measurementDate, location, decibelLevel, frequencyHz, durationSeconds, measurementDevice, operator, calibrated, calibrationDate, weatherCondition, temperature, humidity, windSpeed, comments, complianceStatus, complianceCheckDate, complianceOfficer, notes)
VALUES (12, '2025-03-03', 'Paddock Area', 72.0, 950.0, 7200, 'NoiseMeter-Z', 'Sofia Ng', 1, '2025-02-25', 'Sunny', 25.0, 40.0, 4.0, 'All good', 'Compliant', '2025-03-04', 'George Kim', '');

-- Driver license verifications
CREATE TABLE driver_license_verifications
(
    verificationId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    licenseNumber TEXT,
    issuingCountry TEXT,
    issueDate DATE,
    expiryDate DATE,
    verificationDate DATE,
    verifiedBy TEXT,
    verificationStatus TEXT,
    notes TEXT,
    documentScanPath TEXT,
    complianceFlag INTEGER,
    complianceNotes TEXT,
    renewalReminderDate DATE,
    renewalStatus TEXT,
    penaltyPoints INTEGER,
    suspensionStatus TEXT,
    lastViolationDate DATE,
    lastViolationType TEXT,
    authorizedVehicleClass TEXT,
    authorizedVehicleCategory TEXT
);

INSERT INTO driver_license_verifications (driverId, licenseNumber, issuingCountry, issueDate, expiryDate, verificationDate, verifiedBy, verificationStatus, notes, documentScanPath, complianceFlag, complianceNotes, renewalReminderDate, renewalStatus, penaltyPoints, suspensionStatus, lastViolationDate, lastViolationType, authorizedVehicleClass, authorizedVehicleCategory)
VALUES (101, 'DL-987654', 'GBR', '2015-06-15', '2025-06-14', '2025-03-01', 'ComplianceTeam', 'Valid', 'No issues', '/scans/dl_101.png', 1, '', '2025-05-01', 'Pending', 0, 'None', NULL, NULL, 'A', 'Car');

INSERT INTO driver_license_verifications (driverId, licenseNumber, issuingCountry, issueDate, expiryDate, verificationDate, verifiedBy, verificationStatus, notes, documentScanPath, complianceFlag, complianceNotes, renewalReminderDate, renewalStatus, penaltyPoints, suspensionStatus, lastViolationDate, lastViolationType, authorizedVehicleClass, authorizedVehicleCategory)
VALUES (102, 'DL-123456', 'ITA', '2017-04-20', '2027-04-19', '2025-03-02', 'ComplianceTeam', 'Valid', 'One minor penalty recorded', '/scans/dl_102.png', 1, 'Penalty point noted', '2027-04-01', 'Pending', 1, 'None', '2024-11-10', 'Speeding', 'B', 'Car');

INSERT INTO driver_license_verifications (driverId, licenseNumber, issuingCountry, issueDate, expiryDate, verificationDate, verifiedBy, verificationStatus, notes, documentScanPath, complianceFlag, complianceNotes, renewalReminderDate, renewalStatus, penaltyPoints, suspensionStatus, lastViolationDate, lastViolationType, authorizedVehicleClass, authorizedVehicleCategory)
VALUES (103, 'DL-555777', 'ESP', '2012-09-05', '2022-09-04', '2025-03-03', 'ComplianceTeam', 'Expired', 'License expired, renewal pending', '/scans/dl_103.png', 0, 'Requires renewal', '2025-08-01', 'Pending', 2, 'Suspended', '2025-01-15', 'DUI', 'C', 'Motorcycle');