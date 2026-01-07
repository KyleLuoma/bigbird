-- Circuit Climate Records
CREATE TABLE circuit_climate_records (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    observationDate DATE NOT NULL,
    maxTempC REAL,
    minTempC REAL,
    avgHumidityPct REAL,
    windSpeedKmh REAL,
    precipitationMm REAL,
    dewPointC REAL,
    pressureHpa REAL,
    visibilityKm REAL,
    cloudCoverPct REAL,
    uvIndex INTEGER,
    heatIndexC REAL,
    windGustKmh REAL,
    sunriseTime TEXT,
    sunsetTime TEXT,
    weatherCondition TEXT,
    sensorStationId INTEGER,
    measurementQuality TEXT,
    backgroundNoiseDb REAL,
    comments TEXT
);
INSERT INTO circuit_climate_records VALUES (1, 1, '2025-06-01', 34.5, 22.1, 55.3, 12.4, 0.0, 16.2, 1013.2, 10.0, 20.5, 5, 33.0, 18.0, '05:45:00', '20:15:00', Sunny, 101, High, 45.2, 'Clear day');
INSERT INTO circuit_climate_records VALUES (2, 2, '2025-06-02', 28.0, 18.5, 68.0, 15.0, 2.3, 14.0, 1008.5, 12.5, 75.0, 7, 30.0, 22.0, '06:00:00', '19:45:00', Cloudy, 102, Medium, 38.0, 'Light clouds');
INSERT INTO circuit_climate_records VALUES (3, 3, '2025-06-03', 31.2, 20.0, 60.0, 10.0, 0.5, 15.0, 1015.0, 14.0, 40.0, 6, 32.5, 16.0, '05:30:00', '20:30:00', PartlySunny, 103, High, 42.5, 'Mild wind');

-- Sponsor Activation Events Log
CREATE TABLE sponsor_activation_events_log (
    activationId INTEGER PRIMARY KEY AUTOINCREMENT,
    sponsorId INTEGER NOT NULL,
    eventId INTEGER NOT NULL,
    activationType TEXT,
    startDate DATE,
    endDate DATE,
    location TEXT,
    targetAudience TEXT,
    budgetUsd REAL,
    impressions INTEGER,
    clicks INTEGER,
    conversions INTEGER,
    costPerClickUsd REAL,
    costPerImpressionUsd REAL,
    roiPercent REAL,
    createdBy TEXT,
    approvedBy TEXT,
    notes TEXT,
    mediaChannel TEXT,
    creativeFormat TEXT,
    platform TEXT,
    campaignId TEXT
);
INSERT INTO sponsor_activation_events_log VALUES (1, 10, 1001, BrandDisplay, '2025-05-01', '2025-05-07', Monaco, Fans, 250000.0, 5000000, 12000, 20.8, 0.05, 150.0, JohnDoe, JaneSmith, 'High visibility banners', Social, Video, YouTube, CMP001);
INSERT INTO sponsor_activation_events_log VALUES (2, 12, 1002, ProductDemo, '2025-06-10', '2025-06-12', Silverstone, Media, 150000.0, 2000000, 8000, 18.75, 0.075, 130.0, AliceBrown, BobWhite, 'Interactive demo stations', OnSite, Interactive, Instagram, CMP002);
INSERT INTO sponsor_activation_events_log VALUES (3, 15, 1003, VirtualExperience, '2025-07-20', '2025-07-25', Spa, Global, 300000.0, 8000000, 20000, 15.0, 0.0375, 170.0, CarolGreen, DanBlack, 'AR based fan engagement', Digital, AR, TikTok, CMP003);

