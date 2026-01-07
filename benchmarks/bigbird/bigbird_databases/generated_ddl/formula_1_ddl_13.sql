-- Venue accommodation rooms details
CREATE TABLE venue_accommodation_rooms (
    accommodationId INTEGER PRIMARY KEY AUTOINCREMENT,
    venueId INTEGER,
    roomNumber TEXT,
    floor INTEGER,
    capacity INTEGER,
    roomType TEXT,
    amenities TEXT,
    viewDescription TEXT,
    squareMeters REAL,
    pricePerNight REAL,
    availableFrom DATE,
    availableTo DATE,
    cleaningStatus TEXT,
    lastRenovated DATE,
    wifiSpeedMbps INTEGER,
    airConditioning INTEGER,
    handicapAccessible INTEGER,
    minibarStockLevel INTEGER,
    maxOccupancy INTEGER,
    bookingReference TEXT
);

INSERT INTO venue_accommodation_rooms (venueId, roomNumber, floor, capacity, roomType, amenities, viewDescription, squareMeters, pricePerNight, availableFrom, availableTo, cleaningStatus, lastRenovated, wifiSpeedMbps, airConditioning, handicapAccessible, minibarStockLevel, maxOccupancy, bookingReference) VALUES (1, 'A101', 1, 2, 'Deluxe', 'TV,MiniBar,Safe', 'City View', 35.5, 150.00, '2025-01-01', '2025-12-31', 'Clean', '2023-06-15', 100, 1, 1, 10, 2, 'BR2025A1');
INSERT INTO venue_accommodation_rooms (venueId, roomNumber, floor, capacity, roomType, amenities, viewDescription, squareMeters, pricePerNight, availableFrom, availableTo, cleaningStatus, lastRenovated, wifiSpeedMbps, airConditioning, handicapAccessible, minibarStockLevel, maxOccupancy, bookingReference) VALUES (2, 'B202', 2, 4, 'Suite', 'TV,MiniBar,Jacuzzi', 'Lake View', 58.2, 300.00, '2025-02-15', '2025-11-30', 'Pending', '2022-09-10', 200, 1, 0, 5, 4, 'BR2025B2');
INSERT INTO venue_accommodation_rooms (venueId, roomNumber, floor, capacity, roomType, amenities, viewDescription, squareMeters, pricePerNight, availableFrom, availableTo, cleaningStatus, lastRenovated, wifiSpeedMbps, airConditioning, handicapAccessible, minibarStockLevel, maxOccupancy, bookingReference) VALUES (3, 'C303', 3, 1, 'Standard', 'TV,Safe', 'Garden View', 22.0, 80.00, '2025-03-01', '2025-09-15', 'Clean', '2021-12-05', 50, 1, 1, 2, 1, 'BR2025C3');

-- Fuel supply transaction records
CREATE TABLE fuel_supply_transactions (
    transactionId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    supplierId INTEGER,
    fuelType TEXT,
    volumeLiters REAL,
    pricePerLiter REAL,
    totalCost REAL,
    deliveryDate DATE,
    deliveryTime TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    pressureKPa REAL,
    pumpOperator TEXT,
    fuelQualityGrade TEXT,
    tankNumber INTEGER,
    invoiceNumber TEXT,
    paymentStatus TEXT,
    verifiedBy TEXT,
    notes TEXT,
    carbonFootprintKg REAL,
    deliveryMethod TEXT
);