-- Driver Physiology Measurements
CREATE TABLE driver_physiology_measurements (
    measurementId INTEGER PRIMARY KEY AUTOINCREMENT,
    driverId INTEGER NOT NULL,
    assessmentDate DATE NOT NULL,
    weightKg REAL,
    heightCm REAL,
    bodyFatPct REAL,
    restingHrBpm INTEGER,
    vo2MaxMlKgMin REAL,
    legStrengthKg REAL,
    armStrengthKg REAL,
    flexibilityCm REAL,
    reactionTimeMs REAL,
    balanceScore REAL,
    sleepQualityScore REAL,
    hydrationLevelPct REAL,
    nutritionScore REAL,
    injuryStatus TEXT,
    mentalFocusScore REAL,
    stressLevel INTEGER,
    notes TEXT,
    assessmentLocation TEXT,
    assessorName TEXT
);
INSERT INTO driver_physiology_measurements VALUES (1, 101, '2025-04-15', 78.5, 182.0, 12.3, 58, 55.0, 180.0, 70.0, 22.5, 150.0, 85.0, 95.0, 88.0, None, 92.0, 2, 'All metrics within optimal range', TrainingCenter, DrSmith);
INSERT INTO driver_physiology_measurements VALUES (2, 102, '2025-04-16', 82.0, 177.0, 13.0, 60, 52.5, 175.0, 68.0, 21.0, 148.0, 80.0, 93.0, 85.0, MinorKneePain, 88.0, 3, 'Knee discomfort noted', TrainingCenter, DrJones);
INSERT INTO driver_physiology_measurements VALUES (3, 103, '2025-04-17', 75.0, 185.0, 11.5, 55, 57.0, 190.0, 72.0, 20.5, 152.0, 87.0, 96.0, 90.0, None, 95.0, 1, 'Excellent overall condition', TrainingCenter, DrLee);

-- Circuit Security Audit
CREATE TABLE circuit_security_audit (
    auditId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    auditDate DATE NOT NULL,
    auditorName TEXT,
    perimeterIntegrity TEXT,
    cameraCoveragePct REAL,
    intrusionDetectionStatus TEXT,
    accessControlStatus TEXT,
    emergencyExitSignage TEXT,
    lightingQuality TEXT,
    securityPersonnelCount INTEGER,
    reportedIncidents INTEGER,
    followUpActions TEXT,
    complianceScore REAL,
    notes TEXT,
    durationMinutes INTEGER,
    weatherConditions TEXT,
    equipmentStatus TEXT,
    trainingStatus TEXT,
    auditVersion TEXT,
    overallRating TEXT
);
INSERT INTO circuit_security_audit VALUES (1, 1, '2025-03-10', JohnAuditor, Full, 98.5, Active, Operational, Good, Excellent, 25, 0, None, 96.0, 'No issues detected', 180, Clear, Good, V1, Excellent);
INSERT INTO circuit_security_audit VALUES (2, 2, '2025-03-12', MaryAuditor, Partial, 85.0, Inactive, Operational, Fair, Good, 20, 2, UpgradeCameras, 78.0, 'Camera blind spots identified', 210, Overcast, Fair, NeedsImprovement, V1, Moderate);
INSERT INTO circuit_security_audit VALUES (3, 3, '2025-03-15', LuisAuditor, Full, 92.0, Active, Operational, Good, Good, 22, 1, StaffTraining, 88.0, 'One access breach reported', 190, Rain, Good, Completed, V2, Good);

-- Hospitality Service Requests
CREATE TABLE hospitality_service_requests (
    requestId INTEGER PRIMARY KEY AUTOINCREMENT,
    eventId INTEGER NOT NULL,
    roomNumber TEXT,
    guestName TEXT,
    requestType TEXT,
    requestDate DATE,
    requestTime TEXT,
    status TEXT,
    priority TEXT,
    assignedStaffId INTEGER,
    estimatedCompletionTime TEXT,
    actualCompletionTime TEXT,
    notes TEXT,
    costUsd REAL,
    vendorId INTEGER,
    approvalRequired TEXT,
    approvalStatus TEXT,
    followUpNeeded TEXT,
    satisfactionRating INTEGER,
    feedbackComments TEXT,
    requestSource TEXT
);
INSERT INTO hospitality_service_requests VALUES (1, 2001, 101, AliceJohnson, FoodDelivery, '2025-05-05', '12:30:00', Completed, High, 301, '12:45:00', '12:44:00', 'Vegetarian meal provided', 45.0, 501, Yes, Approved, No, 5, 'Excellent service', MobileApp);
INSERT INTO hospitality_service_requests VALUES (2, 2002, 102, BobSmith, Housekeeping, '2025-05-06', '09:00:00', InProgress, Medium, 302, '09:30:00', NULL, 'Room cleaning in progress', 0.0, 502, No, N/A, Yes, 4, 'Prompt response', WebPortal);
INSERT INTO hospitality_service_requests VALUES (3, 2003, 103, CarolLee, TechnicalSupport, '2025-05-07', '15:15:00', Pending, Low, 303, '15:45:00', NULL, 'AV equipment setup pending', 0.0, 503, Yes, Pending, Yes, 3, 'Delay due to equipment shortage', PhoneCall);