INSERT INTO fuel_supply_transactions (raceId, supplierId, fuelType, volumeLiters, pricePerLiter, totalCost, deliveryDate, deliveryTime, temperatureC, humidityPercent, pressureKPa, pumpOperator, fuelQualityGrade, tankNumber, invoiceNumber, paymentStatus, verifiedBy, notes, carbonFootprintKg, deliveryMethod) VALUES (101, 12, 'E10', 5000.0, 1.45, 7250.0, '2025-04-10', '08:30', 22.5, 55.0, 101.3, 'JohnDoe', 'A+', 3, 'INV1001', 'Paid', 'AliceSmith', 'No issues', 1200.5, 'Truck');
INSERT INTO fuel_supply_transactions (raceId, supplierId, fuelType, volumeLiters, pricePerLiter, totalCost, deliveryDate, deliveryTime, temperatureC, humidityPercent, pressureKPa, pumpOperator, fuelQualityGrade, tankNumber, invoiceNumber, paymentStatus, verifiedBy, notes, carbonFootprintKg, deliveryMethod) VALUES (102, 15, 'E85', 3000.0, 1.30, 3900.0, '2025-05-05', '09:15', 18.0, 60.0, 100.8, 'MikeLee', 'B', 1, 'INV1002', 'Pending', 'BobJones', 'Delayed due to traffic', 800.0, 'Rail');
INSERT INTO fuel_supply_transactions (raceId, supplierId, fuelType, volumeLiters, pricePerLiter, totalCost, deliveryDate, deliveryTime, temperatureC, humidityPercent, pressureKPa, pumpOperator, fuelQualityGrade, tankNumber, invoiceNumber, paymentStatus, verifiedBy, notes, carbonFootprintKg, deliveryMethod) VALUES (103, 9, 'Diesel', 4500.0, 1.55, 6975.0, '2025-06-12', '07:45', 20.0, 50.0, 102.0, 'SaraKim', 'A', 2, 'INV1003', 'Paid', 'CarolWhite', 'All metrics normal', 1100.0, 'Truck');

-- Circuit noise event logs
CREATE TABLE circuit_noise_events (
    eventId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    eventDate DATE,
    startTime TEXT,
    endTime TEXT,
    avgDecibel REAL,
    maxDecibel REAL,
    source TEXT,
    affectedArea TEXT,
    mitigationActions TEXT,
    recordedBy TEXT,
    sensorId INTEGER,
    weatherCondition TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    windSpeedKph REAL,
    comments TEXT,
    complianceStatus TEXT,
    noiseZone TEXT,
    regulatoryReference TEXT,
    incidentReportId INTEGER
);

INSERT INTO circuit_noise_events (circuitId, eventDate, startTime, endTime, avgDecibel, maxDecibel, source, affectedArea, mitigationActions, recordedBy, sensorId, weatherCondition, temperatureC, humidityPercent, windSpeedKph, comments, complianceStatus, noiseZone, regulatoryReference, incidentReportId) VALUES (21, '2025-07-01', '10:00', '10:30', 85.5, 102.3, 'Engines', 'North Stand', 'Barrier Installation', 'EmmaBrown', 5, 'Clear', 24.0, 40.0, 12.0, 'No complaints', 'Compliant', 'ZoneA', 'Reg2023-07', 301);
INSERT INTO circuit_noise_events (circuitId, eventDate, startTime, endTime, avgDecibel, maxDecibel, source, affectedArea, mitigationActions, recordedBy, sensorId, weatherCondition, temperatureC, humidityPercent, windSpeedKph, comments, complianceStatus, noiseZone, regulatoryReference, incidentReportId) VALUES (22, '2025-08-15', '14:15', '14:45', 78.0, 95.0, 'Crowd', 'South Pit', 'Sound Dampeners', 'LiamGreen', 7, 'Cloudy', 19.5, 58.0, 8.5, 'Minor disturbance', 'Compliant', 'ZoneB', 'Reg2024-03', 302);
INSERT INTO circuit_noise_events (circuitId, eventDate, startTime, endTime, avgDecibel, maxDecibel, source, affectedArea, mitigationActions, recordedBy, sensorId, weatherCondition, temperatureC, humidityPercent, windSpeedKph, comments, complianceStatus, noiseZone, regulatoryReference, incidentReportId) VALUES (23, '2025-09-20', '09:30', '10:05', 92.2, 108.0, 'JetTurbine', 'East Turn', 'Temporary Barriers', 'OliviaGray', 9, 'Windy', 22.0, 45.0, 20.0, 'Exceeded limit briefly', 'NonCompliant', 'ZoneC', 'Reg2022-11', 303);

-- Media content metadata
CREATE TABLE media_content_metadata (
    assetId INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    description TEXT,
    mediaType TEXT,
    format TEXT,
    durationSeconds INTEGER,
    resolution TEXT,
    aspectRatio TEXT,
    codec TEXT,
    fileSizeBytes INTEGER,
    createdDate DATE,
    uploadedDate DATE,
    uploaderId INTEGER,
    rightsHolder TEXT,
    licenseType TEXT,
    usageRestrictions TEXT,
    tags TEXT,
    language TEXT,
    region TEXT,
    accessLevel TEXT
);