-- Race Media Content
CREATE TABLE race_media_content (
    mediaId INTEGER PRIMARY KEY AUTOINCREMENT,
    raceId INTEGER NOT NULL,
    contentType TEXT,
    fileName TEXT,
    fileExtension TEXT,
    fileSizeBytes INTEGER,
    resolution TEXT,
    durationSeconds INTEGER,
    uploaderId INTEGER,
    uploadDate DATE,
    description TEXT,
    tags TEXT,
    copyrightHolder TEXT,
    usageRights TEXT,
    isPublic TEXT,
    viewCount INTEGER,
    likeCount INTEGER,
    dislikeCount INTEGER,
    commentCount INTEGER,
    processingStatus TEXT,
    storageLocation TEXT,
    checksumSha256 TEXT
);
INSERT INTO race_media_content VALUES (1, 5001, Video, race_start, mp4, 250000000, 1920x1080, 120, 1001, '2025-04-01', 'Start of the race', start, F1Media, Licensed, Yes, 15000, 1200, 30, 250, Processed, /media/videos, ABCDEF123456);
INSERT INTO race_media_content VALUES (2, 5002, Image, podium, jpg, 5000000, 3840x2160, NULL, 1002, '2025-04-02', 'Podium celebration', podium, F1Media, Licensed, Yes, 30000, 2500, 10, 500, Processed, /media/images, 123456ABCDEF);
INSERT INTO race_media_content VALUES (3, 5003, Audio, interview_driver, mp3, 8000000, NULL, 180, 1003, '2025-04-03', 'Driver post‑race interview', interview, F1Media, Licensed, No, 8000, 400, 5, 100, Pending, /media/audio, DEF123ABC456);