INSERT INTO media_content_metadata (title, description, mediaType, format, durationSeconds, resolution, aspectRatio, codec, fileSizeBytes, createdDate, uploadedDate, uploaderId, rightsHolder, licenseType, usageRestrictions, tags, language, region, accessLevel) VALUES ('GrandPrix Highlights', 'Highlights of the race', 'Video', 'MP4', 300, '1920x1080', '16:9', 'H264', 500000000, '2025-04-01', '2025-04-02', 101, 'FIA', 'Standard', 'NoRedistribution', 'Race,Highlights', 'English', 'Global', 'Public');
INSERT INTO media_content_metadata (title, description, mediaType, format, durationSeconds, resolution, aspectRatio, codec, fileSizeBytes, createdDate, uploadedDate, uploaderId, rightsHolder, licenseType, usageRestrictions, tags, language, region, accessLevel) VALUES ('Circuit Tour', 'Virtual tour of the circuit', 'Video', 'MOV', 600, '3840x2160', '16:9', 'HEVC', 1200000000, '2025-05-10', '2025-05-11', 102, 'CircuitOwner', 'Restricted', 'InternalUseOnly', 'Circuit,Tour', 'English', 'Europe', 'Restricted');
INSERT INTO media_content_metadata (title, description, mediaType, format, durationSeconds, resolution, aspectRatio, codec, fileSizeBytes, createdDate, uploadedDate, uploaderId, rightsHolder, licenseType, usageRestrictions, tags, language, region, accessLevel) VALUES ('Driver Interview', 'Post race interview with driver', 'Audio', 'MP3', 180, NULL, NULL, 'MP3', 5000000, '2025-06-20', '2025-06-21', 103, 'TeamA', 'Standard', 'NoCommercialUse', 'Interview,Driver', 'English', 'Global', 'Public');

-- Vendor performance reviews
CREATE TABLE vendor_performance_reviews (
    reviewId INTEGER PRIMARY KEY AUTOINCREMENT,
    vendorId INTEGER,
    periodStart DATE,
    periodEnd DATE,
    scoreOverall REAL,
    scoreDelivery REAL,
    scoreQuality REAL,
    scoreCompliance REAL,
    incidentsCount INTEGER,
    contractsRenewed INTEGER,
    comments TEXT,
    reviewerId INTEGER,
    reviewDate DATE,
    ratingCategory TEXT,
    correctiveActions TEXT,
    followUpDate DATE,
    auditorName TEXT,
    auditScore REAL,
    penaltyAmount REAL,
    bonusAmount REAL,
    status TEXT,
    improvementPlan TEXT
);

INSERT INTO vendor_performance_reviews (vendorId, periodStart, periodEnd, scoreOverall, scoreDelivery, scoreQuality, scoreCompliance, incidentsCount, contractsRenewed, comments, reviewerId, reviewDate, ratingCategory, correctiveActions, followUpDate, auditorName, auditScore, penaltyAmount, bonusAmount, status, improvementPlan) VALUES (201, '2025-01-01', '2025-12-31', 4.5, 4.7, 4.6, 4.8, 1, 2, 'Excellent overall performance', 301, '2025-02-15', 'A', 'Update delivery tracking', '2025-03-01', 'NinaClark', 95.0, 0.0, 5000.0, 'Closed', 'Maintain current standards');
INSERT INTO vendor_performance_reviews (vendorId, periodStart, periodEnd, scoreOverall, scoreDelivery, scoreQuality, scoreCompliance, incidentsCount, contractsRenewed, comments, reviewerId, reviewDate, ratingCategory, correctiveActions, followUpDate, auditorName, auditScore, penaltyAmount, bonusAmount, status, improvementPlan) VALUES (202, '2025-01-01', '2025-12-31', 3.8, 3.5, 4.0, 3.9, 3, 1, 'Delivery delays noted', 302, '2025-04-10', 'B', 'Implement new scheduling system', '2025-05-01', 'OmarLee', 80.0, 1500.0, 2000.0, 'Open', 'Reduce lead times');
INSERT INTO vendor_performance_reviews (vendorId, periodStart, periodEnd, scoreOverall, scoreDelivery, scoreQuality, scoreCompliance, incidentsCount, contractsRenewed, comments, reviewerId, reviewDate, ratingCategory, correctiveActions, followUpDate, auditorName, auditScore, penaltyAmount, bonusAmount, status, improvementPlan) VALUES (203, '2025-01-01', '2025-12-31', 4.2, 4.1, 4.3, 4.0, 0, 3, 'Consistent high quality', 303, '2025-06-20', 'A', 'Continue current processes', '2025-07-15', 'PriyaShah', 92.0, 0.0, 4000.0, 'Closed', 'Expand service scope');

-- Hospitality service requests log
CREATE TABLE hospitality_service_requests_log (
    requestId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER,
    roomId INTEGER,
    requestType TEXT,
    priority INTEGER,
    requestedBy TEXT,
    requestDate DATE,
    requestTime TEXT,
    status TEXT,
    assignedTo TEXT,
    completionDate DATE,
    completionTime TEXT,
    notes TEXT,
    cost REAL,
    approvalCode TEXT,
    serviceCategory TEXT,
    satisfactionScore INTEGER,
    followUpNeeded INTEGER,
    followUpDate DATE,
    escalationLevel INTEGER,
    resolutionDetails TEXT
);

INSERT INTO hospitality_service_requests_log (eventId, roomId, requestType, priority, requestedBy, requestDate, requestTime, status, assignedTo, completionDate, completionTime, notes, cost, approvalCode, serviceCategory, satisfactionScore, followUpNeeded, followUpDate, escalationLevel, resolutionDetails) VALUES (401, 12, 'Catering', 1, 'JohnSmith', '2025-07-10', '09:00', 'Completed', 'ChefAnna', '2025-07-10', '12:30', 'Vegan menu required', 1200.00, 'APV001', 'Food', 9, 0, NULL, 0, 'Served on time, guest satisfied');
INSERT INTO hospitality_service_requests_log (eventId, roomId, requestType, priority, requestedBy, requestDate, requestTime, status, assignedTo, completionDate, completionTime, notes, cost, approvalCode, serviceCategory, satisfactionScore, followUpNeeded, followUpDate, escalationLevel, resolutionDetails) VALUES (402, 15, 'TechnicalSupport', 2, 'EmilyDoe', '2025-07-12', '14:15', 'InProgress', 'TechMike', NULL, NULL, 'Projector malfunction', 300.00, 'APV002', 'AV', 0, 1, '2025-07-20', 1, 'Spare projector ordered');
INSERT INTO hospitality_service_requests_log (eventId, roomId, requestType, priority, requestedBy, requestDate, requestTime, status, assignedTo, completionDate, completionTime, notes, cost, approvalCode, serviceCategory, satisfactionScore, followUpNeeded, followUpDate, escalationLevel, resolutionDetails) VALUES (403, 20, 'Cleaning', 3, 'LauraKim', '2025-07-15', '08:00', 'Pending', NULL, NULL, NULL, 'Room preparation for VIP', 150.00, 'APV003', 'Housekeeping', 0, 0, NULL, 0, NULL);

-- Track surface friction tests
CREATE TABLE track_surface_friction_tests (
    testId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER,
    testDate DATE,
    testTime TEXT,
    section TEXT,
    temperatureC REAL,
    humidityPercent REAL,
    tyreCompound TEXT,
    measuredFriction REAL,
    maxFriction REAL,
    minFriction REAL,
    equipmentId INTEGER,
    operatorName TEXT,
    notes TEXT,
    calibrationFactor REAL,
    ambientPressureKPa REAL,
    windSpeedKph REAL,
    testDurationSeconds INTEGER,
    approvalStatus TEXT,
    reportUrl TEXT,
    anomalyDetected INTEGER
);