-- Circuit Environmental Impact Assessment
CREATE TABLE circuit_environmental_impact_assessment (
    assessmentId INTEGER PRIMARY KEY AUTOINCREMENT,
    circuitId INTEGER NOT NULL,
    assessmentYear INTEGER,
    co2EmissionsTonnes REAL,
    noiseLevelDbAvg REAL,
    wasteGeneratedTonnes REAL,
    waterUsageCubicM REAL,
    energyConsumptionMwh REAL,
    wildlifeImpactScore REAL,
    vegetationLossPct REAL,
    soilContaminationLevel REAL,
    airQualityIndex INTEGER,
    mitigationMeasures TEXT,
    complianceStatus TEXT,
    reportUrl TEXT,
    auditorName TEXT,
    notes TEXT,
    certificationNumber TEXT,
    reviewDate DATE,
    nextReviewYear INTEGER,
    overallScore REAL
);
INSERT INTO circuit_environmental_impact_assessment VALUES (1, 1, 2024, 1200.5, 78.2, 45.0, 3000.0, 850.0, 4.5, 2.0, 1.2, 42, 'Tree planting, Noise barriers', Compliant, http://reports/c1/2024.pdf, EvaGreen, 'Improvement needed in waste recycling', CERT001, '2025-01-15', 2027, 85.0);
INSERT INTO circuit_environmental_impact_assessment VALUES (2, 2, 2024, 950.0, 70.5, 38.0, 2500.0, 720.0, 5.0, 1.5, 0.9, 38, 'Solar panels, Water reuse', Compliant, http://reports/c2/2024.pdf, MarkBlue, 'Excellent energy efficiency', CERT002, '2025-02-20', 2028, 90.5);
INSERT INTO circuit_environmental_impact_assessment VALUES (3, 3, 2024, 1100.0, 82.0, 42.0, 2800.0, 800.0, 3.8, 2.5, 1.0, 45, 'Noise barriers, Recycling program', Partial, http://reports/c3/2024.pdf, LisaRed, 'Noise level exceeds target', CERT003, '2025-03-10', 2029, 78.3);

-- Race Logistics Vehicle Usage
CREATE TABLE race_logistics_vehicle_usage (
    usageId INTEGER PRIMARY KEY AUTOINCREMENT,
    vehicleId INTEGER NOT NULL,
    raceId INTEGER NOT NULL,
    departureTime TEXT,
    arrivalTime TEXT,
    driverName TEXT,
    purpose TEXT,
    distanceKm REAL,
    fuelConsumedLiters REAL,
    maintenanceRequired TEXT,
    incidentsReported TEXT,
    cargoWeightKg REAL,
    cargoType TEXT,
    routeId INTEGER,
    gpsTrackingEnabled TEXT,
    gpsStartTimestamp TEXT,
    gpsEndTimestamp TEXT,
    odometerStart INTEGER,
    odometerEnd INTEGER,
    notes TEXT,
    costUsd REAL
);
INSERT INTO race_logistics_vehicle_usage VALUES (1, 2001, 5001, '08:00:00', '09:30:00', JohnDriver, TransportPaddock, 45.0, 12.5, No, None, 2000.0, Equipment, 301, Yes, '2025-05-01 08:00:00', '2025-05-01 09:30:00', 15000, 15045, 'On schedule', 300.0);
INSERT INTO race_logistics_vehicle_usage VALUES (2, 2002, 5002, '07:45:00', '09:10:00', AliceDriver, DeliverSupplies, 30.0, 9.0, Yes, MinorDelay, 1200.0, Parts, 302, Yes, '2025-05-02 07:45:00', '2025-05-02 09:10:00', 20000, 20030, 'Oil check required', 250.0);
INSERT INTO race_logistics_vehicle_usage VALUES (3, 2003, 5003, '09:15:00', '10:45:00', BobDriver, CrewTransport, 25.0, 7.5, No, None, 0.0, Personnel, 303, No, NULL, NULL, 25000, 25025, 'No GPS installed', 200.0);

-- Fan Engagement Activity
CREATE TABLE fan_engagement_activity (
    activityId INTEGER PRIMARY KEY AUTOINCREMENT,
    fanId INTEGER NOT NULL,
    activityType TEXT,
    activityDate DATE,
    activityTime TEXT,
    platform TEXT,
    durationMinutes INTEGER,
    pointsEarned INTEGER,
    levelAchieved TEXT,
    rewardClaimed TEXT,
    referralCodeUsed TEXT,
    location TEXT,
    deviceType TEXT,
    appVersion TEXT,
    ipAddress TEXT,
    geoLat REAL,
    geoLng REAL,
    feedbackScore INTEGER,
    comments TEXT,
    campaignId TEXT
);
INSERT INTO fan_engagement_activity VALUES (1, 9001, Quiz, '2025-04-20', '14:30:00', MobileApp, 15, 100, Gold, Yes, REF123, London, Smartphone, 1.2.3, 192.168.1.10, 51.5074, -0.1278, 5, 'Great quiz', CAMP001);
INSERT INTO fan_engagement_activity VALUES (2, 9002, LiveChat, '2025-04-21', '18:00:00', WebPortal, 30, 200, Platinum, No, REF456, NewYork, Desktop, 2.0.1, 203.0.113.5, 40.7128, -74.0060, 4, 'Helpful moderators', CAMP002);
INSERT INTO fan_engagement_activity VALUES (3, 9003, Trivia, '2025-04-22', '20:15:00', Social, 10, 50, Silver, Yes, REF789, Tokyo, Tablet, 3.1.0, 198.51.100.22, 35.6895, 139.6917, 5, 'Fun questions', CAMP003);

-- Official Certification Training
CREATE TABLE official_certification_training (
    certId INTEGER PRIMARY KEY AUTOINCREMENT,
    officialId INTEGER NOT NULL,
    trainingCourseId INTEGER,
    courseName TEXT,
    provider TEXT,
    startDate DATE,
    endDate DATE,
    hours INTEGER,
    result TEXT,
    certificateNumber TEXT,
    expirationDate DATE,
    complianceStatus TEXT,
    trainerName TEXT,
    venue TEXT,
    notes TEXT,
    digitalCopyUrl TEXT,
    revocationDate DATE,
    revocationReason TEXT,
    renewalRequired TEXT,
    renewalDeadline DATE,
    auditFlag TEXT
);
INSERT INTO official_certification_training VALUES (1, 3001, 401, SafetyOfficer, FIA, '2025-01-10', '2025-01-15', 40, Passed, CERT3001, '2028-01-15', Compliant, JohnTrainer, Zurich, 'All modules completed', http://certs/3001.pdf, NULL, NULL, Yes, '2027-12-31', No);
INSERT INTO official_certification_training VALUES (2, 3002, 402, RaceSteward, FIA, '2025-02-05', '2025-02-10', 35, Passed, CERT3002, '2029-02-10', Compliant, MaryTrainer, Geneva, 'Excellent attendance', http://certs/3002.pdf, NULL, NULL, Yes, '2028-12-31', No);
INSERT INTO official_certification_training VALUES (3, 3003, 403, TechnicalInspector, FIA, '2025-03-12', '2025-03-18', 45, Failed, CERT3003, '2027-03-18', NonCompliant, LuisTrainer, Milan, 'Needs retake', http://certs/3003.pdf, NULL, NULL, Yes, '2026-12-31', Yes);