INSERT INTO track_surface_friction_tests (circuitId, testDate, testTime, section, temperatureC, humidityPercent, tyreCompound, measuredFriction, maxFriction, minFriction, equipmentId, operatorName, notes, calibrationFactor, ambientPressureKPa, windSpeedKph, testDurationSeconds, approvalStatus, reportUrl, anomalyDetected) VALUES (31, '2025-08-01', '10:45', 'Turn1', 25.0, 45.0, 'Soft', 1.25, 1.35, 1.15, 8, 'SamLee', 'Stable conditions', 0.98, 101.5, 5.0, 600, 'Approved', 'http://reports/track_friction_001.pdf', 0);
INSERT INTO track_surface_friction_tests (circuitId, testDate, testTime, section, temperatureC, humidityPercent, tyreCompound, measuredFriction, maxFriction, minFriction, equipmentId, operatorName, notes, calibrationFactor, ambientPressureKPa, windSpeedKph, testDurationSeconds, approvalStatus, reportUrl, anomalyDetected) VALUES (32, '2025-09-12', '13:20', 'StraightA', 28.5, 50.0, 'Medium', 1.30, 1.42, 1.18, 9, 'NinaGreen', 'Slight oil residue', 0.97, 100.8, 3.2, 450, 'Pending', 'http://reports/track_friction_002.pdf', 1);
INSERT INTO track_surface_friction_tests (circuitId, testDate, testTime, section, temperatureC, humidityPercent, tyreCompound, measuredFriction, maxFriction, minFriction, equipmentId, operatorName, notes, calibrationFactor, ambientPressureKPa, windSpeedKph, testDurationSeconds, approvalStatus, reportUrl, anomalyDetected) VALUES (33, '2025-10-05', '09:10', 'Chicane', 22.0, 40.0, 'Hard', 1.20, 1.28, 1.12, 10, 'RajPatel', 'Dry track', 0.99, 101.2, 4.5, 700, 'Approved', 'http://reports/track_friction_003.pdf', 0);

-- Driver psychological evaluations
CREATE TABLE driver_psychological_evaluations (
    evalId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER,
    evaluationDate DATE,
    evaluatorName TEXT,
    stressLevel INTEGER,
    anxietyScore INTEGER,
    depressionScore INTEGER,
    sleepQualityScore INTEGER,
    focusScore INTEGER,
    copingMechanisms TEXT,
    recommendation TEXT,
    followUpDate DATE,
    notes TEXT,
    confidentialityLevel TEXT,
    assessmentType TEXT,
    moodRating INTEGER,
    resilienceScore INTEGER,
    burnoutRisk INTEGER,
    interventionRequired INTEGER,
    approvedBy TEXT,
    status TEXT
);

INSERT INTO driver_psychological_evaluations (driverId, evaluationDate, evaluatorName, stressLevel, anxietyScore, depressionScore, sleepQualityScore, focusScore, copingMechanisms, recommendation, followUpDate, notes, confidentialityLevel, assessmentType, moodRating, resilienceScore, burnoutRisk, interventionRequired, approvedBy, status) VALUES (501, '2025-07-20', 'DrAlice', 3, 2, 1, 4, 5, 'Exercise,Mindfulness', 'Maintain current routine', '2025-08-20', 'Good overall mental health', 'High', 'Annual', 4, 5, 0, 0, 'TeamDirector', 'Completed');
INSERT INTO driver_psychological_evaluations (driverId, evaluationDate, evaluatorName, stressLevel, anxietyScore, depressionScore, sleepQualityScore, focusScore, copingMechanisms, recommendation, followUpDate, notes, confidentialityLevel, assessmentType, moodRating, resilienceScore, burnoutRisk, interventionRequired, approvedBy, status) VALUES (502, '2025-08-15', 'DrBob', 5, 4, 3, 2, 3, 'Therapy,RelaxationTechniques', 'Schedule weekly therapy', '2025-09-15', 'Elevated stress observed', 'Medium', 'MidSeason', 2, 3, 1, 1, 'TeamDirector', 'InProgress');
INSERT INTO driver_psychological_evaluations (driverId, evaluationDate, evaluatorName, stressLevel, anxietyScore, depressionScore, sleepQualityScore, focusScore, copingMechanisms, recommendation, followUpDate, notes, confidentialityLevel, assessmentType, moodRating, resilienceScore, burnoutRisk, interventionRequired, approvedBy, status) VALUES (503, '2025-09-05', 'DrCarol', 2, 1, 0, 5, 5, 'Yoga,PositiveVisualization', 'Continue current program', '2025-10-05', 'Excellent mental resilience', 'High', 'Annual', 5, 5, 0, 0, 'TeamDirector', 'Completed');

-- Officials certification history
CREATE TABLE officials_certification_history (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId INTEGER,
    certificationName TEXT,
    issueDate DATE,
    expiryDate DATE,
    issuingAuthority TEXT,
    certificationLevel TEXT,
    status TEXT,
    score REAL,
    trainingHours INTEGER,
    renewalReminderDate DATE,
    notes TEXT,
    documentUrl TEXT,
    verifiedBy TEXT,
    complianceFlag INTEGER,
    lastAuditDate DATE,
    auditResult TEXT,
    specializations TEXT,
    jurisdiction TEXT,
    recertificationRequired INTEGER,
    recertificationDate DATE
);

INSERT INTO officials_certification_history (officialId, certificationName, issueDate, expiryDate, issuingAuthority, certificationLevel, status, score, trainingHours, renewalReminderDate, notes, documentUrl, verifiedBy, complianceFlag, lastAuditDate, auditResult, specializations, jurisdiction, recertificationRequired, recertificationDate) VALUES (601, 'Race Steward', '2023-01-15', '2026-01-14', 'FIA', 'Level1', 'Active', 92.5, 40, '2025-12-01', 'No issues', 'http://certs/steward_601.pdf', 'AdminJohn', 1, '2024-06-10', 'Pass', 'Safety,Compliance', 'International', 1, '2025-12-31');
INSERT INTO officials_certification_history (officialId, certificationName, issueDate, expiryDate, issuingAuthority, certificationLevel, status, score, trainingHours, renewalReminderDate, notes, documentUrl, verifiedBy, complianceFlag, lastAuditDate, auditResult, specializations, jurisdiction, recertificationRequired, recertificationDate) VALUES (602, 'Technical Inspector', '2022-05-20', '2025-05-19', 'FIA', 'Level2', 'Active', 88.0, 35, '2024-11-01', 'Minor procedural note', 'http://certs/inspector_602.pdf', 'AdminLisa', 1, '2023-09-15', 'Pass', 'Technical,Regulations', 'Europe', 1, '2025-05-19');
INSERT INTO officials_certification_history (officialId, certificationName, issueDate, expiryDate, issuingAuthority, certificationLevel, status, score, trainingHours, renewalReminderDate, notes, documentUrl, verifiedBy, complianceFlag, lastAuditDate, auditResult, specializations, jurisdiction, recertificationRequired, recertificationDate) VALUES (603, 'Medical Official', '2021-03-10', '2024-03-09', 'FIA', 'Level1', 'Expired', 75.0, 20, '2023-12-01', 'Expired, needs renewal', 'http://certs/medical_603.pdf', 'AdminMike', 0, '2022-08-20', 'Fail', 'Medical,FirstAid', 'Asia', 1, '2024-03-09');

-- Championship award nominees
CREATE TABLE championship_award_nominees (
    nomineeId INTEGER PRIMARY KEY AUTOINCREMENT,
    awardName TEXT,
    year INTEGER,
    nomineeType TEXT,
    nomineeId INTEGER,
    nominationDate DATE,
    nominatedBy TEXT,
    justification TEXT,
    status TEXT,
    awardCategory TEXT,
    votingPeriodStart DATE,
    votingPeriodEnd DATE,
    votesReceived INTEGER,
    votesRequired INTEGER,
    winner INTEGER,
    ceremonyDate DATE,
    presenter TEXT,
    mediaCoverage TEXT,
    sponsor TEXT,
    prizeAmount REAL,
    remarks TEXT
);

INSERT INTO championship_award_nominees (awardName, year, nomineeType, nomineeId, nominationDate, nominatedBy, justification, status, awardCategory, votingPeriodStart, votingPeriodEnd, votesReceived, votesRequired, winner, ceremonyDate, presenter, mediaCoverage, sponsor, prizeAmount, remarks) VALUES ('Best Driver', 2025, 'Driver', 501, '2025-06-01', 'Committee', 'Consistent podium finishes', 'Pending', 'Performance', '2025-06-10', '2025-06-20', 120, 150, 0, '2025-07-01', 'HostJohn', 'LiveTV', 'SponsorA', 50000.0, '');
INSERT INTO championship_award_nominees (awardName, year, nomineeType, nomineeId, nominationDate, nominatedBy, justification, status, awardCategory, votingPeriodStart, votingPeriodEnd, votesReceived, votesRequired, winner, ceremonyDate, presenter, mediaCoverage, sponsor, prizeAmount, remarks) VALUES ('Best Team', 2025, 'Constructor', 201, '2025-06-05', 'Committee', 'Highest points total', 'Pending', 'Teamwork', '2025-06-12', '2025-06-22', 130, 150, 0, '2025-07-01', 'HostLaura', 'OnlineStream', 'SponsorB', 75000.0, '');
INSERT INTO championship_award_nominees (awardName, year, nomineeType, nomineeId, nominationDate, nominatedBy, justification, status, awardCategory, votingPeriodStart, votingPeriodEnd, votesReceived, votesRequired, winner, ceremonyDate, presenter, mediaCoverage, sponsor, prizeAmount, remarks) VALUES ('Rising Star', 2025, 'Driver', 504, '2025-06-10', 'Committee', 'Exceptional debut season', 'Pending', 'Emerging Talent', '2025-06-15', '2025-06-25', 95, 100, 0, '2025-07-01', 'HostMike', 'SocialMedia', 'SponsorC', 30000.0, '');

-- Race incident reports
CREATE TABLE race_incident_reports (
    incidentId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER,
    lap INTEGER,
    driverId INTEGER,
    incidentType TEXT,
    description TEXT,
    severity INTEGER,
    reportedBy TEXT,
    reportDate DATE,
    reportTime TEXT,
    actionsTaken TEXT,
    penaltyPoints INTEGER,
    penaltyTimeSeconds INTEGER,
    medicalAttentionRequired INTEGER,
    safetyCarDeployed INTEGER,
    videoReference TEXT,
    weatherCondition TEXT,
    trackCondition TEXT,
    followUpRequired INTEGER,
    followUpDate DATE,
    finalDisposition TEXT
);

INSERT INTO race_incident_reports (raceId, lap, driverId, incidentType, description, severity, reportedBy, reportDate, reportTime, actionsTaken, penaltyPoints, penaltyTimeSeconds, medicalAttentionRequired, safetyCarDeployed, videoReference, weatherCondition, trackCondition, followUpRequired, followUpDate, finalDisposition) VALUES (301, 12, 501, 'Collision', 'Contact with car 502 at Turn 3', 3, 'StewardMike', '2025-07-15', '14:20', 'Warning issued', 0, 0, 0, 1, 'VID001', 'Sunny', 'Dry', 0, NULL, 'Closed');
INSERT INTO race_incident_reports (raceId, lap, driverId, incidentType, description, severity, reportedBy, reportDate, reportTime, actionsTaken, penaltyPoints, penaltyTimeSeconds, medicalAttentionRequired, safetyCarDeployed, videoReference, weatherCondition, trackCondition, followUpRequired, followUpDate, finalDisposition) VALUES (302, 25, 503, 'MechanicalFailure', 'Engine failure in sector 2', 2, 'StewardAnna', '2025-08-20', '16:45', 'Retired from race', 0, 0, 0, 0, 'VID002', 'Cloudy', 'Wet', 0, NULL, 'Closed');
INSERT INTO race_incident_reports (raceId, lap, driverId, incidentType, description, severity, reportedBy, reportDate, reportTime, actionsTaken, penaltyPoints, penaltyTimeSeconds, medicalAttentionRequired, safetyCarDeployed, videoReference, weatherCondition, trackCondition, followUpRequired, followUpDate, finalDisposition) VALUES (303, 5, 504, 'OffTrack', 'Went off at start grid', 1, 'StewardJohn', '2025-09-10', '11:10', 'No penalty', 0, 0, 0, 0, 'VID003', 'Rain', 'Wet', 0, NULL, 'Closed');